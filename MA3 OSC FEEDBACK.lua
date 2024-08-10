-- This plugin was written by Ebbe Baß (umpi)
-- I will not take any responsibility if something breaks at any time. I conside this plugin as unstable.
-- To this date (10.08.2024) I've never had problems with it, but still I am going to consider it as unstable.

local executor_table = {101,102,103,104,105,106,107,108,201,202,203,204,205,206,207,208,301,302,303,304,305,306,307,308,401,402,403,404,405,406,407,408,291,292,293,294,295,296,297,298,191,192,193,194,195,196,197,198}
local osc_config = 1
local osc_template = 'SendOSC %i "/%s%i,i,%i"'
local osc_str_template = 'SendOSC %i "/%s%i,s,%s"'
local enabled = false
local Printf, Echo, GetExecutor, Cmd, ipairs, mfloor = Printf, Echo, GetExecutor, Cmd, ipairs, math.floor
local debug = false
local fallback_col_R = 0
local fallback_col_G = 0
local fallback_col_B = 0

local function debug_print(msg)
  if debug then
    Printf(msg)
  end
end

local function send_osc(etype, exec_no, value)
  debug_print(osc_template:format(osc_config, etype, exec_no, value))
  Cmd(osc_template:format(osc_config, etype, exec_no, value))
end

local function poll(exec_no)
  local exec = GetExecutor(exec_no)
  local execAssObjNoClass = exec and exec:GetAssignedObj()
  if not execAssObjNoClass then
    debug_print('Empty playback found on:'..tostring(exec_no))
    send_osc('Key', exec_no, 0)
    if exec_no >= 291 and exec_no <= 298 or exec_no >= 191 and exec_no <= 198 then
      Cmd(osc_str_template:format(osc_config, "xKey", exec_no, ""))
      send_osc("ExecCol_R", exec_no, 31)
      send_osc("ExecCol_G", exec_no, 31)
      send_osc("ExecCol_B", exec_no, 36)
    end
  else
    local execAssObj = exec and exec:GetAssignedObj():GetClass()
    if execAssObj == 'Sequence' then
      debug_print('Sequence found on:'..tostring(exec_no))
      send_osc('Key', exec_no, 1)
      fallback_col_R = 166
      fallback_col_G = 125
      fallback_col_B = 0
    elseif execAssObj == 'Group' then
      debug_print('Group found on:'..tostring(exec_no))
      send_osc('Key', exec_no, 2)
      fallback_col_R = 0
      fallback_col_G = 64
      fallback_col_B = 128
    elseif execAssObj == 'Preset' then
      debug_print('Preset found on:'..tostring(exec_no))
      send_osc('Key', exec_no, 3)
      fallback_col_R = 0
      fallback_col_G = 128
      fallback_col_B = 128
    elseif execAssObj == 'Master' then
      debug_print('Master found on:'..tostring(exec_no))
      send_osc('Key', exec_no, 4)
      fallback_col_R = 0
      fallback_col_G = 128
      fallback_col_B = 128
      
    else
      debug_print('weird, this is not a sequence, group, preset or master.')
    end
    local assObjApp = execAssObjNoClass:Get("Appearance")
    if assObjApp ~= nil then
      local assObjApp = tostring(assObjApp)
      local assObjApp = assObjApp:gsub("Appearance ", "")
      local assObjApp = tonumber(assObjApp)
      local appearanceR = tonumber(ShowData().Appearances[assObjApp].BackR)
      local appearanceG = tonumber(ShowData().Appearances[assObjApp].BackG)
      local appearanceB = tonumber(ShowData().Appearances[assObjApp].BackB)
      send_osc("ExecCol_R", exec_no, appearanceR)
      send_osc("ExecCol_G", exec_no, appearanceG)
      send_osc("ExecCol_B", exec_no, appearanceB)
    else
      send_osc("ExecCol_R", exec_no, fallback_col_R)
      send_osc("ExecCol_G", exec_no, fallback_col_G)
      send_osc("ExecCol_B", exec_no, fallback_col_B)
    end

    if exec_no >= 291 and exec_no <= 298 or exec_no >= 191 and exec_no <= 198 then
      local exec_label = execAssObjNoClass:Get("Name")
      Cmd(osc_str_template:format(osc_config, "xKey", exec_no, exec_label)) 
    end
  end
end

local function mainloop() 
  while enabled do
    for _, exec_no in ipairs(executor_table) do poll(exec_no) end
    coroutine.yield(0.05)
  end
end

local function maintoggle() 
  if enabled then
    enabled = false
  else
    enabled = true
    mainloop()
  end
end

return maintoggle