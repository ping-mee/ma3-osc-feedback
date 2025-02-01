-- This plugin was written by Ebbe Baß (umpi)
-- I will not take any responsibility if something breaks at any time. I consider this plugin as unstable.
-- To this date (10.08.2024) I've never had problems with it, but still I am going to consider it as unstable.

local osc_config = 1
local osc_template = 'SendOSC %i "/%s%i,i,%i"'
local osc_str_template = 'SendOSC %i "/%s%i,s,%s"'
local enabled = false
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

local cached_states = {}

function debug_print(msg)
  if debug then
    Printf(msg)
  end
end

function send_osc(etype, exec_no, value)
  local cache_key = etype .. exec_no
  if cached_states[cache_key] ~= value then
    cached_states[cache_key] = value
    Cmd(osc_template:format(osc_config, etype, exec_no, value))
  end
end

local function reset_all_leds()
  cached_states = {}
  for _, exec_no in ipairs(executor_table) do
    send_osc("ExecCol_R", exec_no, 0)
    send_osc("ExecCol_G", exec_no, 0)
    send_osc("ExecCol_B", exec_no, 0)
    if exec_no >= 191 and exec_no <= 298 then
      Cmd(osc_str_template:format(osc_config, "xKey", exec_no, ""))
    end
  end
  debug_print("All LEDs have been reset.")
end

local function handle_empty_playback(exec_no)
  debug_print("Empty playback: " .. exec_no)
  send_osc("ExecCol_R", exec_no, 0)
  send_osc("ExecCol_G", exec_no, 0)
  send_osc("ExecCol_B", exec_no, 0)
  if exec_no >= 191 and exec_no <= 198 or exec_no >= 291 and exec_no <= 298 then
    local label = ""
    if cached_states["xKey" .. exec_no] ~= label then
      cached_states["xKey" .. exec_no] = label
      Cmd(osc_str_template:format(osc_config, "xKey", exec_no, label))
    end
  end
end

local function poll(exec_no, appearances)
  local exec = GetExecutor(exec_no)
  local execObj = exec and exec:GetAssignedObj()

  if not execObj then
    handle_empty_playback(exec_no)
    return
  end

  local execClass = execObj:GetClass()
  local colors = color_map[execClass] or {0, 0, 0}
  
  local appearance = execObj:Get("Appearance")
  local app_id = appearance and tonumber(tostring(appearance):match("%d+"))

  if app_id and appearances[app_id] then
    local app_data = appearances[app_id]
    colors = {tonumber(app_data.BackR), tonumber(app_data.BackG), tonumber(app_data.BackB)}
  end

  send_osc("ExecCol_R", exec_no, colors[1])
  send_osc("ExecCol_G", exec_no, colors[2])
  send_osc("ExecCol_B", exec_no, colors[3])

  if exec_no >= 191 and exec_no <= 198 or exec_no >= 291 and exec_no <= 298 then
    local label = execObj:Get("Name") or ""
    if cached_states["xKey" .. exec_no] ~= label then
      cached_states["xKey" .. exec_no] = label
      Cmd(osc_str_template:format(osc_config, "xKey", exec_no, label))
    end
  end
end

local function main()
  enabled = not enabled
  reset_all_leds()
  local appearances = ShowData().Appearances
  while enabled do
    for _, exec_no in ipairs(executor_table) do
      poll(exec_no, appearances)
    end
  end
end

return main