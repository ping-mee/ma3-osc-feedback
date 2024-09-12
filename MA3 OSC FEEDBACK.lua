-- This plugin was written by Ebbe Baß (umpi)
-- I will not take any responsibility if something breaks at any time. I consider this plugin as unstable.
-- To this date (10.08.2024) I've never had problems with it, but still I am going to consider it as unstable.

local executor_table = {101,102,103,104,105,106,107,108,201,202,203,204,205,206,207,208,301,302,303,304,305,306,307,308,401,402,403,404,405,406,407,408,291,292,293,294,295,296,297,298,191,192,193,194,195,196,197,198}
local osc_config = 1
local osc_template = 'SendOSC %i "/%s%i,i,%i"'
local osc_str_template = 'SendOSC %i "/%s%i,s,%s"'
local enabled = false
local Printf, Echo, GetExecutor, Cmd, ipairs, mfloor = Printf, Echo, GetExecutor, Cmd, ipairs, math.floor
local debug = true

local color_map = {
  Sequence = {166, 125, 0},
  Group = {0, 64, 128},
  Preset = {0, 128, 128},
  Master = {0, 128, 128},
  Macro = {128, 0, 0},
  Quickey = {33, 34, 38},
  Sound = {50, 34, 82},
  World = {0, 0, 128},
  View = {103, 103, 110},
  User = {103, 103, 110},
  UserPlugin = {112, 0, 80},
  ScreenConfig = {103, 103, 110},
  Timer = {103, 103, 110}
}

local function debug_print(msg)
  if debug then
    Printf(msg)
  end
end

local function send_osc(etype, exec_no, value)
  local cmd_str = osc_template:format(osc_config, etype, exec_no, value)
  debug_print(cmd_str)
  Cmd(cmd_str)
end

-- Reuse function to handle empty playback
local function handle_empty_playback(exec_no)
  debug_print('Empty playback found on:'..tostring(exec_no))
  if (exec_no >= 291 and exec_no <= 298) or (exec_no >= 191 and exec_no <= 198) then
    Cmd(osc_str_template:format(osc_config, "xKey", exec_no, ""))
  end
  send_osc("ExecCol_R", exec_no, 0)
  send_osc("ExecCol_G", exec_no, 0)
  send_osc("ExecCol_B", exec_no, 0)
end

local function poll(exec_no)
  local exec = GetExecutor(exec_no)
  local execAssObjNoClass = exec and exec:GetAssignedObj()

  if not execAssObjNoClass then
    handle_empty_playback(exec_no)
  else
    -- Extract object appearance and class
    local execAssObj = execAssObjNoClass:GetClass()
    local colors = color_map[execAssObj] or {0, 0, 0} -- fallback colors
    
    -- Check if assObjApp exists before using gsub
    local assObjApp = execAssObjNoClass:Get("Appearance")
    if assObjApp then
      -- Make sure assObjApp is valid and then remove "Appearance " prefix
      local app_id = tonumber(tostring(assObjApp):gsub("Appearance ", ""))
      if app_id and ShowData().Appearances[app_id] then
        local app_data = ShowData().Appearances[app_id]
        colors = {tonumber(app_data.BackR), tonumber(app_data.BackG), tonumber(app_data.BackB)}
      end
    end

    -- Send colors through OSC
    send_osc("ExecCol_R", exec_no, colors[1])
    send_osc("ExecCol_G", exec_no, colors[2])
    send_osc("ExecCol_B", exec_no, colors[3])

    -- Handle special xKey case
    if (exec_no >= 291 and exec_no <= 298) or (exec_no >= 191 and exec_no <= 198) then
      local exec_label = execAssObjNoClass:Get("Name")
      Cmd(osc_str_template:format(osc_config, "xKey", exec_no, exec_label))
    end
  end
end

local function mainloop() 
  while enabled do
    for _, exec_no in ipairs(executor_table) do 
      poll(exec_no) 
    end
    coroutine.yield(0.05)
  end
end

local function maintoggle() 
  enabled = not enabled
  if enabled then
    mainloop()
  end
end

return maintoggle
