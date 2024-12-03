-- This plugin was written by Ebbe Baß (umpi)
-- I will not take any responsibility if something breaks at any time. I consider this plugin as unstable.
-- To this date (10.08.2024) I've never had problems with it, but still I am going to consider it as unstable.

local osc_config = 1
local osc_template = 'SendOSC %i "/%s%i,i,%i"'
local osc_str_template = 'SendOSC %i "/%s%i,s,%s"'
local debug = false
local executor_table = {
  101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115,
  201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215,
  301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315,
  401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415,
  291, 292, 293, 294, 295, 296, 297, 298,
  191, 192, 193, 194, 195, 196, 197, 198
}

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

function debug_print(msg)
  if debug then
    Printf(msg)
  end
end

local function tablelength(T)
  local count = 0
  for _ in pairs(T) do
    count = count + 1
  end
  return count
end

function send_osc(etype, exec_no, value)
  local cmd_str = osc_template:format(osc_config, etype, exec_no, value)
  debug_print(cmd_str)
  Cmd(cmd_str)
end

-- Function to reset all button LEDs to off (set RGB to 0)
function reset_all_leds()
  for _, exec_no in ipairs(executor_table) do
    send_osc("ExecCol_R", exec_no, 0)
    send_osc("ExecCol_G", exec_no, 0)
    send_osc("ExecCol_B", exec_no, 0)
    
    -- If the executor is in the xKey range, clear the xKey label
    if (exec_no >= 291 and exec_no <= 298) or (exec_no >= 191 and exec_no <= 198) then
      Cmd(osc_str_template:format(osc_config, "xKey", exec_no, ""))
    end
  end
  debug_print("All LEDs have been reset to off.")
end

-- Reuse function to handle empty playback
function handle_empty_playback(exec_no)
  debug_print('Empty playback found on:' .. tostring(exec_no))
  if (exec_no >= 291 and exec_no <= 298) or (exec_no >= 191 and exec_no <= 198) then
    Cmd(osc_str_template:format(osc_config, "xKey", exec_no, ""))
  end
  send_osc("ExecCol_R", exec_no, 0)
  send_osc("ExecCol_G", exec_no, 0)
  send_osc("ExecCol_B", exec_no, 0)
end

function poll(exec_no)
  local exec = GetExecutor(exec_no)
  local execAssObjNoClass = exec and exec:GetAssignedObj()

  if not execAssObjNoClass then
    handle_empty_playback(exec_no)
  else
    -- Extract object appearance and class
    local execAssObj = execAssObjNoClass:GetClass()
    local colors = color_map[execAssObj] or {0, 0, 0} -- fallback colors
    
    -- Check if assObjApp exists and is valid
    local assObjApp = execAssObjNoClass:Get("Appearance")
    if assObjApp then
      -- Make sure assObjApp is valid and is a string, then remove "Appearance " prefix
      assObjApp = tostring(assObjApp):gsub("Appearance ", "")
      local app_id = tonumber(assObjApp) -- Convert the string to a number after cleanup

      -- Ensure app_id is valid and the appearance exists in ShowData
      if app_id and ShowData().Appearances[app_id] then
        local app_data = ShowData().Appearances[app_id]
        colors = {tonumber(app_data.BackR), tonumber(app_data.BackG), tonumber(app_data.BackB)}
      else
        -- If app_id is invalid, fallback to default colors
        colors = {0, 0, 0}
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

function callback()
  for i=1, tablelength(executor_table) do
    poll(executor_table[i])
  end
  debug_print("Updated")
end

-- Get the handle to this Lua component.
local luaComponentHandle = select(4,...)

function main()
  reset_all_leds()
  callback()
  -- Setup hooks for all executors
  local pluginHandle = luaComponentHandle:Parent()

  local hookedObj = DataPool().Pages
  HookObjectChange(callback, hookedObj, pluginHandle)
  debug_print("Hooking changes to executors.")
end

return main