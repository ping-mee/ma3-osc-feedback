--[[                  A
                     AAA
                    AA AA
                   AA   AA
                  AAAAAAAAA
                 AA       AA
                AA         AA
    Created by AA           AA_art iluminacion 2023

    This file holds dummy functions that represent the GMA3 API. It is based on GMA3 v1.8.8.2.
    Many of these functions are poor documented and not tested by the author of this file.
    The file is presented as is and the auther can not be held resposable for any
    errors in this file (that will probably exist) nor any direct or indirect concequences of
    using this file. The file is intended as an aid to simplify the identification of valid
    commands, but is in no way a substitute for the API documentation.
    
    The file consits of 3 main parts:
        - The Object-Free API   (46-333)
        - The Object API        (335-492)
        - The Enums table       (494-5736)

    In the file the following prefixes are used to indicate the type of the expected and return values:

    b=boolean           (in many cases will be thrue or nil)
    d=double
    e=enumvalue         (number from enum table)
    n=number            (unused so far, all numbers are noted as integers)
    h=handle            (this includes all objects, functions and light_userdata)
    i=integer           (many of them might be floating numbers, this is not tested)
    s=string
    t=table
    u=light_userdata    (MA object)
    
    a leading _ indicates that the value is optional
    Some functions accept 2 sets of parameters.
    In that case I have included 2 dummy functions.
    The second dummy function name has a suffix _. 
]]

GMA3={
    AddFixtures=AddFixtures,                                                                             --b_success
    AddonVars=AddonVars,
    BuildDetails=BuildDetails,
    CheckDMXCollision=CheckDMXCollision,
    CheckFIDCollision=CheckFIDCollision,
    CloseAllOverlays=CloseAllOverlays,
    CloseUndo=CloseUndo,
    Cmd=Cmd,
    CmdIndirect=CmdIndirect,
    CmdIndirectWait=CmdIndirectWait,
    CmdObj=CmdObj,
    ColMeasureDeviceDarkCalibrate=ColMeasureDeviceDarkCalibrate,
    ColMeasureDeviceDoMeasurement=ColMeasureDeviceDoMeasurement,
    ConfigTable=ConfigTable,
    Confirm=Confirm,
    CreateDirectoryRecursive=CreateDirectoryRecursive,
    CreateMultiPatch=function(t_fixtures,i_count,_s_undo) return 0 end,                                  --i_amount
    CreateNeuralTraining=function(i_InputLayerSize,i_OutputLayerSize,t_TrainingValues,s_filename) end,
    CreateUndo=function(s_name) return Obj end,                                                       --h_undo
    CurrentEnvironment=function() return Obj end,                                                     --h_environment
    CurrentExecPage=function() return Obj end,                                                        --h_execpage
    CurrentProfile=function() return Obj end,                                                         --h_profile
    CurrentUser=function() return Obj end,                                                            --h_user
    DataPool=function() return Obj end,                                                               --h_datapool
    DefaultDisplayPositions=function() return Obj end,                                                --h_screens
    DelVar=function(h_uservars,s_key) end,
    DeskLocked=function() return true end,                                                               --b_locked
    DeviceConfiguration=function() return Obj end,                                                    --h_config
    DevMode3d=function() return "" end,                                                                  --s_devmode3d
    DirList=function(s_path,_s_filters) return {} end,                                                   --t_dirlist {{name="",size=0,time=0}}
    DumpAllHooks=function() end,
    Echo=function(s_text,...) end,
    ErrEcho=function(s_text,...) end,
    ErrPrintf=function(s_text,...) end,
    Export=function(s_file,t_data) end,
    ExportCSV=function(s_file,t_data) end,
    ExportJson=function(s_file,t_data) end,
    FileExists=function(s_path) return true end,                                                         --b_found
    FindBestDMXPatchAddr=function(h_patch,i_startaddress,i_footprint) return 1 end,                      --i_address
    FindBestFocus=function(_h_handle) end,
    FindNextFocus=function(_b_backwards,_i_focus,_reason) end,
    FindTexture=function(s_name) return Obj end,                                                      --h_texture
    FixtureType=function() return Obj end,                                                            --h_fixturetypes
    FromAddr=function(s_object,_h_base) return Obj end,                                               --h_object
    GetApiDescription=function() return {} end,                                                          --t_apicontent
    GetAttributeByUIChannel=function(i_UIchannel) return Obj end,                                     --h_attribute
    GetAttributeCount=function() return Obj end,                                                      --i_attributes
    GetAttributeIndex=function(s_name) return 0 end,                                                     --i_index
    GetButton=function(h_USBdevice) return {} end,                                                       --t_buttons={b_state}
    GetChannelFunction=function(i_UIchannel,i_attribute) return Obj end,                              --h_function
    GetChannelFunctionIndex=function(i_UIchannel,i_attribute) return 0 end,                              --i_functionindex
    GetDebugFPS=function() return 0 end,                                                                 --i_fps
    GetDisplayByIndex=function(i_display) return Obj end,                                             --h_display
    GetDisplayCollect=function() return Obj end,                                                      --h_displaycollect
    GetDMXUniverse=function(i_universe,_b_percent) return {} end,                                        --t_values={i_value}
    GetDMXValue=function(i_address,_i_universe,_b_percent) return 0 end,                                 --i_value}
    GetExecutor=function(i_executor) return Obj,Obj end,                                           --h_executor, h_page
    GetFocus=function() return Obj end,                                                               --h_display
    GetFocusDisplay=function() return Obj end,                                                        --h_display
    GetObjApiDescription=function() return {} end,                                                       --t_apicontent
    GetPath=function(s_pathtype,_b_create) return "c:" end,                                              --s_path
    GetPath_=function(i_pathtype,_b_create) return "c:" end,                                             --s_path
    GetPathOverrideFor=function(s_pathtype,s_path,_b_create) return "c:" end,                            --s_path
    GetPathOverrideFor_=function(i_pathtype,s_path,_b_create) return "c:" end,                           --s_path
    GetPathSeparator=function() return "" end,                                                           --s_sepatrator
    GetPathType=function(h_targetobject,_i_contenttype) return "" end,                                   --s_typename
    GetPresetData=function(h_preset,b_phasersonly,b_byfixtures) return{} end,                            --t_data
    GetProgPhaser=function(i_UIchannel,b_phasersonly) return{} end,                                      --t_data
    GetProgPhaserValue=function(i_UIchannel,i_step) return{} end,                                        --t_data
    GetPropertyColumnId=function(h_handle, s_propertyname) return 0 end,                                 --i_index
    GetRemoteVideoInfo=function() return 0,true end,                                                     --i_wingID, b_isExtension
    GetRTChannel=function(i_channelRTindex) return {} end,                                               --t_channels{ChannelRT descriptor} or nil
    GetRTChannelCount=function() return 0 end,                                                           --i_count
    GetRTChannels=function(i_fixture,h_fixture,_b_ashandles) return {} end,                              --t_channels{i_channel or h_channel}
    GetSample=function(s_type) return 0 end,                                                             --i_value type=MEMORY/CPU/CPUTEMP/GPUTEMP/SYSTEMP/FANRPM
    GetSelectedAttribute=function() return Obj end,                                                   --h_attribute
    GetShowFileStatus=function() return "" end,                                                          --s_status
    GetSubfixture=function(i_index) return Obj end,                                                   --h_subfixture
    GetSubfixtureCount=function() return 0 end,                                                          --i_subfixturecount
    GetTokenName=function(s_shortName) return "" end,                                                    --s_fullName
    GetTokenNameByIndex=function(i_index) return "" end,                                                 --s_fullName
    GetTopModal=function() return Obj end,                                                            --h_overlay
    GetTopOverlay=function(i_displayindex) return Obj end,                                            --h_displayoverlay
    GetUIChannel=function(i_UIchannel) return Obj end,                                                --h_ChannelUI
    GetUIChannelCount=function() return 0 end,                                                           --i_count
    GetUIChannelIndex=function(i_subfixtureindex,i_attributeindex) return 0 end,                         --i_UIchannelindex
    GetUIChannels=function(i_subfixtureindex,h_subfixture,_b_ashandles) return {} end,                   --t_channels{i_channel or h_channel}
    GetUIObjectAtPosition=function(i_displayindex,t_position) return Obj end,                         --h_UIobject (t_position={x,y})
    GetVar=function(h_variables,s_varname) return "" end,                                               --value (mixed)
    GlobalVars=function() return Obj end,                                                            --h_globalvariables
    HandleToInt=function(h_handle) return 0 end,                                                        --i_handle
    HandleToStr=function(h_handle) return "" end,                                                       --s_handle
    HookObjectChange=function(h_callback,h_object,_h_plugin) end,
    HostOS=function() return "" end,                                                                    --s_OS
    HostSubType=function() return "" end,                                                               --s_Subtype
    HostType=function() return "" end,                                                                  --s_type
    Import=function(s_filename) return {} end,                                                          --t_data
    IncProgress=function(h_progress,_i_delta) end,
    IntToHandle=function(i_handle) return Obj end,                                                   --h_handle
    IsObjectValid=function(h_object) return true end,                                                   --b_valid
    Keyboard=function(s_keycode,b_shift,b_ctrl,b_alt,b_numlock) end,
    Keyboard_=function(i_displayIndex, s_type, s_char) end,                                             --s_type=press/char/release
    KeyboardObj=function() return Obj end,                                                           --h_keyboard
    LoadExecConfig=function(h_executor) end,
    MasterPool=function() return Obj end,                                                            --h_master
    MessageBox=function(t_args)
        t_args={
            title="",
            _titleTextColor="",
            message="",
            _messageTextColor="",
            _backColor="",
            _timeout="",
            _timeoutResultCancel=false,
            _timeoutResultID=0,
            _icon="",
            _display=0,
            commands={{
                name="",
                value=0,
            }},
            inputs={{
                name="",
                value="",
                blackFilter="",
                whiteFilter="",
                vkPlugin="",
                maxTextLength=0,
            }},
            states={{
                name="",
                state=false,
                _group=0,
            }},
            selectors={{
                name="",
                selectedValue=0,
                values={},
                _type=0                                                                                 --0=swipe, 1=radio
            }}
        }
        return {}
    end,                                                                                                --t_results
        --[[return {            
                b_success,          
                i_result,           
                t_inputs{{s_name=s_value}},         
                t_states{{s_name=b_value}},         
                t_selectors{{s_name=i_selected_value}}          
            }               
        ]]
    Mouse=function(i_displayIndex,s_type,_s_button) end,                                                --s_type=press/move/release s_button=Left/Middle/Right
    Mouse_=function(i_absX, i_absY) end,
    MouseObj=function() return Obj end,                                                              --h_mouse
    ObjectList=function(s_list) return{} end,                                                           --t_objects{h_object}
    OverallDeviceCertificate=function() return Obj end,                                              --h_OverallCertificate
    Patch=function() return Obj end,                                                                 --h_patch
    PluginVars=function(_s_pluginname) return Obj end,                                               --h_pluginvariables
    PopupInput=function(t_args)
        t_args={
            title="",
            caller=function() end,                                                                      --function handle
            items={""},
            selectedValue=0,
            x=0,
            y=0,
            target=Obj,                                                                              --screen handle
            render_options={},
            useTopLeft=false,
            properties={}
        }                                                                                               -- MANUAL NOT CLEAR. NEEDS INVESTIGATION
    end,
    Printf=function(s_text,...) end,
    Programmer=function() return Obj end,                                                            --h_programmer
    ProgrammerPart=function() return Obj end,                                                        --h_programmerpart
    Pult=function() return Obj end,                                                                  --h_pult
    RefreshLibrary=function(h_library) end,
    ReleaseType=function() return "" end,                                                               --s_releasetype
    RemoteCommand=function(s_ip, s_command) return true end,                                            --b_success
    Root=function() return Obj end,                                                                  --h_root
    SaveExecConfig=function(h_executor) end,
    SelectedSequence=function() return Obj end,                                                      --h_selectedsequence
    Selection=function() return Obj end,                                                             --h_selection
    SelectionComponentX=function() return 0,0,0,0,0 end,                                                --i_min,i_max,i_index,i_block,i_group
    SelectionComponentY=function() return 0,0,0,0,0 end,                                                --i_min,i_max,i_index,i_block,i_group
    SelectionComponentZ=function() return 0,0,0,0,0 end,                                                --i_min,i_max,i_index,i_block,i_group
    SelectionCount=function() return 0 end,                                                             --i_subfixtures
    SelectionFirst=function() return 0,0,0,0 end,                                                       --i_first,i_firstx,i_firsty,i_firstz
    SelectionNext=function(i_current) return 0,0,0,0 end,                                               --i_next,i_nextx,i_nexty,i_nextz
    SelectionNotifyBegin=function(h_associatedcontext) end,
    SelectionNotifyEnd=function(h_associatedcontext) end,
    SelectionNotifyObject=function(h_object) end,
    SerialNumber=function() return 0 end,                                                               --i_hardwareserial
    SetBlockInput=function(b_block) end,
    SetColor=function(s_colormodel,d_tripel1,d_tripel2,d_tripel3,d_Brightness,d_Quality,b_const_Brightness) return 0,"" end,--i_flag s_colormodel=(RGB,CMY,Lab,XYZ,HSB)
    SetLED=function(h_usbdevice,t_ledvalues) end,
    SetProgPhaser=function(i_uichannelindex,t_args)
        t_args={
            _fade=0,
            _delay=0,
            _speed=0,
            _repeat=0,
            _phase=0,
            _preset='lud',
            {
                _cfindex=0,
                _preset='lud',
                _trans=0,
                _width=0,
                _accel=0,
                _decel=0,
                _rel=0,
                _abs=0
            }
        }
    end,
    SetProgPhaserValue=function(i_uichannelindex,i_step,t_args)
        t_args={
                _cfindex=0,
                _preset='lud',
                _trans=0,
                _width=0,
                _accel=0,
                _decel=0,
                _rel=0,
                _abs=0
            }
    end,
    SetProgress=function(h_progressbar,i_position) end,
    SetProgressRange=function(h_progressbar,i_startIndex,i_endIndex) end,
    SetProgressText=function(h_progress, s_text) end,
    SetVar=function(h_uservars,s_key,value) end,
    ShowData=function() return Obj end,                                                              --h_showdata
    ShowSettings=function() return Obj end,                                                          --h_settings
    StartProgress=function(s_title) return Obj end,                                                  --h_progressbar
    StopProgress=function(h_progressbar) end,
    StrToHandle=function(s_handle) return Obj end,                                                   --h_handle
    SyncFS=function() end,
    TextInput=function(_s_title,_s_default,_i_xpos,_i_ypos) return Obj end,                          --s_input
    Time=function() return 0 end,                                                                       --i_time
    Timer=function(h_function,i_dt,i_maxcount,_h_cleanup,h_contextobject) end,
    ToAddr=function(h_object) return "" end,                                                            --s_address
    Touch=function(i_displayIndex, s_type, i_touchId, i_absX, i_absY) return "" end,                    --s_type=press/move/release
    TouchObj=function() return Obj end,                                                              --h_object
    Unhook=function(h_callback) end,
    UnhookMultiple=function(_h_callback, _h_target, _h_context) return 0 end,                           --i_removedhooks
    UserVars=function() return Obj end,                                                              --h_uservars
    Version=function() return "" end,                                                                   --s_version
    WaitModal=function(i_time) return Obj end,                                                       --h_overlay
    WaitObjectDelete=WaitObjectDelete        
}

AddFixtures=function(t_args)
    t_args={
        h_mode=Obj,       --dmxmode handle
        i_amount=0,
        _s_undo="",
        _h_parent=Obj,    --parent handle
        _i_insert_index=0,
        _s_idtype="",
        _s_cid="",
        _s_fid="",
        _s_name="",
        _s_layer="",
        _s_class="",
        _t_patch={"address"}
    }
    return true
end                                                                                                 --b_success
AddonVars=function(s_name) return Obj end                                                        --u_variables
BuildDetails=function() return {} end                                                               --t_details
CheckDMXCollision=function(h_dmxmode,s_address,_i_count,_i_breakindex) return true end              --b_nocollision
CheckFIDCollision=function(i_fid,_i_count,_i_type) return true end                                  --b_nocollision
CloseAllOverlays=function() end
CloseUndo=function(h_undo) return true end                                                          --b_success
Cmd=function(s_cmd,_h_undo,...) return "ok" end                                                     --s_feedback (ok,syntax error,illegal command)
CmdIndirect=function(s_cmd,_h_undo,_h_target) end
CmdIndirectWait=function(s_cmd,_h_undo,_h_target) end
CmdObj=function() return Obj end                                                                 --u_command
ColMeasureDeviceDarkCalibrate=function() return 0 end                                               --i_flag
ColMeasureDeviceDoMeasurement=function() return{} end                                               --t_values
ConfigTable=function() return{} end                                                                 --t_config
Confirm=function(s_title,s_text,_i_page,_b_cancel) return true end                                  --b_ok
CreateDirectoryRecursive=function(s_path) return true end                                           --b_success
CreateMultiPatch=function(t_fixtures,i_count,_s_undo) return 0 end                                  --i_amount
CreateNeuralTraining=function(i_InputLayerSize,i_OutputLayerSize,t_TrainingValues,s_filename) end
CreateUndo=function(s_name) return Obj end                                                       --h_undo
CurrentEnvironment=function() return Obj end                                                     --h_environment
CurrentExecPage=function() return Obj end                                                        --h_execpage
CurrentProfile=function() return Obj end                                                         --h_profile
CurrentUser=function() return Obj end                                                            --h_user
DataPool=function() return Obj end                                                               --h_datapool
DefaultDisplayPositions=function() return Obj end                                                --h_screens
DelVar=function(h_uservars,s_key) end
DeskLocked=function() return true end                                                               --b_locked
DeviceConfiguration=function() return Obj end                                                    --h_config
DevMode3d=function() return "" end                                                                  --s_devmode3d
DirList=function(s_path,_s_filters) return {} end                                                   --t_dirlist {{name="",size=0,time=0}}
DumpAllHooks=function() end
Echo=function(s_text,...) end
ErrEcho=function(s_text,...) end
ErrPrintf=function(s_text,...) end
Export=function(s_file,t_data) end
ExportCSV=function(s_file,t_data) end
ExportJson=function(s_file,t_data) end
FileExists=function(s_path) return true end                                                         --b_found
FindBestDMXPatchAddr=function(h_patch,i_startaddress,i_footprint) return 1 end                      --i_address
FindBestFocus=function(_h_handle) end
FindNextFocus=function(_b_backwards,_i_focus,_reason) end
FindTexture=function(s_name) return Obj end                                                      --h_texture
FixtureType=function() return Obj end                                                            --h_fixturetypes
FromAddr=function(s_object,_h_base) return Obj end                                               --h_object
GetApiDescription=function() return {} end                                                          --t_apicontent
GetAttributeByUIChannel=function(i_UIchannel) return Obj end                                     --h_attribute
GetAttributeCount=function() return Obj end                                                      --i_attributes
GetAttributeIndex=function(s_name) return 0 end                                                     --i_index
GetButton=function(h_USBdevice) return {} end                                                       --t_buttons={b_state}
GetChannelFunction=function(i_UIchannel,i_attribute) return Obj end                              --h_function
GetChannelFunctionIndex=function(i_UIchannel,i_attribute) return 0 end                              --i_functionindex
GetDebugFPS=function() return 0 end                                                                 --i_fps
GetDisplayByIndex=function(i_display) return Obj end                                             --h_display
GetDisplayCollect=function() return Obj end                                                      --h_displaycollect
GetDMXUniverse=function(i_universe,_b_percent) return {} end                                        --t_values={i_value}
GetDMXValue=function(i_address,_i_universe,_b_percent) return 0 end                                 --i_value}
GetExecutor=function(i_executor) return Obj,Obj end                                           --h_executor, h_page
GetFocus=function() return Obj end                                                               --h_display
GetFocusDisplay=function() return Obj end                                                        --h_display
GetObjApiDescription=function() return {} end                                                       --t_apicontent
GetPath=function(s_pathtype,_b_create) return "c:" end                                              --s_path
GetPath_=function(i_pathtype,_b_create) return "c:" end                                             --s_path
GetPathOverrideFor=function(s_pathtype,s_path,_b_create) return "c:" end                            --s_path
GetPathOverrideFor_=function(i_pathtype,s_path,_b_create) return "c:" end                           --s_path
GetPathSeparator=function() return "" end                                                           --s_sepatrator
GetPathType=function(h_targetobject,_i_contenttype) return "" end                                   --s_typename
GetPresetData=function(h_preset,b_phasersonly,b_byfixtures) return{} end                            --t_data
GetProgPhaser=function(i_UIchannel,b_phasersonly) return{} end                                      --t_data
--[[{
    fade=0,
    delay=0,
    speed=0,
    repeat=0,
    phase=0,
    preset=lud
    {
        cfindex=0,
        preset=lud,
        trans=0,
        width=0,
        accel=0,
        decel=0,
        rel=0,
        abs=0,
    }
}]]
GetProgPhaserValue=function(i_UIchannel,i_step) return{} end                                        --t_data
--[[{
    cfindex=0,
    preset=lud,
    trans=0,
    width=0,
    accel=0,
    decel=0,
    rel=0,
    abs=0,
}]]
GetPropertyColumnId=function(h_handle, s_propertyname) return 0 end                                 --i_index
GetRemoteVideoInfo=function() return 0,true end                                                     --i_wingID, b_isExtension
GetRTChannel=function(i_channelRTindex) return {} end                                               --t_channels{ChannelRT descriptor} or nil
GetRTChannelCount=function() return 0 end                                                           --i_count
GetRTChannels=function(i_fixture,h_fixture,_b_ashandles) return {} end                              --t_channels{i_channel or h_channel}
GetSample=function(s_type) return 0 end                                                             --i_value type=MEMORY/CPU/CPUTEMP/GPUTEMP/SYSTEMP/FANRPM
GetSelectedAttribute=function() return Obj end                                                   --h_attribute
GetShowFileStatus=function() return "" end                                                          --s_status
GetSubfixture=function(i_index) return Obj end                                                   --h_subfixture
GetSubfixtureCount=function() return 0 end                                                          --i_subfixturecount
GetTokenName=function(s_shortName) return "" end                                                    --s_fullName
GetTokenNameByIndex=function(i_index) return "" end                                                 --s_fullName
GetTopModal=function() return Obj end                                                            --h_overlay
GetTopOverlay=function(i_displayindex) return Obj end                                            --h_displayoverlay
GetUIChannel=function(i_UIchannel) return Obj end                                                --h_ChannelUI
GetUIChannelCount=function() return 0 end                                                           --i_count
GetUIChannelIndex=function(i_subfixtureindex,i_attributeindex) return 0 end                         --i_UIchannelindex
GetUIChannels=function(i_subfixtureindex,h_subfixture,_b_ashandles) return {} end                   --t_channels{i_channel or h_channel}
GetUIObjectAtPosition=function(i_displayindex,t_position) return Obj end                         --h_UIobject (t_position={x,y})
GetVar=function(h_variables,s_varname) return "" end                                                --value (mixed)
GlobalVars=function() return Obj end                                                             --h_globalvariables
HandleToInt=function(h_handle) return 0 end                                                         --i_handle
HandleToStr=function(h_handle) return "" end                                                        --s_handle
HookObjectChange=function(h_callback,h_object,_h_plugin) end
HostOS=function() return "" end                                                                     --s_OS
HostSubType=function() return "" end                                                                --s_Subtype
HostType=function() return "" end                                                                   --s_type
Import=function(s_filename) return {} end                                                           --t_data
IncProgress=function(h_progress,_i_delta) end
IntToHandle=function(i_handle) return Obj end                                                    --h_handle
IsObjectValid=function(h_object) return true end                                                    --b_valid
Keyboard=function(s_keycode,b_shift,b_ctrl,b_alt,b_numlock) end
Keyboard_=function(i_displayIndex, s_type, s_char) end                                              --s_type=press/char/release
KeyboardObj=function() return Obj end                                                            --h_keyboard
LoadExecConfig=function(h_executor) end
MasterPool=function() return Obj end                                                             --h_master
MessageBox=function(t_args)
    t_args={
        title="",
        _titleTextColor="",
        message="",
        _messageTextColor="",
        _backColor="",
        _timeout="",
        _timeoutResultCancel=false,
        _timeoutResultID=0,
        _icon="",
        _display=0,
        commands={{
            name="",
            value=0,
        }},
        inputs={{
            name="",
            value="",
            blackFilter="",
            whiteFilter="",
            vkPlugin="",
            maxTextLength=0,
        }},
        states={{
            name="",
            state=false,
            _group=0,
        }},
        selectors={{
            name="",
            selectedValue=0,
            values={},
            _type=0                                                                                 --0=swipe, 1=radio
        }}
    }
    return {}
end                                                                                                 --t_results
    --[[return {            
            b_success,          
            i_result,           
            t_inputs{{s_name=s_value}},         
            t_states{{s_name=b_value}},         
            t_selectors{{s_name=i_selected_value}}          
        }               
    ]]
Mouse=function(i_displayIndex,s_type,_s_button) end                                                 --s_type=press/move/release s_button=Left/Middle/Right
Mouse_=function(i_absX, i_absY) end
MouseObj=function() return Obj end                                                               --h_mouse
ObjectList=function(s_list) return{} end                                                            --t_objects{h_object}
OverallDeviceCertificate=function() return Obj end                                               --h_OverallCertificate
Patch=function() return Obj end                                                                  --h_patch
PluginVars=function(_s_pluginname) return Obj end                                                --h_pluginvariables
PopupInput=function(t_args)
    t_args={
        title="",
        caller=function() end,                                                                      --function handle
        items={""},
        selectedValue=0,
        x=0,
        y=0,
        target=Obj,                                                                              --screen handle
        render_options={},
        useTopLeft=false,
        properties={}
    }                                                                                               -- MANUAL NOT CLEAR. NEEDS INVESTIGATION
end
Printf=function(s_text,...) end
Programmer=function() return Obj end                                                             --h_programmer
ProgrammerPart=function() return Obj end                                                         --h_programmerpart
Pult=function() return Obj end                                                                   --h_pult
RefreshLibrary=function(h_library) end
ReleaseType=function() return "" end                                                                --s_releasetype
RemoteCommand=function(s_ip, s_command) return true end                                             --b_success
Root=function() return Obj end                                                                   --h_root
SaveExecConfig=function(h_executor) end
SelectedSequence=function() return Obj end                                                       --h_selectedsequence
Selection=function() return Obj end                                                              --h_selection
SelectionComponentX=function() return 0,0,0,0,0 end                                                 --i_min,i_max,i_index,i_block,i_group
SelectionComponentY=function() return 0,0,0,0,0 end                                                 --i_min,i_max,i_index,i_block,i_group
SelectionComponentZ=function() return 0,0,0,0,0 end                                                 --i_min,i_max,i_index,i_block,i_group
SelectionCount=function() return 0 end                                                              --i_subfixtures
SelectionFirst=function() return 0,0,0,0 end                                                        --i_first,i_firstx,i_firsty,i_firstz
SelectionNext=function(i_current) return 0,0,0,0 end                                                --i_next,i_nextx,i_nexty,i_nextz
SelectionNotifyBegin=function(h_associatedcontext) end
SelectionNotifyEnd=function(h_associatedcontext) end
SelectionNotifyObject=function(h_object) end
SerialNumber=function() return 0 end                                                                --i_hardwareserial
SetBlockInput=function(b_block) end
SetColor=function(s_colormodel,d_tripel1,d_tripel2,d_tripel3,d_Brightness,d_Quality,b_const_Brightness) return 0,"" end --i_flag s_colormodel=(RGB,CMY,Lab,XYZ,HSB)
SetLED=function(h_usbdevice,t_ledvalues) end
SetProgPhaser=function(i_uichannelindex,t_args)
    t_args={
        _fade=0,
        _delay=0,
        _speed=0,
        _repeat=0,
        _phase=0,
        _preset='lud',
        {
            _cfindex=0,
            _preset='lud',
            _trans=0,
            _width=0,
            _accel=0,
            _decel=0,
            _rel=0,
            _abs=0
        }
    }
end
SetProgPhaserValue=function(i_uichannelindex,i_step,t_args)
    t_args={
            _cfindex=0,
            _preset='lud',
            _trans=0,
            _width=0,
            _accel=0,
            _decel=0,
            _rel=0,
            _abs=0
        }
end
SetProgress=function(h_progressbar,i_position) end
SetProgressRange=function(h_progressbar,i_startIndex,i_endIndex) end
SetProgressText=function(h_progress, s_text) end
SetVar=function(h_uservars,s_key,value) end
ShowData=function() return Obj end                                                               --h_showdata
ShowSettings=function() return Obj end                                                           --h_settings
StartProgress=function(s_title) return Obj end                                                   --h_progressbar
StopProgress=function(h_progressbar) end
StrToHandle=function(s_handle) return Obj end                                                    --h_handle
SyncFS=function() end
TextInput=function(_s_title,_s_default,_i_xpos,_i_ypos) return Obj end                           --s_input
Time=function() return 0 end                                                                        --i_time
Timer=function(h_function,i_dt,i_maxcount,_h_cleanup,h_contextobject) end
ToAddr=function(h_object) return "" end                                                             --s_address
Touch=function(i_displayIndex, s_type, i_touchId, i_absX, i_absY) return "" end                     --s_type=press/move/release
TouchObj=function() return Obj end                                                               --h_object
Unhook=function(h_callback) end
UnhookMultiple=function(_h_callback, _h_target, _h_context) return 0 end                            --i_removedhooks
UserVars=function() return Obj end                                                               --h_uservars
Version=function() return "" end                                                                    --s_version
WaitModal=function(i_time) return Obj end                                                        --h_overlay
WaitObjectDelete=function(h_UIObject, _i_time) return true end                                      --b_success

Obj={
    AddListChildren=function(self,u_parent,_e_role) end,
    AddListChildrenNames=function(self,u_parent,_e_role) end,
    AddListLuaItem=function(self,s_name,s_value,f_callback,_argument,_t_appearance) end,            --t_appearance={left={...},right={...}}
    AddListLuaItem_=function(self,s_name,s_function,f_callback,_argument,_t_appearance) end,        --t_appearance={left={...},right={...}}
    AddListLuaItems=function(self,t_items) end,
        --item={[1]=name,[2]=value/function name,[3]=callback reference[,[4]=argument of any lua type to pass to callback]
    AddListNumericItem=function(self,s_name,n_value,_h_base,_t_appearance) end,                     --t_appearance={left={...},right={...}}
    AddListNumericItems=function(self,t_items) end,
        --item={[1]=name,[2]=integer:value}
    AddListObjectItem=function(self,u_target,_s_explicitname,_t_appearance,_b_extendedname,_t_appearance_) end,
    AddListObjectItem_=function(self,u_target,_s_explicitname,_e_role,_b_extendedname,_e_role_) end,
    AddListPropertyItem=function(self,s_name,s_value,u_target,_t_appearance) end,
    AddListPropertyItems=function(self, t_items) end,
        --item={[1]=name,[2]=property name,[3]=target handle}
    AddListRecursiveNames=function(self, u_parent,_e_role) end,
    AddListStringItem=function(self,s_name,s_value,_t_appearance) end,
    AddListStringItems=function(self, t_items) end,
        --item={[1]=name,[2]=value}
    Addr=function(self,_u_base,_b_force_parent_based_address) return "" end,                        --s_numeric_root_address
    AddrNative=function(self,_u_base,_b_escape_names) return "" end,                                --s_numeric_root_address
    Append=function(self,_s_class,_u_undo,_i_count) return Obj end,                              --u_child_handle
    Aquire=function(self,_s_class,_u_undo) return Obj end,                                       --u_child_handle
    Changed=function(self, s_changelevel_enumname) end,
    Children=function(self) end,                                                                    --t_child_handles
    ClearList=function(self) end,
    ClearUIChildren=function(self) end,
    CmdlinePtr=function(self, i_index) end,                                                         --u_child_handle
    CommandAt=function(self) end,
    CommandCall=function(self,u_dest_handle,b_focusSearchAllowed) end,
    CommandCreateDefaults=function(self) end,
    CommandDelete=function(self) end,
    CommandStore=function(self) end,
    Compare=function(self, u_handle) return true,"" end,                                            --b_isEqual,s_whatDiffers
    Copy=function(self,u_dest,_u_undo) end,
    Count=function(self) end,                                                                       --i_child_count
    Create=function(self, i_child,_s_class,_u_undo) return Obj end,                              --u_child_handle
    CurrentChild=function(self) return Obj end,                                                  --u_current_child or nil
    Delete=function(self, i_child,_u_undo) end,
    Dump=function(self) return "" end,                                                              --s_nformation
    Export=function(self, s_path,s_file) return true end,                                           --b_success
    Find=function(self,s_search_name,_s_search_class_name) return Obj end,                       --u_found_handle
    FindListItemByName=function(self,s_value) return 1 end,                                         --i_index
    FindListItemByValueStr=function(self,s_value) return 1 end,                                     --i_index
    FindParent=function(self,s_search_class_name) return Obj end,                                --u_found_handle
    FindRecursive=function(self,s_search_name,_s_search_class_name) return Obj end,              --u_found_handle
    FindWild=function(self,s_search_name) return Obj end,                                        --u_found_handle
    Get=function(self, s_property_name,e_role) return "" end,                                       --s_property_value (if 'role' provided - always string)
    GetAssignedObj=function(self) return Obj end,                                                --u_handle
    GetChildClass=function(self) return "" end,                                                     --s_class_name
    GetClass=function(self) return "" end,                                                          --s_class_name
    GetDisplay=function(self) return Obj end,                                                    --u_display_handle
    GetDisplayIndex=function(self) return 1 end,                                                    --i_display_index
    GetExportFileName=function(self,_b_camelcase_to_filename) return "" end,                        --s_filename
    GetFader=function(self,t_fader) return 0 end,                                                   --d_value[0..100]
        --t_fader={[string:token(Fader*)], [integer:index]})
    GetFaderText=function(self,t_fader) return "" end,                                              --s_text
    GetLineAt=function(self,i_line_number) return "" end,                                           --s_line_content
    GetLineCount=function(self) return 0 end,                                                       --i_count
    GetListItemAppearance=function(self,i_index) return {} end,                                     --{left={AppearanceData}, right={AppearanceData}}
    GetListItemButton=function(self,i_index) return Obj end,                                     --u_button or nil if not visible
    GetListItemName=function(self,i_index) return "" end,                                           --s_name
    GetListItemsCount=function(self) return 0 end,                                                  --i_amount of items in the list
    GetListItemValueI64=function(self,i_index) return 0 end,                                        --i_value
    GetListItemValueStr=function(self,i_index) return "" end,                                       --s_value
    GetListSelectedItemIndex=function(self) return 1 end,                                           --i_index
    GetOverlay=function(self) return Obj end,                                                    --u_overlay_handle
    GetScreen=function(self) return Obj end,                                                     --u_handle
    GetUIChild=function(self, i_index) return Obj end,                                           --u_handle to UIObject
    GetUIChildrenCount=function(self) return 0 end,                                                 --i_count
    GetUIEditor=function(self) return "" end,                                                       --s_ui_editor_name
    GetUISettings=function(self) return "" end,                                                     --s_ui_settings_name
    GridCellExists=function(self, t_cell) return true end,                                          --b_exists t_cell={r,c}
    GridGetBase=function(self) return Obj end,                                                   --u_handle to GridBase
    GridGetCellData=function(self, t_cell) return {"",color={"",""}} end,                           --t_data={text, color={text,back}}
    GridGetCellDimensions=function(self,t_cell) return {0,0,0,0} end,                               --t_dimensions={x,y,w,h}
    GridGetData=function(self) return Obj end,                                                   --u:handle to GridData
    GridGetDimensions=function(self) return {1,1} end,                                              --t_dimensions={r,c}
    GridGetParentRowId=function(self, i_rowId) return 1 end,                                        --i_parent row id (integer) or nil (if there's no parent)
    GridGetScrollCell=function(self) return {1,1} end,                                              --t_cell={r,c}
    GridGetScrollOffset=function(self) return {v={1,1},h={1,1}} end,                                --t_offset={v = {index,offset}, h={index,offset}}
    GridGetSelectedCells=function(self) return {} end,                                              --t_cfells={r,c, r_UniqueId,r_GroupId,c_UniqueId,c_GroupId} cells in the selection
    GridGetSelection=function(self) return Obj end,                                              --u_handle to GridSelection
    GridGetSettings=function(self) return Obj end,                                               --u_handle to GridSettings
    GridIsCellReadOnly=function(self,t_cell) return true end,                                       --b_readonly
    GridIsCellVisible=function(self,t_cell) return true end,                                        --b_visible
    GridScrollCellIntoView=function(self,t_cell) end,
    GridSetColumnSize=function(self, i_columnId, i_size_in_pixels) end,
    GridsGetExpandHeaderCell=function(self) return {1,1} end,                                       --t_cell={r,c}
    GridsGetLevelButtonWidth=function(self,t_cell) return 1 end,                                    --i_width in pixels or nil
    HasActivePlayback=function(self) return true end,                                               --b_result
    HasEditSettingUI=function(self) return true end,                                                --b_result
    HasEditUI=function(self) return true end,                                                       --b_result
    HasParent=function(self, u_object) return true end,                                             --b_result
    HookDelete=function(self,f_callback,_argument) return true end,                                 --b_success
    Import=function(self,s_path,s_file) return true end,                                            --b_success
    Index=function(self) return 1 end,                                                              --i_index
    InputCallFunction=function(self,s_function,...) return "" end,                                  --return <depends on function>
    InputHasFunction=function(self, s_function) return true end,                                    --b_result
    InputRun=function(self) end,
    InputSetAdditionalParameter=function(self,s_parameter_name,s_parameter_value) end,
    InputSetEditTitle=function(self,s_name_value) end,
    InputSetMaxLength=function(self,i_length) end,
    InputSetTitle=function(self,s_name_value) end,
    InputSetValue=function(self,s_value) end,
    Insert=function(self,i_child_index,_s_class,_u_undo,_i_count) return Obj end,                --u_child_handle
    IsClass=function(self) return "" end,                                                           --s_class_name
    IsEmpty=function(self) return true end,                                                         --b_returns true if objects is considered 'empty'
    IsEnabled=function(self) return true end,                                                       --b_isenabled
    IsListItemEmpty=function(self,i_index) end,
    IsListItemEnabled=function(self,i_index) end,
    IsValid=function(self) return true end,                                                         --b_result
    IsVisible=function(self) return true end,                                                       --b_isvisible
    Load=function(self,s_path,s_file) return true end,                                              --b_success
    MaxCount=function(self) return 0 end,                                                           --i_child_count
    OverlaySetCloseCallback=function(self,s_callbackName,_ctx) end,
    Parent=function(self) return Obj end,                                                        --u_parent_handle
    PropertyCount=function(self) return 0 end,                                                      --i_property_count
    PropertyName=function(self,i_property_index) return "" end,                                     --s_property_name
    PropertyType=function(self,i_property_index) return "" end,                                     --s_property_type
    Ptr=function(self,i_index) return Obj end,                                                   --u_child_handle
    Remove=function(self,i_child_index,_u_undo) end,
    RemoveListItem=function(self,s_name) end,
    Resize=function(self,i_size) end,
    Save=function(self,s_path,s_file) return true end,                                              --b_success
    ScrollDo=function(self,e_type,e_entity,e_valuetype,i_items,b_opposite) return true end,         --b_success
    ScrollGetInfo=function(self,e_type) return{} end,
        --returns {index(1-based), offset, visibleArea, totalArea, itemsCount, itemsOnPage} or nil
    ScrollGetItemByOffset=function(self,e_type,i_offset) return 1 end,                              --i_index
    ScrollGetItemOffset=function(self,e_type,i_idx) return 1 end,                                   --i_offset of the item or nil
    ScrollGetItemSize=function(self,e_type,i_idx) return 1 end,                                     --i_size of the item of nil
    ScrollIsNeeded=function(self,e_type) return true end,                                           --b_true if scroll of the requested type is needed
    SelectListItemByIndex=function(self,i_index) end,
    SelectListItemByName=function(self,s_name_value) end,
    SelectListItemByValue=function(self,s_value) end,
    Set=function(self,s_propertyname,s_propertyvalue,_e_changelevel) end,
    SetChildren=function(self,s_propertyname,s_propertyvalue,_b_recursive) end,
    SetEmptyListItem=function(self,i_index,_b_empty) end,
    SetEnabledListItem=function(self,i_index,_b_enable) end,
    SetFader=function(self,t_fader) end,
        --t_fader={[double:value[0..100]], [bool:faderDisabled], [string:token(Fader*)]}
    SetListItemAppearance=function(self,i_index,t_appearance) end,
        --t_appearance={[left={...AppearanceData...}][right={...AppearanceData...}]}
    SetListItemName=function(self,i_index,s_name) end,
    SetListItemValueStr=function(self,i_index,s_value) end,
    SetPositionHint=function(self,i_x,i_y) end,
    ShowModal=function(self,f_callback) end,
    ToAddr=function(self) return "" end,                                                            --s_address
    UIChildren=function(self) return {} end,                                                        --t_children of passed UIObject
    UILGGetColumnAbsXLeft=function(self,i_idx) return 0 end,                                        --i_x
    UILGGetColumnAbsXRight=function(self,i_idx) return 0 end,                                       --i_x
    UILGGetColumnWidth=function(self,i_idx) return 0 end,                                           --i_size
    UILGGetRowAbsYBottom=function(self,i_idx) return 0 end,                                         --i_y
    UILGGetRowAbsYTop=function(self,i_idx) return 0 end,                                            --i_y
    UILGGetRowHeight=function(self,i_idx) return 0 end,                                             --i_size
    WaitChildren=function(self,i_amount,_n_seconds) return true end,                                --b_true on success, nil on timeout or if object doesn't exist
    WaitInit=function(self,_n_seconds,b_forcereinit) return true end,                               --b_true on success, nil on timeout or if object doesn't exist
}

Enums={
    ["AssignmentBlindButtonFunctions"]=
    {
        ["Toggle"]=14,
        ["Off"]=8,
        ["On"]=7,
        [""]=0,
        ["Flash"]=1,
        ["Empty"]=0,
    },
    ["ClockSources"]=
    {
        ["Time Zone Clock"]=2,
        ["Session Time"]=0,
        ["Timecode"]=1,
    },
    ["PhaserBars"]=
    {
        ["PhaserBar"]=1,
        ["PresetBar"]=2,
        ["2DBar"]=0,
    },
    ["VirtualKeyExecutionType"]=
    {
        ["Release"]=4,
        ["ClearImmediate"]=2,
        ["Background"]=3,
        ["Normal"]=0,
        ["Immediate"]=1,
    },
    ["PhaserTransformationsShort"]=
    {
        ["None"]=0,
        ["Mirror"]=1,
    },
    ["RemoteMidiType"]=
    {
        ["NoteAttackDecay"]=2,
        ["Note"]=0,
        ["NoteAttack"]=1,
        ["Control"]=3,
    },
    ["ProgLayer"]=
    {
        ["Decel"]=12,
        ["Accel"]=11,
        ["Width"]=14,
        ["Transition"]=13,
        ["Speed"]=4,
        ["Delay"]=3,
        ["Phase"]=5,
        ["Relative"]=10,
        ["GridPos"]=6,
        ["Measure"]=7,
        ["Output"]=19,
        ["DMX"]=18,
        ["CueAbs"]=16,
        ["CueRel"]=17,
        ["Fade"]=2,
        ["Absolute"]=9,
    },
    ["ColorSpaceMode"]=
    {
        ["ANSI"]=2,
        ["Custom"]=3,
        ["ProPhoto"]=1,
        ["sRGB"]=0,
    },
    ["OnOff"]=
    {
        ["On"]=1,
        ["Off"]=0,
    },
    ["CueTrigger"]=
    {
        ["BPM"]=4,
        ["Time"]=1,
        ["Go"]=0,
        ["Follow"]=2,
        ["Sound"]=3,
    },
    ["ActionMode"]=
    {
        ["SelectMode"]=2,
        ["ViewOnly"]=0,
        ["OffMode"]=1,
    },
    ["MibTiming"]=
    {
        ["Default"]=9223372036854775807,
    },
    ["ValueLayer"]=
    {
        ["Relative"]=10,
        ["Delay"]=3,
        ["Fade"]=2,
        ["Absolute"]=9,
    },
    ["ScrollParamValueType"]=
    {
        ["Relative"]=0,
        ["Absolute"]=1,
    },
    ["MessageCategory"]=
    {
        ["Power"]=3,
        ["Manet"]=4,
        ["Chat"]=6,
        ["Cmdline"]=2,
        ["Undefined"]=0,
        ["USB"]=5,
        ["System"]=1,
    },
    ["CopyCueOnly"]=
    {
        ["On"]=1,
        ["On (Default New)"]=2,
        ["Off"]=0,
    },
    ["XYZMapping"]=
    {
        ["X"]=0,
        ["Y"]=1,
        ["Z"]=2,
    },
    ["AutoSaveMode"]=
    {
        ["15 Minutes"]=2,
        ["120 Minutes"]=5,
        ["30 Minutes"]=3,
        ["Off"]=0,
        ["360 Minutes"]=6,
        ["5 Minutes"]=1,
        ["60 Minutes"]=4,
    },
    ["FontSizes"]=
    {
        ["16"]=16,
        ["18"]=18,
        ["14"]=14,
        ["24"]=24,
        ["28"]=28,
        ["20"]=20,
        ["12"]=12,
        ["10"]=10,
        ["32"]=32,
        ["Default"]=0,
    },
    ["RDMPID"]=
    {
        ["COMMS_STATUS"]=21,
        ["POWER_STATE"]=4112,
        ["BOOT_SOFTWARE_VERSION_LABEL"]=194,
        ["PROXIED_DEVICES"]=16,
        ["DEVICE_INFO"]=96,
        ["PARAMETER_DESCRIPTION"]=81,
        ["PRODUCT_DETAIL_ID_LIST"]=112,
        ["TILT_INVERT"]=1537,
        ["LAMP_HOURS"]=1025,
        ["DEVICE_HOURS"]=1024,
        ["DEVICE_MODEL_DESCRIPTION"]=128,
        ["DISC_MUTE"]=2,
        ["SUB_DEVICE_STATUS_REPORT_THRESHOLD"]=51,
        ["DISPLAY_LEVEL"]=1281,
        ["SUPPORTED_PARAMETERS"]=80,
        ["DISC_UN_MUTE"]=3,
        ["STATUS_ID_DESCRIPTION"]=49,
        ["SENSOR_DEFINITION"]=512,
        ["SLOT_INFO"]=288,
        ["CAPTURE_PRESET"]=4144,
        ["SLOT_DESCRIPTION"]=289,
        ["DISPLAY_INVERT"]=1280,
        ["DEVICE_LABEL"]=130,
        ["PRESET_PLAYBACK"]=4145,
        ["DEVICE_POWER_CYCLES"]=1029,
        ["SOFTWARE_VERSION_LABEL"]=192,
        ["SELF_TEST_DESCRIPTION"]=4129,
        ["DMX_START_ADDRESS"]=240,
        ["RESET_DEVICE"]=4097,
        ["RECORD_SENSORS"]=514,
        ["PAN_TILT_SWAP"]=1538,
        ["REAL_TIME_CLOCK"]=1539,
        ["QUEUED_MESSAGE"]=32,
        ["BOOT_SOFTWARE_VERSION_ID"]=193,
        ["PROXIED_DEVICE_COUNT"]=17,
        ["SENSOR_VALUE"]=513,
        ["LAMP_ON_MODE"]=1028,
        ["PERFORM_SELFTEST"]=4128,
        ["DISC_UNIQUE_BRANCH"]=1,
        ["DMX_PERSONALITY_DESCRIPTION"]=225,
        ["CLEAR_STATUS_ID"]=50,
        ["DEFAULT_SLOT_VALUE"]=290,
        ["PAN_INVERT"]=1536,
        ["LANGUAGE_CAPABILITIES"]=160,
        ["FACTORY_DEFAULTS"]=144,
        ["None"]=0,
        ["MANUFACTURER_LABEL"]=129,
        ["LANGUAGE"]=176,
        ["IDENTIFY_DEVICE"]=4096,
        ["LAMP_STATE"]=1027,
        ["STATUS_MESSAGES"]=48,
        ["DMX_PERSONALITY"]=224,
        ["LAMP_STRIKES"]=1026,
    },
    ["WeekDayShort"]=
    {
        ["Wed"]=2,
        ["Thu"]=3,
        ["Tue"]=1,
        ["Sun"]=6,
        ["Fri"]=4,
        ["Sat"]=5,
        ["Mon"]=0,
    },
    ["AlignMode"]=
    {
        ["/"]=1,
        ["Off"]=0,
        ["><"]=4,
        ["<"]=2,
        ["<>"]=5,
        [">"]=3,
    },
    ["DmxSheetHeaderType"]=
    {
        [""]=0,
    },
    ["AgendaViewMode"]=
    {
        ["Month"]=2,
        ["Sheet"]=0,
        ["Week"]=3,
        ["Day"]=4,
        ["Year"]=1,
    },
    ["SpeedReadoutModeAuto"]=
    {
        ["BPM"]=1,
        ["Seconds"]=2,
        ["Auto"]=-1,
        ["Hertz"]=0,
    },
    ["KeyAction"]=
    {
        ["Hold"]=2,
        ["Release"]=0,
        ["Press"]=1,
        ["ReleaseAfterHold"]=4,
        ["DoublePress"]=3,
    },
    ["PhaserAbsRelMode"]=
    {
        ["Abs+Rel"]=3,
        ["Relative"]=2,
        ["Absolute"]=1,
    },
    ["ValueReadoutModeAuto"]=
    {
        ["Decimal16"]=4,
        ["Percent"]=0,
        ["Hex16"]=7,
        ["Decimal8"]=3,
        ["Auto"]=-1,
        ["Physical"]=2,
        ["Hex8"]=6,
        ["Decimal24"]=5,
        ["Natural"]=9,
        ["Hex24"]=8,
        ["PercentFine"]=1,
    },
    ["TimecodeSlot"]=
    {
        ["TCSlot 4"]=3,
        ["TCSlot 3"]=2,
        ["TCSlot 7"]=6,
        ["TCSlot 6"]=5,
        ["TCSlot 1"]=0,
        ["TCSlot 2"]=1,
        ["TCSlot 5"]=4,
        ["<Selected>"]=255,
        ["TCSlot 8"]=7,
    },
    ["PhaserSheetMode"]=
    {
        ["Layer Condensed"]=1,
        ["Layer Expanded"]=2,
        ["Step"]=0,
    },
    ["RealtimeSection"]=
    {
        ["GroupMaster"]=6,
        ["CalcChannel"]=10,
        ["DMXMix"]=2,
        ["Jobque"]=3,
        ["Timecode"]=7,
        ["DMXDecompress"]=1,
        ["DMXTransfer"]=13,
        ["Output"]=11,
        ["Highlight"]=9,
        ["Playback"]=8,
        ["Start"]=0,
        ["DMXCompress"]=12,
    },
    ["FrameFormatDefault"]=
    {
        ["30 fps"]=30,
        ["Seconds"]=100,
        ["24 fps"]=24,
        ["25 fps"]=25,
        ["Default"]=0,
        ["60 fps"]=60,
    },
    ["StoreSource"]=
    {
        ["Programmer"]=0,
        ["Output"]=1,
        ["DMX"]=2,
    },
    ["Pretty RDMSensorUnit"]=
    {
        ["P"]=20,
        ["kg"]=11,
        ["Ω"]=9,
        ["A (AC P-P)"]=6,
        ["V (DC)"]=2,
        ["N"]=18,
        ["W"]=10,
        ["IRE"]=27,
        ["m²"]=13,
        ["°C"]=1,
        ["cd"]=24,
        ["°"]=22,
        ["V (AC P-P)"]=3,
        ["sr"]=23,
        ["lm"]=25,
        ["s"]=21,
        ["m³"]=14,
        ["B"]=28,
        ["m/s"]=16,
        [""]=0,
        ["m/(s²)"]=17,
        ["m"]=12,
        ["V (AC RMS)"]=4,
        ["lx"]=26,
        ["Hz"]=8,
        ["J"]=19,
        ["kg/(m²)"]=15,
        ["A (DC)"]=5,
        ["UNITS_MS"]=128,
        ["A (AC RMS)"]=7,
    },
    ["VirtualKeyCode"]=
    {
        ["FREEZE"]=12,
        ["DEF_PAUSE"]=38,
        ["X12"]=30,
        ["AT"]=82,
        ["DELETE"]=50,
        ["LIST"]=18,
        ["USER2"]=100,
        ["MA2"]=2,
        [""]=0,
        ["UP"]=6,
        ["GROUP"]=58,
        ["NUM1"]=68,
        ["NUM6"]=73,
        ["MOVE"]=48,
        ["X3"]=21,
        ["HELP"]=53,
        ["CLEAR"]=87,
        ["X11"]=29,
        ["GO"]=42,
        ["STOMP"]=52,
        ["ENCODER_OUTSIDE2"]=92,
        ["PREV"]=3,
        ["NUM7"]=74,
        ["FIXTURE"]=56,
        ["ENCODER_INSIDE2"]=91,
        ["SELFIX"]=7,
        ["UNKNOWN"]=0,
        ["CUE"]=60,
        ["SELECT"]=54,
        ["PRESET"]=61,
        ["DEF_GO"]=37,
        ["X8"]=26,
        ["X7"]=25,
        ["X6"]=24,
        ["ASSIGN"]=63,
        ["OFF"]=47,
        ["THRU"]=78,
        ["X4"]=22,
        ["NUM4"]=71,
        ["ENCODER_INSIDE4"]=95,
        ["X16"]=34,
        ["DEF_GOBACK"]=39,
        ["X15"]=33,
        ["SEQUENCE"]=59,
        ["X14"]=32,
        ["NUM3"]=70,
        ["GOTO"]=55,
        ["FULL"]=85,
        ["PLUS"]=77,
        ["ALIGN"]=51,
        ["IF"]=81,
        ["ENCODER_OUTSIDE5"]=98,
        ["X10"]=28,
        ["LEARN"]=43,
        ["ENCODER_OUTSIDE3"]=94,
        ["DOWN"]=8,
        ["GOFAST"]=45,
        ["UNDO"]=86,
        ["ON"]=46,
        ["X1"]=19,
        ["CHANNEL"]=57,
        ["ENCODER_OUTSIDE1"]=90,
        ["X13"]=31,
        ["PLEASE"]=84,
        ["MENU"]=9,
        ["X9"]=27,
        ["ENCODER_INSIDE1"]=89,
        ["TIME"]=64,
        ["X5"]=23,
        ["STORE"]=66,
        ["DOT"]=80,
        ["NEXT"]=4,
        ["PAGE_UP"]=16,
        ["SOLO"]=11,
        ["SLASH"]=83,
        ["RESET"]=5,
        ["PAUSE"]=40,
        ["NUM5"]=72,
        ["ESC"]=88,
        ["USER1"]=99,
        ["BLIND"]=14,
        ["MINUS"]=79,
        ["HIGH"]=10,
        ["ENCODER_INSIDE5"]=97,
        ["NUM8"]=75,
        ["PREVIEW"]=13,
        ["X2"]=20,
        ["COPY"]=49,
        ["NUM0"]=67,
        ["ENCODER_INSIDE3"]=93,
        ["NUM2"]=69,
        ["EXEC"]=35,
        ["GOBACK"]=41,
        ["XKEYS"]=15,
        ["MA1"]=1,
        ["UPDATE"]=65,
        ["FADER"]=36,
        ["EDIT"]=62,
        ["ENCODER_OUTSIDE4"]=96,
        ["NUM9"]=76,
        ["GOBACKFAST"]=44,
        ["PAGE_DOWN"]=17,
    },
    ["CueCopyDstCmd"]=
    {
        ["Keep"]=0,
        ["ForceDefault"]=2,
        ["ForceRelease"]=1,
    },
    ["RDMDataType"]=
    {
        ["DS_BIT_FIELD"]=1,
        ["DS_UNSIGNED_DWORD"]=7,
        ["DS_SIGNED_WORD"]=6,
        ["DS_MS"]=128,
        ["DS_SIGNED_DWORD"]=8,
        ["DS_UNSIGNED_WORD"]=5,
        ["DS_UNSIGNED_BYTE"]=3,
        ["DS_SIGNED_BYTE"]=4,
        ["DS_NOT_DEFINED"]=0,
        ["DS_ASCII"]=2,
    },
    ["UserRights"]=
    {
        ["None"]=6,
        ["Setup"]=1,
        ["Playback"]=4,
        ["Admin"]=0,
        ["Presets"]=3,
        ["View"]=5,
        ["Program"]=2,
    },
    ["TimecodeSelectionTarget"]=
    {
        ["TimeRanges"]=1,
        ["Events"]=0,
    },
    ["ECPlay"]=
    {
        ["off"]=0,
        ["0"]=0,
        ["1"]=1,
        ["false"]=0,
        ["on"]=1,
        ["No"]=0,
        ["true"]=1,
        [""]=1,
    },
    ["PhaserViewMode"]=
    {
        ["Auto"]=0,
        ["Sheet"]=3,
        ["1D"]=2,
        ["2D"]=1,
    },
    ["Update"]=
    {
        ["Add New Content"]=1,
        ["Original Content Only"]=0,
    },
    ["GroupSelectionType"]=
    {
        ["Relative"]=0,
        ["Absolute"]=1,
    },
    ["MasterPriority"]=
    {
        ["Low"]=2,
        ["VeryLow"]=1,
        ["Normal"]=3,
        ["High"]=4,
        ["Never"]=0,
    },
    ["GridModeAgenda"]=
    {
        ["Month"]=0,
        ["Day"]=2,
        ["Week"]=1,
    },
    ["SCVirtualKeyCode"]=
    {
        ["FREEZE"]=12,
        ["DEF_PAUSE"]=38,
        ["X12"]=30,
        ["AT"]=82,
        ["DELETE"]=50,
        ["LIST"]=18,
        [""]=0,
        ["UP"]=6,
        ["GROUP"]=58,
        ["NUM1"]=68,
        ["HIGH"]=10,
        ["MOVE"]=48,
        ["X3"]=21,
        ["HELP"]=53,
        ["CLEAR"]=87,
        ["X11"]=29,
        ["GO"]=42,
        ["STOMP"]=52,
        ["PREV"]=3,
        ["PLUS"]=77,
        ["SELFIX"]=7,
        ["CUE"]=60,
        ["SELECT"]=54,
        ["PRESET"]=61,
        ["DEF_GO"]=37,
        ["SET"]=5,
        ["ASSIGN"]=63,
        ["OFF"]=47,
        ["DEF_GOBACK"]=39,
        ["SLASH"]=83,
        ["MINUS"]=79,
        ["GOTO"]=55,
        ["FULL"]=85,
        ["FIXTURE"]=56,
        ["ALIGN"]=51,
        ["IF"]=81,
        ["STORE"]=66,
        ["GOBACK"]=41,
        ["LEARN"]=43,
        ["X8"]=26,
        ["DOWN"]=8,
        ["GOFAST"]=45,
        ["X7"]=25,
        ["ON"]=46,
        ["X6"]=24,
        ["CHANNEL"]=57,
        ["X15"]=33,
        ["X13"]=31,
        ["PLEASE"]=84,
        ["X4"]=22,
        ["X9"]=27,
        ["NUM4"]=71,
        ["X16"]=34,
        ["X5"]=23,
        ["X14"]=32,
        ["DOT"]=80,
        ["NEXT"]=4,
        ["PAGE_UP"]=16,
        ["X10"]=28,
        ["X1"]=19,
        ["NUM6"]=73,
        ["PAUSE"]=40,
        ["NUM5"]=72,
        ["TIME"]=64,
        ["THRU"]=78,
        ["BLIND"]=14,
        ["SEQUENCE"]=59,
        ["OOPS"]=86,
        ["NUM9"]=76,
        ["NUM8"]=75,
        ["PREVIEW"]=13,
        ["X2"]=20,
        ["COPY"]=49,
        ["NUM3"]=70,
        ["NUM7"]=74,
        ["NUM2"]=69,
        ["EXEC"]=35,
        ["MENU"]=9,
        ["XKEYS"]=15,
        ["NUM0"]=67,
        ["UPDATE"]=65,
        ["FADER"]=36,
        ["EDIT"]=62,
        ["ESC"]=88,
        ["SOLO"]=11,
        ["GOBACKFAST"]=44,
        ["PAGE_DOWN"]=17,
    },
    ["DMXBreak"]=
    {
        ["Overwrite"]=-1,
    },
    ["PresetValuesMode"]=
    {
        ["Normal"]=0,
        ["Lowlight"]=3,
        ["Default"]=1,
        ["Highlight"]=2,
    },
    ["MIDIMode"]=
    {
        ["Through"]=2,
        ["In"]=0,
        ["Out"]=1,
    },
    ["GroupMemoryType"]=
    {
        ["Compressed"]=0,
        ["Uncompressed"]=1,
    },
    ["ImportExportObjectType"]=
    {
        ["DataPools"]=14,
        ["Cameras"]=1,
        ["Filters"]=16,
        ["Timecodes"]=25,
        ["Configurations"]=15,
        ["RenderQualities"]=3,
        ["Symbols"]=12,
        ["Gobos"]=8,
        ["Scribbles"]=4,
        ["GelPools"]=2,
        ["Videos"]=13,
        ["Sounds"]=11,
        ["PresetPools"]=23,
        ["Macros"]=19,
        ["MAtricks"]=20,
        ["Worlds"]=26,
        ["Images"]=9,
        ["Groups"]=17,
        ["Meshes"]=10,
        ["Views"]=7,
        ["Users"]=5,
        ["Layouts"]=18,
        ["Pages"]=21,
        ["Plugins"]=22,
        ["Sequences"]=24,
        ["UserProfiles"]=6,
        ["Appearances"]=0,
    },
    ["PresetMode"]=
    {
        ["Selective"]=1,
        ["Universal"]=3,
        ["Global"]=2,
    },
    ["WingType"]=
    {
        ["grandMA3 Fader Module Encoder (MFE)"]=2,
        ["grandMA3 Fader Module Crossfader (MFX)"]=1,
        ["grandMA3 TEST"]=3,
        ["grandMA3 Master Module (MM)"]=0,
        ["grandMA3 Compact"]=4,
    },
    ["YesNo"]=
    {
        ["Yes"]=1,
        ["No"]=0,
    },
    ["ExtraStatusInfo"]=
    {
        ["Join"]=1,
        ["Create"]=2,
        [""]=0,
    },
    ["DisplayNumber"]=
    {
        ["Extern4"]=3,
        ["Executors5"]=12,
        ["Executors6"]=13,
        ["Intern1"]=0,
        ["TouchMapper"]=14,
        ["Small7"]=6,
        ["Encoders"]=7,
        ["Executors1"]=8,
        ["None"]=4294967295,
        ["Intern3"]=2,
        ["Small6"]=5,
        ["Executors3"]=10,
        ["Executors2"]=9,
        ["Executors4"]=11,
        ["Intern2"]=1,
        ["Extern5"]=4,
    },
    ["DmxSheetCellType"]=
    {
        ["NotRequested"]=6,
        ["Parked"]=7,
        ["SelectedInverted"]=4,
        ["NotPatched"]=0,
        ["Patched2"]=2,
        ["Selected"]=3,
        ["DmxTest"]=8,
        ["Patched1"]=1,
        ["PartlySelected"]=5,
    },
    ["CueOnly"]=
    {
        ["On"]=1,
        ["OnDefaultNew"]=2,
        ["Off"]=0,
    },
    ["CalculatorMode"]=
    {
        ["fps24"]=17,
        ["Dec8"]=9,
        ["Decimal"]=1,
        ["SpeedSec"]=8,
        ["fps30"]=19,
        ["Hex8"]=12,
        ["Percent"]=15,
        ["Hex24"]=14,
        ["SpeedBPM"]=7,
        ["Double"]=0,
        ["Hex"]=2,
        ["JointTime"]=16,
        ["fps25"]=18,
        ["Hex16"]=13,
        ["fps60"]=20,
        ["Seconds"]=5,
        ["Dec16"]=10,
        ["Dec24"]=11,
        ["SpeedHz"]=6,
    },
    ["FrameFormat"]=
    {
        ["30 fps"]=30,
        ["24 fps"]=24,
        ["25 fps"]=25,
        ["Seconds"]=0,
        ["60 fps"]=60,
    },
    ["GridSortOrder"]=
    {
        ["None"]=0,
        ["Asc"]=1,
        ["Desc"]=2,
    },
    ["AxisGroupType"]=
    {
        ["YZ"]=2,
        ["XZ"]=1,
        ["XY"]=0,
    },
    ["PoolSizeFactor"]=
    {
        ["Half"]=0,
        ["Double"]=2,
        ["Normal"]=1,
    },
    ["Index"]=
    {
        ["Illegal"]=-1,
    },
    ["EncoderFunction"]=
    {
        ["MIB"]=6,
        ["PresetTiming2"]=3,
        ["PresetTiming1"]=2,
        ["Data Edit"]=9,
        ["CueTiming"]=1,
        ["CueSettings"]=0,
        ["Cmd"]=8,
        ["PresetTiming3"]=4,
    },
    ["DynamicPresetPool"]=
    {
        ["Dynamic"]=4294967295,
    },
    ["MibMode"]=
    {
        ["Early"]=3,
        ["Defined"]=2,
        ["None"]=1,
        ["Late"]=5,
        ["UponGo"]=4,
        ["Default"]=0,
    },
    ["AssignmentFaderFunctions"]=
    {
        ["Rate"]=36,
        ["Master"]=31,
        ["Speed"]=37,
        ["X"]=32,
        [""]=0,
        ["Time"]=41,
        ["XB"]=34,
        ["XA"]=33,
        ["Empty"]=0,
        ["Temp"]=35,
    },
    ["DmxSheetSettingsViewMode"]=
    {
        ["Sheet"]=0,
    },
    ["RDMSensorUnitPrefix"]=
    {
        ["PREFIX_KILO"]=19,
        ["PREFIX_YOTTA"]=26,
        ["PREFIX_PICO"]=6,
        ["PREFIX_NANO"]=5,
        ["PREFIX_GIGA"]=21,
        ["PREFIX_HECTO"]=18,
        ["PREFIX_MICRO"]=4,
        ["PREFIX_DECA"]=17,
        ["PREFIX_MILLI"]=3,
        ["PREFIX_FEMPTO"]=7,
        ["PREFIX_CENTI"]=2,
        ["PREFIX_DECI"]=1,
        ["PREFIX_ZETTA"]=25,
        ["PREFIX_EXA"]=24,
        ["PREFIX_ZEPTO"]=9,
        ["PREFIX_TERRA"]=22,
        ["PREFIX_ATTO"]=8,
        ["PREFIX_MEGA"]=20,
        ["PREFIX_YOCTO"]=10,
        ["PREFIX_PETA"]=23,
        ["PREFIX_NONE"]=0,
    },
    ["RDMPidValueResetDevice"]=
    {
        [""]=0,
        ["Warm"]=1,
        ["Cold"]=255,
    },
    ["MessagePriority"]=
    {
        ["Undefined"]=0,
        ["Errors"]=3,
        ["Spam"]=1,
        ["Alerts"]=4,
        ["Warnings"]=2,
    },
    ["PlaybackPriority"]=
    {
        ["LTP"]=6,
        ["High"]=5,
        ["Super"]=0,
        ["Swap"]=2,
        ["HTP"]=3,
        ["Low"]=7,
        ["Lowest"]=8,
        ["Highest"]=4,
    },
    ["RemoteResolution"]=
    {
        ["16bit"]=2,
        ["8bit"]=1,
        ["24bit"]=3,
    },
    ["RDMProductCategory"]=
    {
        ["PRODUCT_CATEGORY_MONITOR_ACLINEPOWER"]=2561,
        ["PRODUCT_CATEGORY_SCENIC_OTHER"]=2047,
        ["PRODUCT_CATEGORY__MANUFACTORER_SPECIFIC"]=32768,
        ["PRODUCT_CATEGORY_PROJECTOR_MOVING_MIRROR"]=771,
        ["PRODUCT_CATEGORY_FIXTURE_ACCESSORY_YOKE"]=514,
        ["PRODUCT_CATEGORY_DIMMER_OTHER"]=1535,
        ["PRODUCT_CATEGORY_FIXTURE_OTHER"]=511,
        ["PRODUCT_CATEGORY_POWER_CONTROL"]=1537,
        ["PRODUCT_CATEGORY_MONITOR_ENVIRONMENTAL"]=2563,
        ["PRODUCT_CATEGORY_TEST_EQUIPMENT_OTHER"]=29183,
        ["PRODUCT_CATEGORY_PROJECTOR_MOVING_YOKE"]=770,
        ["PRODUCT_CATEGORY_AV_OTHER"]=2559,
        ["PRODUCT_CATEGORY_TEST_EQUIPMENT"]=28929,
        ["PRODUCT_CATEGORY_TEST"]=28928,
        ["PRODUCT_CATEGORY_MONITOR_OTHER"]=2815,
        ["PRODUCT_CATEGORY_SCENIC_DRIVE"]=1793,
        ["PRODUCT_CATEGORY_DIMMER_AC_OTHER"]=1286,
        ["PRODUCT_CATEGORY_PROJECTOR"]=768,
        ["PRODUCT_CATEGORY_ATMOSPHERIC_EFFECT"]=1025,
        ["PRODUCT_CATEGORY_SCENIC"]=1792,
        ["PRODUCT_CATEGORY_AV_AUDIO"]=2305,
        ["PRODUCT_CATEGORY_PROJECTOR_OTHER"]=1023,
        ["PRODUCT_CATEGORY_FIXTURE_ACCESSORY_MIRROR"]=515,
        ["PRODUCT_CATEGORY_CONTROL_CONTROLLER"]=28673,
        ["PRODUCT_CATEGORY_DIMMER_AC_COLDCATHODE"]=1283,
        ["PRODUCT_CATEGORY_FIXTURE_ACCESSORY_BEAM"]=517,
        ["PRODUCT_CATEGORY_POWER_SOURCE"]=1538,
        ["PRODUCT_CATEGORY_DIMMER_AC_NONDIM"]=1284,
        ["PRODUCT_CATEGORY_DIMMER"]=1280,
        ["PRODUCT_CATEGORY_CONTROL"]=28672,
        ["PRODUCT_CATEGORY_POWER_OTHER"]=1791,
        ["PRODUCT_CATEGORY_DIMMER_AC_ELV"]=1285,
        ["PRODUCT_CATEGORY_POWER"]=1536,
        ["PRODUCT_CATEGORY_FIXTURE_ACCESSORY"]=512,
        ["PRODUCT_CATEGORY_CONTROL_BACKUPDEVICE"]=28674,
        ["PRODUCT_CATEGORY_FIXTURE"]=256,
        ["PRODUCT_CATEGORY_FIXTURE_ACCESSORY_OTHER"]=767,
        ["PRODUCT_CATEGORY_FIXTURE_MOVING_MIRROR"]=259,
        ["PRODUCT_CATEGORY_MONITOR"]=2560,
        ["PRODUCT_CATEGORY_FIXTURE_MOVING_YOKE"]=258,
        ["PRODUCT_CATEGORY_MONITOR_DCPOWER"]=2562,
        ["PRODUCT_CATEGORY_DATA"]=2048,
        ["PRODUCT_CATEGORY_AV"]=2304,
        ["PRODUCT_CATEGORY_NOT_DECLARED"]=0,
        ["PRODUCT_CATEGORY_FIXTURE_FIXED"]=257,
        ["PRODUCT_CATEGORY_ATMOSPHERIC_PYRO"]=1026,
        ["PRODUCT_CATEGORY_DIMMER_DC_LEVEL"]=1287,
        ["PRODUCT_CATEGORY_DIMMER_AC_INCANDESCENT"]=1281,
        ["PRODUCT_CATEGORY_DATA_OTHER"]=2303,
        ["PRODUCT_CATEGORY_DIMMER_AC_FLUORESCENT"]=1282,
        ["PRODUCT_CATEGORY_DATA_CONVERSION"]=2050,
        ["PRODUCT_CATEGORY_DIMMER_DC_PWM"]=1288,
        ["PRODUCT_CATEGORY_ATMOSPHERIC_OTHER"]=1279,
        ["PRODUCT_CATEGORY_DATA_DISTRIBUTION"]=2049,
        ["PRODUCT_CATEGORY_CONTROL_OTHER"]=28927,
        ["PRODUCT_CATEGORY_ATMOSPHERIC"]=1024,
        ["PRODUCT_CATEGORY_AV_VIDEO"]=2306,
        ["PRODUCT_CATEGORY_PROJECTOR_FIXED"]=769,
        ["PRODUCT_CATEGORY_OTHER"]=32767,
        ["PRODUCT_CATEGORY_FIXTURE_ACCESSORY_EFFECT"]=516,
        ["PRODUCT_CATEGORY_DIMMER_CS_LED"]=1289,
        ["PRODUCT_CATEGORY_FIXTURE_ACCESSORY_COLOR"]=513,
    },
    ["ExecDisplayMode"]=
    {
        ["Both"]=2,
        ["Appearance only"]=1,
        ["Data only"]=0,
    },
    ["AssignmentButtonFunctionsMacro"]=
    {
        ["Pause"]=18,
        ["<<<"]=6,
        ["Go+"]=3,
        ["Off"]=8,
        ["Go-"]=4,
        [""]=0,
        ["Empty"]=0,
        [">>>"]=5,
    },
    ["HostOs"]=
    {
        ["Linux"]=1,
        ["Windows"]=2,
        ["Rtos"]=4,
        ["Mac"]=3,
        ["Undefined"]=0,
    },
    ["ActiveDisplay"]=
    {
        ["Beat"]=2,
        ["Wave"]=0,
        ["Sound"]=1,
    },
    ["ValueNone"]=
    {
        ["None"]=2147483647,
    },
    ["CmdEventStatus"]=
    {
        ["On"]=1,
        ["Off"]=0,
    },
    ["TrackpadMode"]=
    {
        ["Pan/Tilt"]=1,
        ["Mouse"]=0,
    },
    ["FrameFormatClockSource"]=
    {
        ["30 fps"]=30,
        ["Seconds"]=100,
        ["24 fps"]=24,
        ["25 fps"]=25,
        ["<Clock Source>"]=0,
        ["60 fps"]=60,
    },
    ["MeasurementStatus"]=
    {
        ["Measuring Fixture"]=0,
        ["Device Found"]=2,
        ["Idle"]=5,
        ["Dark Calibration Failed"]=4,
        ["No Device Found"]=1,
        ["Dark Calibration Successful"]=3,
    },
    ["ChangeLevel"]=
    {
        ["File"]=0,
        ["Little"]=12,
        ["FullWithoutContent"]=8,
        ["Create"]=6,
        ["Move"]=4,
        ["Remove"]=1,
        ["Insert"]=2,
        ["Full"]=7,
        ["Property"]=11,
        ["None"]=13,
        ["Exchange"]=3,
        ["Delete"]=5,
        ["Layout"]=10,
        ["Structural"]=9,
    },
    ["RelationType"]=
    {
        ["Multiply"]=0,
        ["Override"]=1,
    },
    ["TrackpadPTInvertMode"]=
    {
        ["Tilt Invert"]=2,
        ["Both"]=3,
        ["Pan Inv0ert"]=1,
        ["Off"]=0,
    },
    ["AutoLayoutScrollType"]=
    {
        ["Horizontal"]=1,
        ["Auto"]=2,
        ["Vertical"]=0,
    },
    ["UsbProductID"]=
    {
        ["grandMA3 Master Module (MM)"]=46531,
        ["grandMA3 DIN-Rail node"]=46538,
        ["grandMA3 Fader Module Encoder (MFE)"]=46533,
        ["grandMA3 xPort node"]=46537,
        ["grandMA3 Fader Module Crossfader (MFX)"]=46532,
        ["grandMA3 IO Node DIN Rail"]=46540,
        ["grandMA3 Compact"]=46534,
        ["grandMA3 MA-Key (Viz-Key)"]=46353,
        ["grandMA3 DMX Module"]=46528,
        ["grandMA3 MA-Key (Blank)"]=46352,
        ["grandMA3 Compact XT"]=46535,
        ["grandMA3 IO Node"]=46539,
        ["grandMA3 Control Module"]=46530,
        ["MA NPU 3 DMX Module"]=46529,
        ["grandMA3 Fader Wing"]=46541,
        ["grandMA3 CommandWing"]=46536,
    },
    ["UndefinedMin"]=
    {
        ["-"]=-32768,
    },
    ["MouseButtonTypes"]=
    {
        ["Left"]=0,
        ["Right"]=1,
        ["Middle"]=2,
    },
    ["ReductionPolicy"]=
    {
        ["None"]=0,
        ["EqualFirst"]=4,
        ["EqualLast"]=5,
        ["Equal"]=3,
        ["PreferLast"]=2,
        ["PreferFirst"]=1,
    },
    ["FontSizeType"]=
    {
        ["Point"]=0,
        ["Pixel"]=1,
    },
    ["InputType"]=
    {
        ["Touch"]=1,
        ["Mouse"]=0,
        ["Keyboard"]=2,
        ["Scroller"]=3,
    },
    ["AssignmentButtonFunctionsPlugin"]=
    {
        ["Black"]=2,
        ["Off"]=8,
        ["Go-"]=4,
        ["Flash"]=1,
        ["<<<"]=6,
        ["Temp"]=13,
        ["LearnSpeed"]=10,
        ["Top"]=15,
        ["Toggle"]=14,
        ["Goto"]=16,
        ["Rate1"]=11,
        ["Swop"]=25,
        ["Speed1"]=12,
        [""]=0,
        ["Go+"]=3,
        [">>>"]=5,
        ["Pause"]=18,
        ["DoubleSpeed"]=27,
        ["Empty"]=0,
        ["Time"]=22,
        ["On"]=7,
        ["Load"]=17,
        ["HalfSpeed"]=26,
        ["Call"]=104,
    },
    ["GridColumnFilterCollect"]=
    {
        ["Full"]=0,
        ["Condensed"]=1,
    },
    ["ProgValueSource"]=
    {
        ["PlaybackMIBFade"]=14,
        ["SelectedPlaybackUpGoing"]=25,
        ["ProgValue"]=1,
        ["SelectedPlaybackTracked"]=23,
        ["PlaybackUpGoing"]=11,
        ["ProgOther"]=7,
        ["SelectedPlaybackMIBFade"]=28,
        ["ActiveValue"]=4,
        ["SelectedPlaybackMIB"]=27,
        ["PlaybackOtherDownGoing"]=19,
        ["SelectedPlaybackDownGoing"]=26,
        ["SelectedPlaybackBlocked"]=24,
        ["PlaybackOtherTracked"]=16,
        ["ActivePreset"]=5,
        ["PlaybackOtherUpGoing"]=18,
        ["PlaybackDownGoing"]=12,
        ["Playback"]=8,
        ["PlaybackOtherMIBFade"]=21,
        ["SelectedPlayback"]=22,
        ["ProgIntegrated"]=3,
        ["PlaybackTracked"]=9,
        ["PlaybackBlocked"]=10,
        ["ProgPreset"]=2,
        ["PlaybackMIB"]=13,
        ["None"]=0,
        ["ActiveIntegrated"]=6,
        ["PlaybackOtherMIB"]=20,
        ["PlaybackOther"]=15,
        ["PlaybackOtherBlocked"]=17,
    },
    ["RDMCommandClass"]=
    {
        ["SET"]=48,
        ["GET_RESP"]=33,
        ["DISCOVER_RESP"]=17,
        ["GET"]=32,
        ["DISCOVER"]=16,
        ["SET_RESP"]=49,
    },
    ["KeyboardCodes"]=
    {
        ["0"]=48,
        ["1"]=49,
        ["2"]=50,
        ["7"]=55,
        ["8"]=56,
        ["9"]=57,
        ["F7"]=296,
        ["3"]=51,
        ["4"]=52,
        ["5"]=53,
        ["PageUp"]=266,
        ["RightCtrl"]=345,
        ["CapsLock"]=280,
        ["Enter"]=257,
        ["RightBracket"]=93,
        ["Comma"]=44,
        ["Backspace"]=259,
        ["F2"]=291,
        ["LeftAlt"]=342,
        ["O"]=79,
        ["P"]=80,
        ["Q"]=81,
        ["R"]=82,
        ["K"]=75,
        ["L"]=76,
        ["M"]=77,
        ["N"]=78,
        ["PrintScreen"]=283,
        ["X"]=88,
        ["F8"]=297,
        ["Z"]=90,
        ["S"]=83,
        ["T"]=84,
        ["U"]=85,
        ["F4"]=293,
        ["Left"]=263,
        ["A"]=65,
        ["B"]=66,
        ["G"]=71,
        ["H"]=72,
        ["I"]=73,
        ["J"]=74,
        ["C"]=67,
        ["D"]=68,
        ["E"]=69,
        ["F"]=70,
        ["RightAlt"]=346,
        ["kpSubtract"]=333,
        ["Equal"]=61,
        ["F9"]=298,
        ["F5"]=294,
        ["GraveAccent"]=96,
        ["F11"]=300,
        ["Apostrophe"]=39,
        ["RightShift"]=344,
        ["Minus"]=45,
        ["Home"]=268,
        ["kpMultiply"]=332,
        ["kpDivide"]=331,
        ["kpDecimal"]=330,
        ["Escape"]=256,
        ["Delta"]=349,
        ["kpAdd"]=334,
        ["ScrollLock"]=281,
        ["Y"]=89,
        ["World2"]=162,
        ["F10"]=299,
        ["World1"]=161,
        ["LeftBracket"]=91,
        ["W"]=87,
        ["Insert"]=260,
        ["LeftShift"]=340,
        ["V"]=86,
        ["Up"]=265,
        ["Tab"]=258,
        ["F6"]=295,
        ["Space"]=32,
        ["Slash"]=47,
        ["Semicolon"]=59,
        ["Right"]=262,
        ["Period"]=46,
        ["NumLock"]=282,
        ["Backslash"]=92,
        ["End"]=269,
        ["F12"]=301,
        ["Pause"]=284,
        ["None"]=-1,
        ["PageDown"]=267,
        ["Down"]=264,
        ["F3"]=292,
        ["6"]=54,
        ["Delete"]=261,
        ["LeftCtrl"]=341,
        ["F1"]=290,
    },
    ["ImageMirror"]=
    {
        ["None"]=0,
        ["Horizontal"]=1,
        ["Both"]=3,
        ["Vertical"]=2,
    },
    ["AutoInterface"]=
    {
        ["Auto"]=0,
    },
    ["FixtureInvert"]=
    {
        ["0"]=0,
        ["1"]=1,
        ["off"]=0,
        ["Yes"]=1,
        ["No"]=1,
        ["true"]=1,
        ["Inverted"]=1,
        ["<Blank>"]=0,
        ["false"]=0,
        ["on"]=1,
        [""]=0,
    },
    ["BeamType"]=
    {
        ["None"]=2,
        ["Rectangle"]=3,
        ["Wash"]=0,
        ["Spot"]=1,
    },
    ["EmptyAsZero"]=
    {
        [""]=0,
    },
    ["XFadeMode"]=
    {
        ["Split"]=1,
        ["AB"]=0,
    },
    ["LampType"]=
    {
        ["Discharge"]=0,
        ["LED"]=3,
        ["Halogen"]=2,
        ["Tungsten"]=1,
    },
    ["MasterReaction"]=
    {
        ["None"]=0,
        ["Group"]=1,
        ["Grand"]=2,
    },
    ["TimecodeEncoderFunction"]=
    {
        ["Edit"]=0,
    },
    ["SetupType"]=
    {
        ["Edit"]=2,
        ["Live"]=1,
        ["Undefined"]=0,
    },
    ["UseLeftOrRight"]=
    {
        ["Use Other"]=1,
        ["Use My"]=0,
    },
    ["DmxCurveEditTool"]=
    {
        ["Select"]=1,
        ["MovePoint"]=4,
        ["MoveSpline"]=5,
        ["MoveArea"]=0,
        ["Delete"]=3,
        ["AddAbsolute"]=2,
    },
    ["SelectedSelection"]=
    {
        ["1"]=0,
        ["2"]=1,
    },
    ["FunctionMode"]=
    {
        ["WM_Width"]=4,
        ["WM_2D"]=1,
        ["WM_Unknown"]=0,
        ["WM_Phase"]=3,
        ["WM_1D"]=2,
    },
    ["BlinkingButtonMode"]=
    {
        ["Exec"]=1,
        ["Prog"]=0,
    },
    ["ImageSource"]=
    {
        ["Images"]=2,
        ["Gobos"]=0,
        ["Videos"]=3,
        ["Symbols"]=1,
    },
    ["ProgrammingLayer"]=
    {
        ["Decel"]=12,
        ["Accel"]=11,
        ["Delay"]=3,
        ["Phase"]=5,
        ["Width"]=14,
        ["Transition"]=13,
        ["Speed"]=4,
        ["GridPos"]=6,
        ["Relative"]=10,
        ["Measure"]=7,
        ["Fade"]=2,
        ["Absolute"]=9,
    },
    ["TransitionType"]=
    {
        ["Swing-"]=6,
        ["Swing+"]=8,
        ["Fast+"]=4,
        ["Fast"]=3,
        ["Slow+"]=2,
        ["SCurve"]=5,
        ["Swing"]=7,
        ["Slow"]=1,
        ["Linear"]=0,
    },
    ["EncoderRing"]=
    {
        ["Outer"]=1,
        ["Both"]=2,
        ["Inner"]=0,
    },
    ["EmptyAsZeroFID"]=
    {
        ["None"]=0,
        [""]=0,
    },
    ["PlaybackWindowExecFrom"]=
    {
        ["66-70"]=14,
        ["71-75"]=15,
        ["21-25"]=5,
        ["81-85"]=15,
        ["16-20"]=4,
        ["51-55"]=11,
        ["61-65"]=13,
        ["56-60"]=12,
        ["31-35"]=7,
        ["01-05"]=1,
        ["41-45"]=9,
        ["11-15"]=3,
        ["46-50"]=10,
        ["None"]=0,
        ["86-90"]=16,
        ["26-30"]=6,
        ["36-40"]=8,
        ["06-10"]=2,
        ["76-80"]=16,
    },
    ["TimeCodeSource"]=
    {
        ["Smpte"]=1,
        ["Midi"]=0,
    },
    ["SpecialExecutor"]=
    {
        ["SpeedBtn1"]=10,
        ["ProgBtn1"]=40,
        ["XFade2"]=1,
        ["ExecBtn2"]=31,
        ["XFade1"]=0,
        ["ExecBtn1"]=30,
        ["XFade1Btn"]=2,
        ["RateBtn2"]=19,
        ["XFade2Btn"]=3,
        ["RateBtn1"]=9,
        ["None"]=-1,
        ["ExecEncoder"]=29,
        ["ProgEncoder"]=39,
        ["GrandKnob"]=4,
        ["ExecBtn3"]=32,
        ["ProgBtn3"]=42,
        ["ProgBtn2"]=41,
        ["SpeedBtn2"]=20,
    },
    ["ScrollReason"]=
    {
        ["Automatic"]=0,
        ["User"]=1,
    },
    ["Roles"]=
    {
        ["ObjectNoOnly"]=7,
        ["DisplayShort"]=2,
        ["Edit"]=3,
        ["Display"]=1,
        ["Default"]=0,
    },
    ["ScrollParamEntity"]=
    {
        ["Area"]=1,
        ["Item"]=0,
    },
    ["PatchOffset"]=
    {
        ["None"]=-1,
    },
    ["NetworkFilter"]=
    {
        ["Not My Session"]=2,
        ["My Session"]=1,
        ["Wrong Version"]=3,
        ["My Location"]=4,
        ["All"]=0,
    },
    ["PresetReadoutMode"]=
    {
        ["ID+Name+Value"]=5,
        ["Name"]=0,
        ["Value"]=1,
        ["Name+Value"]=2,
        ["ID"]=3,
        ["ID+Name"]=4,
    },
    ["FixtureTypeXYZStatus"]=
    {
        ["Partial"]=1,
        ["No"]=0,
        ["Yes"]=2,
    },
    ["MatricksInvertStyle"]=
    {
        ["Tilt"]=1,
        ["All"]=3,
        ["Pan"]=0,
        ["P+T"]=2,
    },
    ["FixedColumns"]=
    {
        ["Auto"]=-1,
    },
    ["AssignmentButtonFunctions"]=
    {
        ["Black"]=2,
        ["Off"]=8,
        ["Go-"]=4,
        ["Flash"]=1,
        ["<<<"]=6,
        ["Temp"]=13,
        ["LearnSpeed"]=10,
        ["SelFix"]=115,
        ["Top"]=15,
        ["Toggle"]=14,
        ["Goto"]=16,
        ["Swop"]=25,
        ["Rate1"]=11,
        ["Speed1"]=12,
        ["DoubleSpeed"]=27,
        [""]=0,
        ["Go+"]=3,
        [">>>"]=5,
        ["Pause"]=18,
        ["Select"]=24,
        ["Empty"]=0,
        ["Time"]=22,
        ["On"]=7,
        ["Load"]=17,
        ["HalfSpeed"]=26,
        ["Call"]=104,
    },
    ["SpecialCycle"]=
    {
        ["Channel"]=2,
        ["If"]=3,
        ["None"]=0,
        ["Time"]=1,
    },
    ["MatricksInvert"]=
    {
        ["On"]=1,
        [""]=0,
    },
    ["KeyFunctions"]=
    {
        ["Black"]=2,
        ["Off"]=8,
        ["HS"]=26,
        ["Flash"]=1,
        ["DS"]=27,
        ["Speed1"]=12,
        ["Top"]=15,
        ["Temp"]=13,
        ["LearnSpeed"]=10,
        ["Lowlight"]=20,
        ["LearnRate"]=9,
        ["Toggle"]=14,
        ["Time"]=22,
        ["Swop"]=25,
        ["Rate1"]=11,
        ["Highlight"]=19,
        ["Step"]=23,
        ["Solo"]=21,
        ["Record"]=28,
        ["Pause"]=18,
        ["GoBackFast"]=6,
        ["Select"]=24,
        ["Go"]=3,
        ["GoBack"]=4,
        ["On"]=7,
        ["Load"]=17,
        ["Goto"]=16,
        ["GoFast"]=5,
    },
    ["AssignmentProgExecButtonFunctions"]=
    {
        ["Toggle"]=14,
        ["Off"]=8,
        ["On"]=7,
        [""]=0,
        ["Empty"]=0,
    },
    ["SyntaxState"]=
    {
        ["DoSelectFixtures"]=24,
        ["DoDelete"]=21,
        ["DoEdit"]=16,
        ["DoCut"]=17,
        ["DoPatch"]=33,
        ["DoPaste"]=19,
        ["DoNotCare"]=43,
        ["DoSetLanguage"]=7,
        ["DoLocking"]=35,
        ["DoMove"]=20,
        ["DoSet"]=27,
        ["DoEditUpdate"]=15,
        ["DoStore"]=13,
        ["DoDebug"]=39,
        ["DoIncrement"]=25,
        ["SyntaxError"]=-1,
        ["DoList"]=40,
        ["DoSaveShowfile"]=10,
        ["DoLogout"]=6,
        ["DoCrashMe"]=23,
        ["DoExport"]=12,
        ["DoImport"]=11,
        ["DoFader"]=2,
        ["DoValueReadout"]=31,
        ["DoIncrementReset"]=26,
        ["DoUpdate"]=14,
        ["DoType"]=38,
        ["DoAlignTransition"]=30,
        ["DoShutdown"]=4,
        ["DoPark"]=34,
        ["DoAlign"]=29,
        ["DoCopy"]=18,
        ["DoAssign"]=28,
        ["DoChangeDestination"]=3,
        ["DoSetDMXReadout"]=8,
        ["DoCall"]=22,
        ["DoExecute"]=1,
        ["None"]=0,
        ["DoExchange"]=42,
        ["DoLoadShowfile"]=9,
        ["DoSelect"]=36,
        ["DoGrid"]=41,
        ["DoLabel"]=32,
        ["DoLogin"]=5,
        ["DoFix"]=37,
    },
    ["DisplayScales"]=
    {
        ["2.5x"]=41943040,
        ["1.25x"]=20971520,
        ["1.5x"]=25165824,
        ["0.75x"]=12582912,
        ["1x"]=16777216,
        ["2x"]=33554432,
        ["1.75x"]=29360128,
    },
    ["FocusSearchPolicy"]=
    {
        ["Suppress"]=2,
        ["Force"]=1,
        ["Default"]=0,
    },
    ["BuildType"]=
    {
        ["Asan"]=2,
        ["Debug"]=1,
        ["Release"]=0,
    },
    ["PathContentType"]=
    {
        ["System"]=0,
        ["Mixed"]=2,
        ["User"]=1,
    },
    ["GeneratorLimits"]=
    {
        ["14d"]=0,
    },
    ["ConnectionLimitOnPC"]=
    {
        ["1"]=1,
        ["2"]=2,
        ["3"]=3,
        ["4"]=4,
        ["5"]=5,
    },
    ["FocusPriority"]=
    {
        ["TabOnly"]=1,
        ["WantsFocus"]=3,
        ["CanHaveFocus"]=2,
        ["InitialFocus"]=4,
        ["Never"]=0,
    },
    ["UndefinedMax"]=
    {
        ["-"]=32767,
    },
    ["BackupBrowserFilter"]=
    {
        ["Demoshows"]=2,
        ["Backups"]=1,
        ["Shows"]=0,
    },
    ["PhaserTransformations"]=
    {
        ["None"]=0,
        ["MirrorTimeStart"]=3,
        ["MirrorTimeMiddle"]=2,
        ["MirrorValues"]=1,
        ["SquashToOne"]=4,
    },
    ["ColorEncoderFunction"]=
    {
        ["CMY"]=3,
        ["CIE"]=4,
        ["RGB"]=2,
        ["Auto"]=0,
        ["HSB"]=1,
    },
    ["GeometryType"]=
    {
        ["Beam"]=2,
        ["MediaServerMaster"]=9,
        ["FilterGobo"]=4,
        ["FilterShaper"]=6,
        ["None"]=0,
        ["MediaServerLayer"]=7,
        ["Axis"]=1,
        ["FilterColor"]=3,
        ["MediaServerCamera"]=8,
        ["Display"]=10,
        ["FilterBeam"]=5,
    },
    ["ShaderTypes"]=
    {
        ["Fragment"]=35632,
        ["TessCtrl"]=36488,
        ["Vertex"]=35633,
        ["Geometry"]=36313,
        ["TessEval"]=36487,
    },
    ["ShuffleMode"]=
    {
        ["Linked"]=1,
        ["Auto"]=0,
        ["Unlinked"]=2,
    },
    ["TrackEditApplyFor"]=
    {
        ["All Cues/Parts"]=2,
        ["Selected Part(s)"]=0,
        ["All Parts in sel. Cue(s)"]=1,
    },
    ["EncoderLinkValues"]=
    {
        ["Feature"]=1,
        ["Single"]=0,
    },
    ["ShowUserEncoder"]=
    {
        ["Exec"]=1,
        ["Xkeys"]=2,
        ["Default"]=0,
    },
    ["EncoderLink"]=
    {
        ["Single"]=0,
        ["Feature"]=1,
        ["AtFilter"]=2,
    },
    ["PhaserEncoderFunction"]=
    {
        ["Move & Size"]=0,
    },
    ["KeyboardModifier"]=
    {
        ["None"]=-1,
        ["Alt"]=342,
        ["Shift"]=340,
        ["Ctrl"]=341,
    },
    ["ChildrenFillPolicy"]=
    {
        ["ColumnFirst"]=2,
        ["RowFirst"]=1,
        ["Default"]=0,
    },
    ["LayoutSizePolicy"]=
    {
        ["Content"]=2,
        ["Stretch"]=1,
        ["Fixed"]=0,
    },
    ["MatricksShuffleNone"]=
    {
        ["None"]=0,
        ["No Shuffle"]=32768,
    },
    ["RowOrder"]=
    {
        ["Down Up"]=1,
        ["Up Down"]=0,
    },
    ["DMXValueReadoutMode"]=
    {
        ["Decimal"]=1,
        ["Percent"]=0,
        ["Hex"]=2,
    },
    ["Master"]=
    {
        ["Playback14"]=56,
        ["GrandSoundOut"]=24,
        ["GrandLowlight"]=14,
        ["GrandSolo"]=15,
        ["GrandSoundFade"]=26,
        ["Playback30"]=72,
        ["Playback1"]=43,
        ["Playback10"]=52,
        ["DefaultRate"]=5,
        ["Playback37"]=79,
        ["DefaultSolo"]=9,
        ["Playback40"]=82,
        ["DefaultMaster"]=0,
        ["GrandExecTime"]=20,
        ["GrandMaster"]=11,
        ["Playback27"]=69,
        ["Speed10"]=36,
        ["Playback4"]=46,
        ["Playback9"]=51,
        ["Playback24"]=66,
        ["DefaultSpeed"]=6,
        ["Playback11"]=53,
        ["GrandExecXFade"]=21,
        ["Speed1"]=27,
        ["DefaultXFadeA"]=2,
        ["Playback12"]=54,
        ["Playback28"]=70,
        ["Playback25"]=67,
        ["Playback29"]=71,
        ["Playback18"]=60,
        ["Playback5"]=47,
        ["Playback21"]=63,
        ["Speed15"]=41,
        ["DefaultLowlight"]=8,
        ["GrandSpeed"]=17,
        ["Playback45"]=87,
        ["GrandRate"]=16,
        ["Playback34"]=76,
        ["GrandProgramSpeed"]=22,
        ["Playback2"]=44,
        ["Speed4"]=30,
        ["Playback33"]=75,
        ["GrandSoundIn"]=25,
        ["Playback41"]=83,
        ["Playback32"]=74,
        ["DefaultHighlight"]=7,
        ["BPM"]=42,
        ["GrandWorld"]=12,
        ["GrandHighlight"]=13,
        ["Playback17"]=59,
        ["Speed2"]=28,
        ["Speed9"]=35,
        ["Speed6"]=32,
        ["Speed13"]=39,
        ["Playback15"]=57,
        ["Speed7"]=33,
        ["Playback31"]=73,
        ["Playback22"]=64,
        ["DefaultXFade"]=1,
        ["Speed8"]=34,
        ["Speed5"]=31,
        ["DefaultTemp"]=4,
        ["Speed3"]=29,
        ["Speed14"]=40,
        ["Speed12"]=38,
        ["Speed11"]=37,
        ["Playback3"]=45,
        ["GrandProgramXFade"]=19,
        ["Playback38"]=80,
        ["Playback7"]=49,
        ["Playback6"]=48,
        ["Playback50"]=92,
        ["Playback13"]=55,
        ["Playback35"]=77,
        ["Playback20"]=62,
        ["Playback48"]=90,
        ["Playback47"]=89,
        ["Playback46"]=88,
        ["Playback43"]=85,
        ["Playback44"]=86,
        ["GrandProgramTime"]=18,
        ["Playback42"]=84,
        ["Playback39"]=81,
        ["None"]=255,
        ["DefaultTime"]=10,
        ["Playback16"]=58,
        ["Playback49"]=91,
        ["Playback26"]=68,
        ["Playback23"]=65,
        ["Playback19"]=61,
        ["Playback36"]=78,
        ["Playback8"]=50,
        ["DefaultXFadeB"]=3,
    },
    ["RDMParameterCommand"]=
    {
        ["CC_GET"]=1,
        ["CC_GET_SET"]=3,
        ["None"]=0,
        ["CC_SET"]=2,
    },
    ["CellGrouping"]=
    {
        ["SizeDriven"]=4294967295,
    },
    ["MeasurementInterpolation"]=
    {
        ["Log"]=2,
        ["Step"]=1,
        ["Linear"]=0,
    },
    ["DmxCurveModes"]=
    {
        ["Custom"]=2,
        ["MinMax"]=0,
        ["Switch"]=1,
    },
    ["ArtNetBroadcastThreshold"]=
    {
        ["Default(5)"]=5,
    },
    ["ButtonHeight"]=
    {
        ["25"]=25,
        ["45"]=45,
        ["35"]=35,
        ["20"]=20,
        ["30"]=30,
        ["Default"]=50,
        ["60"]=60,
        ["55"]=55,
        ["40"]=40,
        ["50"]=50,
    },
    ["ExecEditorTab"]=
    {
        ["Handle"]=1,
        ["Object"]=0,
        ["Edit"]=3,
        ["Edit Setting"]=2,
        ["LastTab"]=4,
    },
    ["GridContentFilterMode"]=
    {
        ["Or"]=1,
        ["And"]=0,
    },
    ["GestureResult"]=
    {
        ["EventProcessed"]=1,
        ["FinishGesture"]=5,
        ["CancelGesture"]=7,
        ["Ignore"]=0,
        ["FinishGesturePassEvent"]=6,
        ["MayBeGesture"]=2,
        ["TriggerGesturePassEvent"]=4,
        ["TriggerGesture"]=3,
    },
    ["RotationMode"]=
    {
        ["Single"]=0,
        ["Group"]=1,
    },
    ["LayoutElementAlignmentV"]=
    {
        ["Bottom"]=2,
        ["Top"]=1,
        ["Center"]=0,
        ["Above"]=3,
    },
    ["LayoutElementSelectionRelevance"]=
    {
        ["Background"]=1,
        ["Off"]=0,
    },
    ["Fade"]=
    {
        ["None"]=-1,
    },
    ["SpecialValues"]=
    {
        ["Release"]=0,
    },
    ["MatrixWidthAuto"]=
    {
        ["Auto"]=0,
        ["No Width"]=-1,
    },
    ["RDMLampOnMode"]=
    {
        ["LAMP_ON_MODE_AFTER_CAL"]=3,
        ["LAMP_ON_MODE_DMX"]=1,
        ["Manufacturer-Specific Modes"]=128,
        ["LAMP_ON_MODE_ON"]=2,
        ["LAMP_ON_MODE_OFF"]=0,
    },
    ["SpecialValueTypes"]=
    {
        ["None"]=255,
        ["Media"]=1,
        ["Specials"]=2,
        ["Sound"]=0,
    },
    ["VideoFileSource"]=
    {
        ["File"]=0,
        ["NDI"]=1,
    },
    ["GroupMasterMode"]=
    {
        ["Negative"]=2,
        ["Scaling"]=3,
        ["None"]=0,
        ["Positive"]=1,
        ["Additive"]=4,
    },
    ["SoundValues"]=
    {
        ["High"]=3,
        ["InvAll"]=11,
        ["InvMid"]=13,
        ["InvHigh"]=14,
        ["InvBand3"]=17,
        ["Band5"]=8,
        ["InvBand6"]=20,
        ["Band2"]=5,
        ["Mid"]=2,
        ["InvBand2"]=16,
        ["Band6"]=9,
        ["Band4"]=7,
        ["Band7"]=10,
        ["InvBass"]=12,
        ["Bass"]=1,
        ["All"]=0,
        ["InvBand4"]=18,
        ["Band1"]=4,
        ["InvBand5"]=19,
        ["InvBand7"]=21,
        ["Band3"]=6,
        ["InvBand1"]=15,
    },
    ["DmxState"]=
    {
        ["Out"]=1,
        ["RDM"]=5,
        ["In"]=2,
        ["Off"]=0,
    },
    ["AssignmentButtonFunctionsWorld"]=
    {
        ["Black"]=2,
        ["SelFix"]=115,
        [""]=0,
        ["Flash"]=1,
        ["Empty"]=0,
    },
    ["ProgLayerAuto"]=
    {
        ["Decel"]=12,
        ["Accel"]=11,
        ["Delay"]=3,
        ["Output"]=19,
        ["DMX"]=18,
        ["Fade"]=2,
        ["Width"]=14,
        ["Speed"]=4,
        ["Transition"]=13,
        ["Auto"]=-1,
        ["Phase"]=5,
        ["Measure"]=7,
        ["GridPos"]=6,
        ["CueAbs"]=16,
        ["CueRel"]=17,
        ["Relative"]=10,
        ["Absolute"]=9,
    },
    ["ShowFileStatus"]=
    {
        ["DataNegotiationActive"]=4,
        ["NoShow"]=1,
        ["ShowDownloaded"]=3,
        ["ShowDownloading"]=10,
        ["ShowDownloadIgnore"]=12,
        ["Undefined"]=0,
        ["ShowSaving"]=5,
        ["ShowUploading"]=8,
        ["DataNegotiationSlave"]=7,
        ["ShowLoaded"]=2,
        ["ShowMediaDownloading"]=11,
        ["DataNegotiationMaster"]=6,
        ["ShowMediaUploading"]=9,
    },
    ["ColorWheelMode"]=
    {
        ["Prefer Mix Color"]=0,
        ["Color Wheel Only"]=2,
        ["Mix Color Only"]=1,
    },
    ["ExecConfigType"]=
    {
        ["Plugin"]=6,
        ["Group"]=4,
        ["Master"]=10,
        ["World"]=3,
        ["Sound"]=8,
        ["View"]=2,
        ["User"]=7,
        ["SpeedMaster"]=11,
        ["Sequence"]=0,
        ["ScreenConfig"]=9,
        ["Macro"]=1,
        ["PlaybackMaster"]=12,
        ["Preset"]=5,
    },
    ["AssignmentHighlightSoloButtonFunctions"]=
    {
        ["Toggle"]=14,
        ["Temp"]=13,
        ["Off"]=8,
        ["On"]=7,
        [""]=0,
        ["Flash"]=1,
        ["Empty"]=0,
    },
    ["ConnectorType"]=
    {
        ["DB15"]=18,
        ["CEE_32A_2P"]=58,
        ["TBLK"]=1,
        ["XLR4"]=13,
        ["CACOM"]=46,
        ["NAC3FCA"]=68,
        ["HDMI"]=38,
        ["KRN"]=3,
        ["CEE_7_7"]=51,
        ["DVI"]=37,
        ["Socapex_9"]=74,
        ["ST"]=44,
        ["Camlock"]=67,
        ["LCDUP"]=41,
        ["CEE_16A_2P"]=55,
        ["BNC"]=0,
        ["CEE_63A"]=60,
        ["CEE_125A"]=61,
        ["SC"]=43,
        ["EDAC90"]=28,
        ["DIN5"]=25,
        ["Eieland"]=54,
        ["Stagepin"]=79,
        ["DIN3"]=24,
        ["EDAC56"]=27,
        ["DB9"]=17,
        ["DIN56905"]=81,
        ["L15_30"]=78,
        ["Powerlock"]=62,
        ["RCA"]=6,
        ["Powerlock_120A"]=63,
        ["NAC3FCB"]=69,
        ["MDIN5"]=10,
        ["HD15"]=22,
        ["NL4"]=45,
        ["HAN_16"]=75,
        ["IEC_60320_C13_14"]=52,
        ["PowerCONTRUE1TOP"]=71,
        ["PowerconTRUE1"]=70,
        ["IEE488"]=32,
        ["EDAC120"]=29,
        ["RJ11"]=16,
        ["DB37"]=20,
        ["F_CON"]=49,
        ["USB"]=47,
        ["CEE_32A_2P_110"]=59,
        ["CENT50"]=33,
        ["L6_20"]=77,
        ["STJ"]=4,
        ["XLR3"]=12,
        ["MSTJ"]=5,
        ["TL_ST"]=40,
        ["Powerlock_400A"]=64,
        ["TAG"]=2,
        ["Powerlock_660A"]=65,
        ["RJ45"]=15,
        ["HUBBEL_6_4"]=80,
        ["Socapex_7"]=73,
        ["CENT36"]=34,
        ["N_CON"]=48,
        ["PS2"]=39,
        ["SVIDEO"]=8,
        ["Edison"]=53,
        ["MDIN6"]=11,
        ["XLR5"]=14,
        ["DB25"]=19,
        ["MDIN4"]=9,
        ["SCDUP"]=42,
        ["SCART"]=7,
        ["Powerlock_800A"]=66,
        ["Socapex_16"]=72,
        ["DB50"]=21,
        ["HD25"]=23,
        ["DisplayPort"]=36,
        ["CENT24"]=35,
        ["HAN_4"]=76,
        ["EDAC20"]=26,
        ["CEE_16A_2P_110"]=56,
        ["IEC_60320_C7_C8"]=50,
        ["CEE_32A"]=57,
        ["SCSI68"]=31,
        ["DL96"]=30,
    },
    ["ColorPickerWindowMode"]=
    {
        ["CIE"]=0,
        ["Fader"]=2,
        ["HSB"]=1,
        ["Book"]=3,
    },
    ["AssignType"]=
    {
        ["Plugin"]=3,
        ["MAtricks"]=13,
        ["World"]=6,
        ["View"]=1,
        ["Video"]=14,
        ["Master"]=8,
        ["Fixture"]=12,
        ["Sound"]=9,
        ["User"]=10,
        ["Sequence"]=7,
        ["Group"]=5,
        ["Macro"]=2,
        ["ScreenConfig"]=11,
        ["Menu"]=4,
        ["Empty"]=0,
        ["Preset"]=15,
    },
    ["TimeCursorScrollMode"]=
    {
        ["Page"]=0,
        ["Center"]=1,
    },
    ["PropertyRadioButtonListEnabledItems"]=
    {
        ["AllEnabled"]=4294967295,
    },
    ["InvalidFootprint"]=
    {
        ["?"]=-1,
    },
    ["ScrollType"]=
    {
        ["Vertical"]=0,
        ["Horizontal"]=1,
    },
    ["CueCopyDstMode"]=
    {
        ["Overwrite"]=0,
        ["Merge"]=1,
    },
    ["TimecodeTool"]=
    {
        ["Operate"]=0,
        ["Add"]=2,
        ["Move"]=4,
        ["Delete"]=3,
        ["Resize"]=5,
        ["Select"]=1,
    },
    ["WheelMode"]=
    {
        ["Prop.+"]=2,
        ["Prop.-"]=3,
        ["Incremental"]=1,
        ["Additive"]=0,
    },
    ["ValueReadoutModeDefault"]=
    {
        ["Decimal16"]=4,
        ["Percent"]=0,
        ["Hex16"]=7,
        ["Decimal8"]=3,
        ["Physical"]=2,
        ["Hex8"]=6,
        ["PercentFine"]=1,
        ["Decimal24"]=5,
        ["Hex24"]=8,
        ["Default"]=-1,
    },
    ["RealtimeCmdType"]=
    {
        ["TimeCode"]=4,
        ["Key"]=0,
        ["Midi"]=7,
        ["Fader"]=1,
        ["SoundToLight"]=5,
        ["DCRemote"]=6,
        ["Encoder"]=2,
        ["OwO"]=3,
    },
    ["CueCopyDst"]=
    {
        ["Force Release"]=1,
        ["Force Default"]=2,
        ["Keep"]=0,
    },
    ["SheetMode"]=
    {
        ["Channel"]=1,
        ["Fixture"]=0,
    },
    ["CueCopySrc"]=
    {
        ["Look"]=2,
        ["Status"]=1,
        ["Content"]=0,
    },
    ["TimeDefault"]=
    {
        ["Default"]=9223372036854775807,
    },
    ["SequenceLinkType"]=
    {
        ["LastGo"]=2,
        ["Selected"]=1,
        ["Fixed"]=0,
    },
    ["AttriebuteEncoderResolution"]=
    {
        ["Fine"]=1677721,
        ["Native"]=-16777216,
        ["Coarse"]=16777216,
        ["Increment"]=167772,
    },
    ["CuePartMode"]=
    {
        ["Default"]=4294967295,
    },
    ["TimeDisplayFormat"]=
    {
        ["251h23m45"]=1,
        ["10.11:23:45"]=2,
        ["10d11h23m45"]=0,
        ["251:23:45"]=3,
    },
    ["PresetModeDefault"]=
    {
        ["Selective"]=1,
        ["ForceGlobal"]=5,
        ["Global"]=2,
        ["Auto"]=0,
        ["Universal"]=3,
    },
    ["ChannelFilterMode"]=
    {
        ["All For Selected"]=3,
        ["All"]=5,
        ["Active For Selected"]=2,
        ["Active"]=4,
    },
    ["SpeedReadoutMode"]=
    {
        ["BPM"]=1,
        ["Hertz"]=0,
        ["Seconds"]=2,
    },
    ["StoremodeRadio"]=
    {
        ["Overwrite"]=1,
        ["Release"]=4,
        ["Merge"]=2,
        ["Remove"]=3,
        ["Ask"]=-1,
    },
    ["WeekDay"]=
    {
        ["Wednesday"]=2,
        ["Tuesday"]=1,
        ["Thursday"]=3,
        ["Monday"]=0,
        ["Saturday"]=5,
        ["Friday"]=4,
        ["Sunday"]=6,
    },
    ["CookMode"]=
    {
        ["Overwrite"]=1,
        ["Remove"]=3,
        ["Merge"]=2,
        ["Abort"]=0,
        ["Ask"]=-1,
    },
    ["StoreMode"]=
    {
        ["Overwrite"]=1,
        ["Release"]=4,
        ["Merge"]=2,
        ["CreateSecondCue"]=5,
        ["Remove"]=3,
        ["Abort"]=0,
        ["Ask"]=-1,
    },
    ["TimecodeSelectLastEventMode"]=
    {
        ["Track"]=1,
        ["All"]=2,
        ["Off"]=0,
    },
    ["WingID"]=
    {
        ["Wing6"]=6,
        ["Wing4"]=4,
        ["Wing3"]=3,
        ["Wing5"]=5,
        ["Wing2"]=2,
        ["Wing1"]=1,
    },
    ["PropertyRadioButtonListSetType"]=
    {
        ["Property"]=2,
        ["Set"]=0,
        ["Direct"]=1,
    },
    ["TCTextMode"]=
    {
        ["Tracks"]=1,
        ["All"]=0,
        ["Selected"]=2,
        ["Markers"]=3,
    },
    ["AssignmentButtonFunctionsScreenConfig"]=
    {
        [""]=0,
        ["Empty"]=0,
        ["Call"]=104,
    },
    ["AssignmentButtonFunctionsSoundFile"]=
    {
        ["Toggle"]=14,
        ["Empty"]=0,
        ["Off"]=8,
        ["On"]=7,
        [""]=0,
        ["Go+"]=3,
        ["Pause"]=18,
    },
    ["BeamMode"]=
    {
        ["No Beam"]=0,
        ["High"]=3,
        ["Standard"]=2,
        ["High Fancy"]=4,
        ["Line"]=1,
    },
    ["HostSubType"]=
    {
        ["Compact"]=24,
        ["Wing-MFE"]=92,
        ["IONodeDIN"]=76,
        ["Undefined"]=0,
        ["Visualizer"]=74,
        ["onPC4Port"]=61,
        ["LightCRV"]=23,
        ["Node2PortDIN"]=67,
        ["onPC8Port"]=62,
        ["Wing-Extension"]=94,
        ["Node4Port"]=64,
        ["Node2Port"]=63,
        ["CompactXT"]=25,
        ["Node8Port"]=65,
        ["Recovery"]=1,
        ["Wing-onPCXT"]=95,
        ["IONode"]=75,
        ["onPC4PortDIN"]=71,
        ["Large"]=41,
        ["RPU"]=26,
        ["Wing-MM"]=90,
        ["Node8PortDIN"]=69,
        ["Node4PortDIN"]=68,
        ["onPCRackUnit"]=97,
        ["Vis+Dongle"]=73,
        ["onPC8PortDIN"]=72,
        ["Light"]=22,
        ["Medium"]=40,
        ["FullSize"]=20,
        ["Node2PortWM"]=66,
        ["XLarge"]=42,
        ["Wing-MFX"]=91,
        ["Wing-onPCFader"]=96,
        ["onPC2Port"]=60,
        ["onPC2PortDIN"]=70,
        ["FullSizeCRV"]=21,
        ["Wing-onPC"]=93,
    },
    ["AssignmentButtonFunctionsUser"]=
    {
        [""]=0,
        ["Empty"]=0,
        ["Login"]=68,
    },
    ["AssignmentButtonFunctionsPreset"]=
    {
        ["Black"]=2,
        ["At"]=44,
        ["Off"]=8,
        ["Flash"]=1,
        ["Speed1"]=12,
        ["Temp"]=13,
        ["LearnSpeed"]=10,
        ["SelFix"]=115,
        ["Rate1"]=11,
        [""]=0,
        ["Empty"]=0,
        ["Pause"]=18,
        ["Toggle"]=14,
        ["DoubleSpeed"]=27,
        ["Swop"]=25,
        ["Time"]=22,
        ["On"]=7,
        ["HalfSpeed"]=26,
        [">>>"]=5,
        ["Go+"]=3,
    },
    ["AttriebuteEncoderResolutionDefault"]=
    {
        ["Native"]=-16777216,
        ["Fine"]=1677721,
        ["Coarse"]=16777216,
        ["Increment"]=167772,
        ["Default"]=0,
    },
    ["CommandWingBarDisplayMode"]=
    {
        ["Hardware Buttons"]=1,
        ["Labels"]=0,
    },
    ["DisplayIndex"]=
    {
        ["None"]=4294967295,
    },
    ["TrackLayerAuto"]=
    {
        ["Decel"]=12,
        ["Accel"]=11,
        ["Delay"]=3,
        ["Auto"]=-1,
        ["Width"]=14,
        ["Transition"]=13,
        ["Speed"]=4,
        ["Relative"]=10,
        ["GridPos"]=6,
        ["Phase"]=5,
        ["Measure"]=7,
        ["Fade"]=2,
        ["Absolute"]=9,
    },
    ["PhaserMode1D"]=
    {
        ["Transition"]=1,
        ["Value"]=0,
    },
    ["Patched"]=
    {
        [""]=-1,
    },
    ["AssignmentButtonFunctionsView"]=
    {
        [""]=0,
        ["Empty"]=0,
        ["Go+"]=3,
    },
    ["RecordGo"]=
    {
        ["as Goto (Status)"]=1,
        ["as Go"]=0,
    },
    ["SyntaxResult"]=
    {
        ["SyntaxError"]=-1,
        ["ExecuteAfter"]=2,
        ["Erase"]=6,
        ["Ignore"]=5,
        ["AbortBefore"]=4,
        ["SyntaxOk"]=0,
        ["Execute"]=3,
        ["ExecuteBefore"]=1,
    },
    ["TrueFalse"]=
    {
        ["True"]=1,
        ["False"]=0,
    },
    ["AssignmentButtonFunctionsGroup"]=
    {
        ["Black"]=2,
        ["SelFix"]=115,
        [""]=0,
        ["Flash"]=1,
        ["Empty"]=0,
    },
    ["SelectedEnvironment"]=
    {
        ["Preview"]=1,
        ["Normal"]=0,
    },
    ["FixtureIdEnum"]=
    {
        ["None"]=0,
    },
    ["ConnectorGender"]=
    {
        ["Female"]=1,
        ["Universal"]=0,
        ["Male"]=-1,
    },
    ["AssignmentSoundMasterButtonFunctions"]=
    {
        ["Toggle"]=14,
        ["Off"]=8,
        ["On"]=7,
        [""]=0,
        ["Empty"]=0,
    },
    ["FixtureSheetFixedColumnType"]=
    {
        ["SelectedInverted"]=2,
        ["SelectedEdge"]=6,
        ["MainMultiPatchSelected"]=5,
        ["Selected"]=1,
        ["PartlySelected"]=3,
        [""]=0,
        ["InvalidGridPosition"]=4,
    },
    ["ValueReadoutMode"]=
    {
        ["Decimal16"]=4,
        ["Percent"]=0,
        ["Hex24"]=8,
        ["Decimal8"]=3,
        ["Hex8"]=6,
        ["Physical"]=2,
        ["Decimal24"]=5,
        ["Hex16"]=7,
        ["PercentFine"]=1,
    },
    ["WhiteListPacketNamesBefore_1_7"]=
    {
        ["updater_x64"]=1166,
        ["console"]=1166,
        ["utils"]=1166,
        ["gma2_manuals"]=1166,
        ["xport_compat"]=1982,
        ["xport"]=1982,
        ["gma2_ffmpeg"]=1166,
        ["viz_key"]=1182,
        ["system_arm"]=1982,
        ["worldserver"]=1166,
        ["wing"]=1982,
        ["web_daemon"]=1166,
        ["updater_arm"]=1982,
        ["npu_compat"]=1166,
        ["gdtf_mvr_addon"]=1166,
        ["resource"]=1982,
        ["onpc_mac"]=1166,
        ["unittest"]=1166,
        ["manuals"]=1166,
        ["system_x64"]=1166,
        ["gma2_compat"]=1166,
        ["pu"]=1166,
        ["resource_usb"]=1182,
        ["third_party"]=1166,
        ["onpc_windows"]=1166,
        ["demoshows"]=1166,
        ["bootloader_x64"]=1166,
        ["gma2_resource"]=1166,
        ["ndi_addon"]=1166,
        ["fixtures"]=1166,
        ["luatest"]=1166,
    },
    ["Config"]=
    {
        ["MaxElementsPerLayout"]=10000,
        ["MaxMultiPatchPerFixture"]=1024,
    },
    ["AssignmentTimecodeFunctions"]=
    {
        ["Black"]=2,
        ["Off"]=8,
        ["Go-"]=4,
        ["Flash"]=1,
        ["<<<"]=6,
        ["Temp"]=13,
        ["LearnSpeed"]=10,
        ["SelFix"]=115,
        ["Top"]=15,
        ["Toggle"]=14,
        ["Goto"]=16,
        ["Swop"]=25,
        ["Rate1"]=11,
        ["Speed1"]=12,
        ["DoubleSpeed"]=27,
        [""]=0,
        ["Go+"]=3,
        [">>>"]=5,
        ["Pause"]=18,
        ["Select"]=24,
        ["Empty"]=0,
        ["Time"]=22,
        ["On"]=7,
        ["Load"]=17,
        ["HalfSpeed"]=26,
        ["Call"]=104,
    },
    ["AssignmentPlaybackMasterButtonFunctions"]=
    {
        ["Toggle"]=14,
        ["Black"]=2,
        ["Go+"]=3,
        ["Off"]=8,
        ["On"]=7,
        [""]=0,
        ["Flash"]=1,
        ["Empty"]=0,
    },
    ["DmxTesterAddressMode"]=
    {
        ["Abs"]=1,
        ["Uni"]=0,
    },
    ["AssignmentGrandMasterButtonFunctions"]=
    {
        ["Flash"]=1,
        ["Black"]=2,
        ["Empty"]=0,
        [""]=0,
    },
    ["MibModeSequence"]=
    {
        ["Early"]=3,
        ["Late"]=5,
        ["UponGo"]=4,
        ["None"]=1,
    },
    ["DisplayNone"]=
    {
        ["None"]=4294967295,
    },
    ["None"]=
    {
        ["None"]=4294967295,
        [""]=4294967295,
    },
    ["MatricksIndexNone"]=
    {
        ["No XYZ"]=-2,
        ["None"]=-1,
    },
    ["PhaserEditTool"]=
    {
        ["AddRelative"]=3,
        ["MovePoint"]=4,
        ["ChangeRotation"]=7,
        ["ChangeWidth"]=9,
        ["MoveArea"]=0,
        ["AddAbsolute"]=2,
        ["Select"]=1,
        ["MoveSpline"]=5,
        ["SelectForm"]=10,
        ["ChangeSpeed"]=11,
        ["ChangePhase"]=8,
        ["ChangeSize"]=6,
    },
    ["BackdropPatchType"]=
    {
        ["Frame"]=1,
        ["ThreeVertical"]=2,
        ["Nine"]=0,
        ["ThreeHorizontal"]=3,
    },
    ["LayoutGridStyle"]=
    {
        ["Off"]=0,
        ["Dots"]=2,
        ["Lines"]=1,
    },
    ["DisplayTypePreference"]=
    {
        ["BigLongSmall"]=7,
        ["BigOrLong"]=4,
        ["Big"]=1,
        ["Small"]=3,
        ["LongOrSmall"]=6,
        ["Long"]=2,
        ["BigOrSmall"]=5,
        ["Any"]=0,
    },
    ["AlignMath"]=
    {
        ["Numerical"]=1,
        ["Geometric"]=0,
    },
    ["AssignmentFaderFunctionsNone"]=
    {
        ["Empty"]=0,
        [""]=0,
    },
    ["AssignmentFaderFunctionsMasterOnly"]=
    {
        [""]=0,
        ["Empty"]=0,
        ["Master"]=31,
    },
    ["AssignmentSpeedButtonFunctions"]=
    {
        ["DoubleSpeed"]=27,
        ["Off"]=8,
        ["HalfSpeed"]=26,
        ["Flash"]=1,
        ["Pause"]=18,
        ["Toggle"]=14,
        ["Speed1"]=12,
        ["On"]=7,
        ["Time"]=22,
        ["LearnSpeed"]=10,
        ["Black"]=2,
        ["Empty"]=0,
        [""]=0,
    },
    ["SpeedMaster"]=
    {
        ["Speed7"]=6,
        ["Speed4"]=3,
        ["Speed1"]=0,
        ["Speed11"]=10,
        ["Speed6"]=5,
        ["Speed9"]=8,
        ["BPM"]=15,
        ["Speed14"]=13,
        ["Speed2"]=1,
        ["Speed3"]=2,
        ["None"]=255,
        ["Speed12"]=11,
        ["Speed15"]=14,
        ["Speed10"]=9,
        ["Speed5"]=4,
        ["Speed8"]=7,
        ["Speed13"]=12,
    },
    ["RDMPowerStateDefines"]=
    {
        ["POWER_STATE_NORMAL"]=255,
        ["POWER_STATE_STANDBY"]=2,
        ["POWER_STATE_SHUTDOWN"]=1,
        ["POWER_STATE_FULL_OFF"]=0,
    },
    ["DriveType"]=
    {
        ["OldVersion"]=3,
        ["Internal"]=1,
        ["Removeable"]=2,
        ["Invalid"]=0,
        ["RemoteDrive"]=4,
    },
    ["TCDuration"]=
    {
        ["To End"]=0,
    },
    ["PluginPlacement"]=
    {
        ["Single"]=0,
        ["ForceMulti"]=2,
        ["Multi"]=1,
    },
    ["ECRec"]=
    {
        ["off"]=0,
        ["0"]=0,
        ["1"]=1,
        ["false"]=0,
        ["on"]=1,
        ["No"]=0,
        ["true"]=1,
        [""]=1,
    },
    ["PlaybacksToShow"]=
    {
        ["Sequences"]=0,
        ["Presets"]=3,
        ["Timecodes"]=2,
        ["Macros"]=1,
    },
    ["FocusReason"]=
    {
        ["None"]=0,
        ["ViewChanged"]=2,
        ["UserClickTitle"]=4,
        ["ViewChangedLimited"]=1,
        ["Lua"]=6,
        ["UserKeyTab"]=5,
        ["RestoreAfterModal"]=7,
        ["UserClick"]=3,
    },
    ["WhiteListPacketNames"]=
    {
        ["updater_x64"]=1166,
        ["console"]=1158,
        ["force_all"]=1982,
        ["fixtures"]=1158,
        ["xport"]=1974,
        ["updater_arm"]=1974,
        ["resource"]=1982,
        ["manuals"]=1158,
        ["worldserver"]=1158,
        ["gma2_compat"]=1158,
        ["third_party"]=1166,
        ["onpc_windows"]=1158,
        ["xport_compat"]=1974,
        ["ndi_addon"]=1158,
        ["unittest"]=1166,
        ["utils"]=1166,
        ["gma2_manuals"]=1158,
        ["viz_key"]=1174,
        ["system_arm"]=1974,
        ["npu_compat"]=1166,
        ["gdtf_mvr_addon"]=1158,
        ["onpc_mac"]=1158,
        ["force_x64"]=1166,
        ["web_daemon"]=1158,
        ["resource_usb"]=1174,
        ["force_arm"]=1974,
        ["gma2_resource"]=1166,
        ["bootloader_x64"]=1166,
        ["gma2_ffmpeg"]=1166,
        ["wing"]=1974,
        ["demoshows"]=1158,
        ["pu"]=1166,
        ["system_x64"]=1166,
        ["luatest"]=1166,
    },
    ["TimecodeSlotShort"]=
    {
        ["TCSlot 1"]=0,
        ["TCSlot 2"]=1,
        ["TCSlot 8"]=7,
        ["TCSlot 3"]=2,
        ["TCSlot 5"]=4,
        ["TCSlot 7"]=6,
        ["TCSlot 6"]=5,
        ["TCSlot 4"]=3,
    },
    ["DisplayType"]=
    {
        ["Long"]=1,
        ["Big"]=0,
        ["Small"]=2,
    },
    ["ColorSample"]=
    {
        ["CES64"]=63,
        ["CES09"]=8,
        ["CES18"]=17,
        ["CES48"]=47,
        ["CES69"]=68,
        ["CES12"]=11,
        ["CES59"]=58,
        ["CES95"]=94,
        ["CES61"]=60,
        ["CES52"]=51,
        ["CES07"]=6,
        ["CES96"]=95,
        ["CES25"]=24,
        ["CES68"]=67,
        ["CES47"]=46,
        ["CES81"]=80,
        ["CES42"]=41,
        ["CES02"]=1,
        ["CES49"]=48,
        ["CES55"]=54,
        ["CES92"]=91,
        ["CES13"]=12,
        ["CES08"]=7,
        ["CES51"]=50,
        ["CES98"]=97,
        ["CES72"]=71,
        ["CES23"]=22,
        ["CES76"]=75,
        ["CES58"]=57,
        ["CES34"]=33,
        ["CES54"]=53,
        ["CES56"]=55,
        ["CES57"]=56,
        ["CES19"]=18,
        ["CES44"]=43,
        ["CES94"]=93,
        ["CES41"]=40,
        ["CES33"]=32,
        ["CES99"]=98,
        ["CES97"]=96,
        ["CES93"]=92,
        ["CES91"]=90,
        ["CES17"]=16,
        ["CES90"]=89,
        ["CES80"]=79,
        ["CES37"]=36,
        ["CES66"]=65,
        ["CES89"]=88,
        ["CES86"]=85,
        ["CES88"]=87,
        ["CES87"]=86,
        ["CES85"]=84,
        ["CES84"]=83,
        ["CES83"]=82,
        ["CES28"]=27,
        ["CES36"]=35,
        ["CES06"]=5,
        ["CES62"]=61,
        ["CES79"]=78,
        ["CES24"]=23,
        ["CES78"]=77,
        ["CES29"]=28,
        ["CES63"]=62,
        ["CES77"]=76,
        ["CES75"]=74,
        ["CES15"]=14,
        ["CES74"]=73,
        ["CES73"]=72,
        ["CES71"]=70,
        ["CES01"]=0,
        ["CES70"]=69,
        ["CES20"]=19,
        ["CES03"]=2,
        ["CES14"]=13,
        ["CES11"]=10,
        ["CES67"]=66,
        ["CES27"]=26,
        ["CES82"]=81,
        ["CES21"]=20,
        ["CES31"]=30,
        ["CES22"]=21,
        ["CES45"]=44,
        ["CES30"]=29,
        ["CES35"]=34,
        ["CES32"]=31,
        ["CES26"]=25,
        ["CES40"]=39,
        ["CES53"]=52,
        ["CES38"]=37,
        ["CES46"]=45,
        ["CES43"]=42,
        ["CES04"]=3,
        ["CES05"]=4,
        ["CES16"]=15,
        ["CES39"]=38,
        ["CES50"]=49,
        ["CES65"]=64,
        ["CES60"]=59,
        ["CES10"]=9,
    },
    ["TimecodeSlotOff"]=
    {
        ["Off"]=255,
    },
    ["ScrollItemPlacementType"]=
    {
        ["End"]=2,
        ["Auto"]=0,
        ["Begin"]=1,
    },
    ["LayoutType"]=
    {
        ["Grid"]=1,
        ["Circle"]=2,
        ["Line"]=0,
        ["Camera"]=3,
    },
    ["ArtNetDataMode"]=
    {
        ["Broadcast"]=0,
        ["Input"]=3,
        ["Auto"]=2,
        ["Unicast"]=1,
    },
    ["ConnectionLimitConsole"]=
    {
        ["1"]=1,
        ["2"]=2,
    },
    ["MatricksTabs"]=
    {
        ["Shuffle"]=3,
        ["X"]=0,
        ["Y"]=1,
        ["Z"]=2,
    },
    ["ContentSheetCueMode"]=
    {
        ["Manual"]=3,
        ["Current Cue"]=0,
        ["Previous Cue"]=1,
        ["Next Cue"]=2,
    },
    ["VerifyResult"]=
    {
        ["Valid"]=1,
        ["NotVerified"]=0,
        ["Expired"]=2,
    },
    ["EncoderFunctionLayoutView"]=
    {
        ["Arrangement"]=1,
        ["Position"]=0,
    },
    ["SelectionMode"]=
    {
        ["Linearize"]=1,
        ["2D Grid"]=0,
    },
    ["MibPreferenceLevel"]=
    {
        ["Bad"]=25,
        ["Worst"]=1,
        ["Never(0)"]=0,
        ["Bad(25)"]=25,
        ["Best"]=100,
        ["Worst(1)"]=1,
        ["Normal(50)"]=50,
        ["Good(75)"]=75,
        ["Good"]=75,
        ["Normal"]=50,
        ["Best(100)"]=100,
        ["Never"]=0,
    },
    ["ColorMixMode"]=
    {
        ["Standard"]=3,
        ["Fixture Type"]=0,
        ["Rec.2020"]=2,
        ["Rec.709"]=1,
    },
    ["DmxPrio"]=
    {
        ["LTP"]=32,
        ["High"]=48,
        ["HTP"]=80,
        ["Prog"]=112,
        ["Swap"]=96,
        ["Highest"]=64,
        ["Super"]=128,
        ["Lowest"]=0,
        ["Low"]=16,
    },
    ["TimeDisplayClockFormat"]=
    {
        ["10.11:23:45"]=3,
        ["251:23:45"]=4,
        ["<Default>"]=0,
    },
    ["AssignmentButtonFunctionsSequence"]=
    {
        ["Black"]=2,
        ["Off"]=8,
        ["Go-"]=4,
        ["Flash"]=1,
        ["<<<"]=6,
        ["Temp"]=13,
        ["LearnSpeed"]=10,
        ["SelFix"]=115,
        ["Top"]=15,
        ["Toggle"]=14,
        ["Goto"]=16,
        ["Rate1"]=11,
        ["Swop"]=25,
        ["Speed1"]=12,
        [""]=0,
        ["Go+"]=3,
        ["Pause"]=18,
        ["DoubleSpeed"]=27,
        ["Select"]=24,
        ["HalfSpeed"]=26,
        ["Time"]=22,
        ["On"]=7,
        ["Load"]=17,
        ["Empty"]=0,
        [">>>"]=5,
    },
    ["FaderEnable"]=
    {
        ["AlwaysOn"]=1,
        ["Toggle"]=0,
        ["Disabled"]=2,
    },
    ["PhysicalUnit"]=
    {
        ["Acceleration"]=17,
        ["Current"]=10,
        ["Frequency"]=9,
        ["ColorComponent"]=21,
        ["Temperature"]=5,
        ["LuminousIntensity"]=6,
        ["Angle"]=7,
        ["Volume"]=15,
        ["Force"]=8,
        ["Area"]=14,
        ["Length"]=2,
        ["WaveLength"]=20,
        ["AngularSpeed"]=18,
        ["Voltage"]=11,
        ["Power"]=12,
        ["Time"]=4,
        ["Speed"]=16,
        ["AngularAccc"]=19,
        ["Mass"]=3,
        ["None"]=0,
        ["Energy"]=13,
        ["Percent"]=1,
    },
    ["PrettyRDMSensorUnitPrefix"]=
    {
        ["P"]=23,
        ["k"]=19,
        ["m"]=3,
        ["n"]=5,
        ["Y"]=26,
        ["Z"]=25,
        ["T"]=22,
        ["a"]=8,
        ["z"]=9,
        ["y"]=10,
        [""]=0,
        ["p"]=6,
        ["M"]=20,
        ["G"]=21,
        ["h"]=18,
        ["da"]=17,
        ["micro"]=4,
        ["c"]=2,
        ["d"]=1,
        ["E"]=24,
        ["f"]=7,
    },
    ["PathType"]=
    {
        ["GrandMA2Library"]=40,
        ["GoboImageCache"]=28,
        ["UserPatch"]=96,
        ["Backupfiles"]=18,
        ["MatricksLibrary"]=37,
        ["ImageLibrary"]=52,
        ["UserMaterials"]=79,
        ["UserViews"]=74,
        ["CustomPluginLibrary"]=84,
        ["UserExecConfigs"]=86,
        ["UserSequences"]=91,
        ["GoboImageLibrary"]=27,
        ["UserSymbols"]=53,
        ["Language"]=22,
        ["MvrLibrary"]=46,
        ["UserMacros"]=87,
        ["UserInOut"]=57,
        ["UserFixtureTypeResources"]=67,
        ["InvalidCrashLogs"]=16,
        ["GrandMA3Library"]=41,
        ["UserFixtures"]=66,
        ["Software"]=44,
        ["UserPresets"]=89,
        ["Temp"]=12,
        ["UserCertificates"]=81,
        ["UserAgendas"]=80,
        ["Resource"]=20,
        ["UserUsers"]=72,
        ["UserFilters"]=93,
        ["PresetLibrary"]=38,
        ["UserCameras"]=76,
        ["MenuLibrary"]=34,
        ["VersionDir"]=4,
        ["MaterialLibrary"]=100,
        ["Shared"]=9,
        ["UpdateDir"]=6,
        ["WebResource"]=21,
        ["UserColorThemes"]=82,
        ["CrashLog"]=14,
        ["DemoShowfiles"]=19,
        ["VizLibrary"]=45,
        ["UserGobos"]=68,
        ["ViewButtonLibrary"]=75,
        ["UserRenderQuality"]=78,
        ["BinaryDir"]=0,
        ["Data"]=8,
        ["ScribbleLibrary"]=54,
        ["UserLayouts"]=85,
        ["UserOutputConfig"]=64,
        ["ExternalPackages"]=2,
        ["Fonts"]=26,
        ["UserDataPools"]=83,
        ["Library"]=48,
        ["Usb"]=11,
        ["VideoLibrary"]=51,
        ["UserRemotesMIDI"]=63,
        ["UserRemotesDMX"]=62,
        ["UserRemotesDC"]=61,
        ["SymbolImageLibrary"]=30,
        ["UserProfiles"]=73,
        ["UserScreenConfigurations"]=77,
        ["UserMvr"]=71,
        ["SACN"]=59,
        ["UploadedCrashLogs"]=15,
        ["KeyboardShortcuts"]=43,
        ["AgendaLibrary"]=32,
        ["UserDmxCurves"]=98,
        ["UserMeshImages"]=70,
        ["GelLibrary"]=31,
        ["AddonLibrary"]=33,
        ["UserMedia"]=49,
        ["UserMatricks"]=88,
        ["UserStages"]=97,
        ["UserGroups"]=90,
        ["ExternalRoot"]=1,
        ["AppearanceLibrary"]=55,
        ["ColorTheme"]=23,
        ["MADir"]=3,
        ["UserExecutors"]=94,
        ["DmxCurvesLibrary"]=47,
        ["Undo"]=13,
        ["ArtNet"]=60,
        ["SoundLibrary"]=50,
        ["UserWorlds"]=92,
        ["WebDaemon"]=7,
        ["OSC"]=58,
        ["Mesh"]=29,
        ["Config"]=10,
        ["InstallationPackages"]=5,
        ["RenderQualityLibrary"]=99,
        ["NetworkKeys"]=56,
        ["Textures"]=25,
        ["FixtureLibrary"]=39,
        ["PluginLibrary"]=35,
        ["UserMeshes"]=69,
        ["UserTimecodes"]=95,
        ["Keyboards"]=42,
        ["Showfiles"]=17,
        ["UserDeviceConfig"]=65,
        ["MacroLibrary"]=36,
        ["Shaders"]=24,
    },
    ["AlignmentH"]=
    {
        ["Left"]=1,
        ["Right"]=2,
        ["Center"]=0,
    },
    ["LicenseRequest"]=
    {
        ["On"]=1,
        ["Auto"]=0,
        ["Off"]=2,
    },
    ["PatchType"]=
    {
        ["Fine"]=2,
        [""]=0,
        ["Coarse"]=1,
        ["Ultra"]=3,
    },
    ["ResolutionLimit"]=
    {
        ["720p"]=2,
        ["Unlimited"]=0,
        ["480p"]=1,
        ["1080p"]=3,
    },
    ["DatumMode"]=
    {
        ["Full"]=0,
        ["Date"]=1,
        ["Time"]=2,
    },
    ["ColumnOrder"]=
    {
        ["Left Right"]=0,
        ["Right Left"]=1,
    },
    ["OffCueTrigger"]=
    {
        ["BPM"]=4,
        ["Time"]=1,
        ["No Trigger"]=5,
        ["Go"]=0,
        [""]=5,
        ["Follow"]=2,
        ["Sound"]=3,
    },
    ["PresetIsPlayback"]=
    {
        ["Auto"]=0,
        ["On"]=1,
    },
    ["MonthShort"]=
    {
        ["Dec"]=11,
        ["Feb"]=1,
        ["Sep"]=8,
        ["Oct"]=9,
        ["Aug"]=7,
        ["May"]=4,
        ["Nov"]=10,
        ["Apr"]=3,
        ["Jan"]=0,
        ["Mar"]=2,
        ["Jun"]=5,
        ["Jul"]=6,
    },
    ["Month"]=
    {
        ["April"]=3,
        ["June"]=5,
        ["March"]=2,
        ["August"]=7,
        ["December"]=11,
        ["October"]=9,
        ["November"]=10,
        ["February"]=1,
        ["July"]=6,
        ["May"]=4,
        ["September"]=8,
        ["January"]=0,
    },
    ["AttriebuteEncoderResolutionSmall"]=
    {
        ["Fine"]=1677721,
        ["Coarse"]=16777216,
        ["Increment"]=167772,
    },
    ["WeekOfMonth"]=
    {
        ["Second Week"]=1,
        ["First Week"]=0,
        ["Fifth Week"]=4,
        ["Sixth Week"]=5,
        ["Third Week"]=2,
        ["Fourth Week"]=3,
    },
    ["ArrangementMarcType"]=
    {
        ["Small"]=0,
        ["Dynamic"]=1,
    },
    ["DmxSheetSettingsShowField"]=
    {
        ["Attribute"]=0,
        ["Id"]=1,
        ["Value"]=2,
    },
    ["PresetFilterMode"]=
    {
        ["None"]=-1,
        ["Both"]=2,
        ["Input"]=0,
        ["Output"]=1,
    },
    ["ReleaseType"]=
    {
        ["Release"]=2,
        ["Alpha"]=0,
        ["Beta"]=1,
    },
    ["ExitCode"]=
    {
        ["AutoPluginFailed"]=3,
        ["Restart"]=1,
        ["Reboot"]=2,
        ["GeneralError"]=5,
        ["Normal"]=0,
        ["PowerDown"]=4,
    },
    ["ImageBackGroundMode"]=
    {
        ["Stretch"]=0,
        ["Bar"]=1,
        ["Center"]=4,
        ["Tile"]=3,
        ["Crop"]=2,
    },
    ["TimeNone"]=
    {
        ["None"]=9223372036854775807,
    },
    ["MatricksShiftNone"]=
    {
        ["None"]=0,
        ["No Shift"]=32768,
    },
    ["CameraMode"]=
    {
        ["2D_Front"]=1,
        ["2D_Back"]=5,
        ["3D"]=0,
        ["2D_Top"]=3,
        ["2D_Right"]=4,
        ["2D_Left"]=2,
    },
    ["AlignmentV"]=
    {
        ["Bottom"]=2,
        ["Top"]=1,
        ["Center"]=0,
    },
    ["RDMPidValueFactoryDefaults"]=
    {
        ["True"]=1,
        ["False"]=0,
    },
    ["MultiLedBeamMode"]=
    {
        ["Single Beam Dynamic Gobo"]=2,
        ["Single Beam Mean Color"]=1,
        ["Separated Beams"]=0,
    },
    ["PlaybacksOff"]=
    {
        ["Keep Playbacks"]=0,
        ["Playbacks Off"]=1,
    },
    ["HostType"]=
    {
        ["InternalWing"]=5,
        ["Console"]=1,
        ["NetworkNode"]=4,
        ["UpdateMode"]=10,
        ["Switch"]=6,
        ["Extension"]=9,
        ["onPC"]=2,
        ["Undefined"]=0,
        ["PluginSmall"]=8,
        ["PU"]=3,
        ["Plugin"]=7,
    },
    ["DispView"]=
    {
        ["Fan"]=7,
        ["HDD"]=9,
        ["Sys Temp"]=6,
        ["Memory"]=3,
        ["Timing"]=1,
        ["CPU"]=2,
        ["CPU Temp"]=4,
        ["Details"]=8,
        ["Realtime"]=0,
        ["GPU Temp"]=5,
    },
    ["RDMNotificationThresholdOperator"]=
    {
        ["Greate"]=3,
        ["Is"]=1,
        ["Less"]=4,
        [""]=0,
        ["IsNot"]=2,
    },
    ["RDMParameterType"]=
    {
        ["FixtureType"]=1,
        ["Fixture"]=2,
        ["Rdm"]=0,
    },
    ["OnOffStatus"]=
    {
        ["On"]=1,
        ["Toggle"]=2,
        ["Undefined"]=3,
        ["Off"]=0,
    },
    ["AttributeMode"]=
    {
        ["PanTilt"]=0,
        ["YZ"]=3,
        ["XZ"]=2,
        ["XY"]=1,
    },
    ["GestureStatus"]=
    {
        ["None"]=0,
        ["Canceled"]=4,
        ["Updated"]=1,
        ["Finished"]=3,
        ["Finishing"]=2,
    },
    ["EncoderType"]=
    {
        ["Inside3"]=9,
        ["WheelMaster"]=0,
        ["Outside2"]=8,
        ["Inside4"]=11,
        ["PanTrackpad"]=3,
        ["Outside1"]=6,
        ["Outside4"]=12,
        ["Outside3"]=10,
        ["PanTiltFollow"]=2,
        ["Executor"]=16,
        ["Inside5"]=13,
        ["Inside2"]=7,
        ["Outside5"]=14,
        ["TiltTrackpad"]=4,
        ["Inside1"]=5,
        ["ColorPicker"]=1,
    },
    ["TrackEditGrouping"]=
    {
        ["Selection"]=0,
        ["Feature"]=1,
        ["Activation Group"]=2,
        ["All Fixtures"]=3,
    },
    ["SplineType"]=
    {
        ["None"]=0,
        ["Proportional"]=2,
        ["Undefined"]=3,
        ["Free"]=1,
    },
    ["GrandKnob"]=
    {
        ["None"]=4294967295,
        ["GrandKnob"]=100,
    },
    ["ChannelFrequency"]=
    {
        ["30"]=1,
        ["Slow2"]=4,
        ["60"]=0,
        ["Slow3"]=5,
        ["15"]=2,
        ["Slow1"]=3,
    },
    ["ValueRole"]=
    {
        ["DisplayShort"]=2,
        ["Display"]=1,
        ["Default"]=0,
    },
    ["SMPTEMode"]=
    {
        ["In"]=0,
        ["Out"]=1,
    },
    ["RDMPidValueDisplayInvert"]=
    {
        ["On"]=1,
        ["Auto"]=2,
        ["Off"]=0,
    },
    ["PlaybackMaster"]=
    {
        ["Playback14"]=13,
        ["Playback34"]=33,
        ["Playback2"]=1,
        ["Playback30"]=29,
        ["Playback33"]=32,
        ["Playback1"]=0,
        ["Playback10"]=9,
        ["Playback41"]=40,
        ["Playback32"]=31,
        ["Playback35"]=34,
        ["Playback37"]=36,
        ["Playback36"]=35,
        ["Playback40"]=39,
        ["Playback7"]=6,
        ["Playback15"]=14,
        ["Playback31"]=30,
        ["Playback22"]=21,
        ["Playback4"]=3,
        ["Playback9"]=8,
        ["Playback8"]=7,
        ["Playback24"]=23,
        ["Playback6"]=5,
        ["Playback48"]=47,
        ["Playback50"]=49,
        ["Playback11"]=10,
        ["Playback5"]=4,
        ["Playback26"]=25,
        ["Playback47"]=46,
        ["Playback46"]=45,
        ["Playback17"]=16,
        ["Playback13"]=12,
        ["Playback44"]=43,
        ["Playback20"]=19,
        ["Playback12"]=11,
        ["Playback28"]=27,
        ["Playback43"]=42,
        ["Playback23"]=22,
        ["Playback25"]=24,
        ["Playback39"]=38,
        ["Playback29"]=28,
        ["Playback38"]=37,
        ["None"]=255,
        ["Playback18"]=17,
        ["Playback16"]=15,
        ["Playback49"]=48,
        ["Playback21"]=20,
        ["Playback27"]=26,
        ["Playback19"]=18,
        ["Playback42"]=41,
        ["Playback45"]=44,
        ["Playback3"]=2,
    },
    ["UndefinedAnchors"]=
    {
        ["Undefined"]=-1,
    },
    ["MacroLineWait"]=
    {
        ["Follow"]=0,
        ["Go"]=-1,
    },
    ["GridTool"]=
    {
        ["Align"]=4,
        ["Flip"]=3,
        ["Transpose"]=1,
        ["Rotate"]=2,
        ["Compress"]=5,
        ["Linearize"]=0,
    },
    ["AxisSystem"]=
    {
        ["Stage"]=0,
        ["Object"]=1,
    },
    ["DeskLightChannel"]=
    {
        ["ScreenExternal"]=10,
        ["DeskLights"]=1,
        ["LedOther"]=6,
        ["LedExec"]=4,
        ["LedKeyboard"]=5,
        ["LedFader"]=3,
        ["ScreenSmall"]=9,
        ["ScreenLetter"]=8,
        ["LedEncoder"]=2,
        ["ScreenBig"]=7,
    },
    ["GelSortType"]=
    {
        ["None"]=0,
        ["Key"]=2,
        ["Name"]=1,
    },
    ["PhaserLineHeight"]=
    {
        ["Auto"]=50,
    },
    ["ShowPathType"]=
    {
        ["Show"]=17,
        ["Backup"]=18,
        ["Demo"]=19,
    },
    ["SacnDataMode"]=
    {
        ["Input Multicast"]=2,
        ["Input Unicast"]=3,
        ["Output Multicast"]=0,
        ["Output Unicast"]=1,
    },
    ["PlaybackSourceSubTypes"]=
    {
        ["Blocked"]=2,
        ["UpGoing"]=3,
        ["Tracked"]=1,
        ["MIBFade"]=6,
        [""]=0,
        ["MIB"]=5,
        ["DownGoing"]=4,
    },
    ["LayoutVisibility"]=
    {
        ["Hidden"]=0,
        ["Visible"]=1,
    },
    ["DmxSheetSettingsSelected"]=
    {
        ["Selected"]=4294967295,
    },
    ["DmxSheetSettingsAddressMode"]=
    {
        ["Univ.addr"]=0,
        ["Absolute"]=1,
    },
    ["ProgUpdateCueMode"]=
    {
        ["LastGo"]=2,
        ["All"]=0,
        ["Selected"]=1,
    },
    ["InputControl3d"]=
    {
        ["Camera Pivot"]=4,
        ["Select"]=0,
        ["Follow"]=1,
        ["Camera Zoom"]=3,
        ["Camera Orbit"]=2,
        ["Camera Move"]=5,
        ["Camera Set Pivot"]=6,
    },
    ["FixtureTypeSourceImport"]=
    {
        ["Shares"]=4,
        ["grandMA3"]=0,
        ["grandMA2"]=1,
        ["User"]=3,
    },
    ["ShadowMode"]=
    {
        ["Enabled"]=1,
        ["Disabled"]=0,
    },
    ["FaderFunctions"]=
    {
        ["Rate"]=36,
        ["Master"]=31,
        ["Speed"]=37,
        ["Solo"]=40,
        ["XFadeB"]=34,
        ["Highlight"]=38,
        ["Time"]=41,
        ["XFade"]=32,
        ["Lowlight"]=39,
        ["XFadeA"]=33,
        ["Temp"]=35,
    },
    ["DmxTesterMode"]=
    {
        ["All"]=0,
        ["Unpatched"]=2,
        ["Patched"]=1,
    },
    ["MatricksGroupNone"]=
    {
        ["None"]=0,
        ["No Group"]=-1,
    },
    ["MatricksWingsNone"]=
    {
        ["No Wings"]=-1,
        ["None"]=0,
    },
    ["ModalResult"]=
    {
        ["None"]=0,
        ["Confirm"]=3,
        ["Cancel"]=2,
        ["Ok"]=1,
    },
    ["LoopMode"]=
    {
        ["Loop"]=0,
        ["Pause"]=1,
        ["Off"]=2,
    },
    ["EncoderFactor"]=
    {
        ["Mul10"]=167772160,
        ["Mul50"]=838860800,
        ["Div2.55"]=6579300,
        ["Div5"]=3355443,
        ["One"]=16777216,
        ["Disabled"]=0,
        ["Div2"]=8388608,
        ["Div50"]=335544,
        ["Mul2"]=33554432,
        ["Div25"]=671088,
        ["Mul5"]=83886080,
        ["Mul25"]=419430400,
        ["Div10"]=1677721,
        ["Mul2.55"]=42781900,
    },
    ["GelGridType"]=
    {
        ["List"]=0,
        ["Small Icons"]=1,
        ["Big Icons"]=2,
    },
    ["NoName"]=
    {
    },
    ["LayoutOutputSelection"]=
    {
        ["Value"]=0,
        ["Output"]=2,
        ["DMX"]=1,
    },
    ["RDMManufacturerId"]=
    {
        ["ADDiCTiON BoX GbR"]=1968,
        ["Bushveld Labs"]=2220,
        ["Crystal Fountains Inc."]=2504,
        ["Brompton Technology Ltd."]=2484,
        ["Dezelectric Kft."]=17477,
        ["Pfannenberg GmbH"]=20582,
        ["American-Pro International"]=1742,
        ["Lighting Innovation Group AG"]=9379,
        ["Drinelec"]=1794,
        ["Adam Hall GmbH"]=2212,
        ["Quicklights"]=20844,
        ["Selectron Bvba"]=10674,
        ["Griven S.r.l."]=1996,
        ["Elaborated Networks GmbH"]=2399,
        ["Technographic Displays Ltd."]=21572,
        ["Lug Light Factory Sp. z o. o."]=2237,
        ["Innovation LED Limited"]=1408,
        ["eldoLED BV"]=25711,
        ["NXP Semiconductors B.V."]=15120,
        ["WADAK GmbH"]=6678,
        ["Etherlight"]=8889,
        ["ALADIN Architekturlicht GmbH"]=8358,
        ["Glow Motion Technologies, LLC."]=2443,
        ["ELM Video Technology, Inc."]=17741,
        ["Horizon Control Inc."]=18499,
        ["LEDsistem Teknolojileri Tic. Ltd. Sti."]=5670,
        ["Elation Lighting"]=8870,
        ["SAN JACK ANALOG HOUSE CO., LTD."]=16465,
        ["LightMinded Industries, Inc."]=19546,
        ["Zaklad Elektroniczny AGAT s.c."]=5292,
        ["Lampo Lighting Designers"]=19564,
        ["RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 2"]=32754,
        ["Selador"]=21317,
        ["Studio S Music City"]=7110,
        ["WLPS Wodielite Production Services"]=2515,
        ["LED, Inc."]=20578,
        ["Audio Visual Devices P/L"]=16726,
        ["Innovation Solutions Ltd."]=18803,
        ["Astera LED Technology GmbH"]=16755,
        ["SEIKO Epson Corporation"]=5216,
        ["Color Kinetics Inc."]=17227,
        ["HB-Laserkomponenten GmbH"]=9249,
        ["Growflux LLC"]=712,
        ["Pharos Architectural Controls"]=28776,
        ["QuickSilver Controls, Inc."]=20819,
        ["CLAY PAKY S.p.A"]=17232,
        ["XTBA"]=11306,
        ["SpaceCannon vH"]=21347,
        ["EverBrighten Co., Ltd."]=1344,
        ["Sein & Schein GmbH"]=28003,
        ["Unilumin Group"]=2519,
        ["eX Systems"]=981,
        ["Goddard Design Co."]=18244,
        ["Alenco BV"]=16748,
        ["Prolites S.A.L."]=2488,
        ["CCI Power Supplies, LLC"]=2454,
        ["KB Design"]=2421,
        ["HxDx"]=18500,
        ["Showtec (Highlite International B.V.)"]=10676,
        ["AZ e-lite Pte Ltd"]=8365,
        ["Bill Coghill Company : Bill Coghill Design"]=16963,
        ["Interesting Products, Inc."]=18768,
        ["Dream Solutions Ltd."]=8761,
        ["Tempest Lighting Inc."]=21580,
        ["Laser Imagineering GmbH"]=1810,
        ["Ingenieurbuero fuer Nachrichtentechnik in der Studio und Veranstaltungstechnik"]=17740,
        ["Ballantyne Strong Inc."]=29541,
        ["Lamp & Pencil"]=1109,
        ["Engineering Solutions Inc."]=8873,
        ["Les Eclairages Lou Inc."]=17763,
        ["AAdyn Technology"]=2223,
        ["Arthur Digital Solutions Kft"]=32487,
        ["KIM Lighting"]=2224,
        ["Claude Heintz Design"]=27768,
        ["TESI Elettronica srl"]=21573,
        ["RNC Systems Inc."]=21070,
        ["DALCNET SRL"]=17486,
        ["GermTec GmbH & Co. KG"]=2305,
        ["Gantom Lighting & Controls"]=8209,
        ["Lux Lumen"]=826,
        ["Ambitsel, Inc."]=1308,
        ["LightGeist Ltd."]=19527,
        ["StageLine Electronic"]=21356,
        ["Entertainment Technology"]=17748,
        ["Bortis Elektronik"]=258,
        ["Culture Crew bvba"]=8609,
        ["RayComposer - R. Adams"]=1839,
        ["Shenzhen Lesan Lighting Co., Ltd."]=1451,
        ["Company NA"]=20033,
        ["ERAL srl"]=17747,
        ["Robert Juliat"]=2478,
        ["ROE Visual Co. Ltd."]=2438,
        ["LIGHTOLIER"]=19561,
        ["Radical Lighting Ltd."]=21068,
        ["Robe Show Lighting s.r.o."]=21075,
        ["LanBolight Technology Co., LTD."]=14440,
        ["Legargeant and Associates"]=19557,
        ["Anidea Engineering, Inc."]=16713,
        ["Audio Scene"]=16723,
        ["SRS Light Design"]=10665,
        ["Simon Tech"]=21416,
        ["Shenzhen Longrich Energy Sources Technology Co., Ltd."]=2444,
        ["GUANZHOU KAVON STAGE EQUIPMENT CO., LTD."]=6280,
        ["Mittomakers"]=2518,
        ["The Light Source, Inc."]=29009,
        ["Phaton Lighting Co., Ltd."]=2298,
        ["Coolon Pty Ltd"]=8627,
        ["Serva Transport Systems GmbH"]=5902,
        ["General Luminaire (Shanghai) Ltd."]=18284,
        ["Light.Audio.Design"]=1696,
        ["Autotech Co."]=2479,
        ["Vision Quest Lighting Inc."]=22097,
        ["Zumtobel Lighting GmbH"]=27757,
        ["Advanced Lighting Systems"]=24940,
        ["AusChristmasLighting"]=8378,
        ["Ecosense Lighting Company Limited"]=2446,
        ["Krisledz Pte. Ltd."]=1166,
        ["Environmental Lighting Solutions"]=25971,
        ["Junction Inc. Ltd"]=2129,
        ["Targetti Sankey Spa"]=1239,
        ["Aquatique Show Int."]=2483,
        ["Lumenec Pty. Ltd."]=9786,
        ["Macostar International Ltd."]=13192,
        ["LED Flex Limited"]=30900,
        ["LEDEngin Inc."]=1887,
        ["TMB"]=6906,
        ["Pr-Lighting Ltd."]=28786,
        ["The White Rabbit Company, Inc."]=11177,
        ["RDC, Inc. d.b.a. LynTec"]=1616,
        ["AC Lasers"]=16707,
        ["ARC Solid-State Lighting Corp."]=2165,
        ["Highendled Electronics Company Limited"]=2186,
        ["Gekko Technology Ltd."]=9138,
        ["Philips Entertainment Lighting Asia"]=20545,
        ["Creative Lighting And Sound Systems Pty Ltd"]=161,
        ["RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY a"]=32762,
        ["Bigbear Co., Ltd."]=2308,
        ["Corsair Technology Ltd."]=1851,
        ["de koster Special Effects"]=12853,
        ["St. Anne Engineering GmbH"]=257,
        ["KMX Inc."]=19277,
        ["RoscoLab Ltd"]=21074,
        ["Pathway Connectivity Inc."]=20547,
        ["RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY b"]=32763,
        ["ChromaCove LLC"]=8629,
        ["Grand Canyon LED Lighting System (Suzhou) Co., Ltd."]=1167,
        ["SIRS-E"]=2181,
        ["Fineline Solutions Ltd."]=2400,
        ["Les Generateurs de brouillard MDG Fog Generators Ltd."]=19780,
        ["Apogee Lighting"]=16720,
        ["PR-Electronic"]=10281,
        ["LjusDesign AB"]=9781,
        ["Sean Sill"]=21331,
        ["Pulsar Light of Cambridge Ltd."]=20597,
        ["Guangzhou VAS Lighting Co., Ltd."]=1088,
        ["Mueller Elektronik"]=19831,
        ["Steinigke Showtechnic GmbH"]=10666,
        ["MARTINI S.p.A."]=19809,
        ["Guangzhou GTD Lighting Technology Co., Ltd"]=2385,
        ["Pangolin Laser Systems, Inc."]=28912,
        ["Smartpark Creative Solutions"]=5038,
        ["Brighten Technology Development Co., Ltd."]=1487,
        ["Lightforce Lasertechnik"]=923,
        ["Sean Christopher FX"]=29539,
        ["OSRAM"]=1321,
        ["RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 5"]=32757,
        ["Barco"]=16979,
        ["Industrias Sola Basic S.A. de C.V."]=21314,
        ["Duralamp S.p.A."]=6585,
        ["ChamSys Ltd."]=1290,
        ["Joshua 1 Systems Inc."]=18993,
        ["STG-Beikirch Industrieelektronik + Sicherheitstechnik GmbH & Co. KG"]=21364,
        ["RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY f"]=32767,
        ["techKnow Design Ltd."]=5658,
        ["MEB Veranstaltungstechnik GmbH"]=1190,
        ["Zingerli Show Engineering"]=23123,
        ["Prism Projection"]=916,
        ["Focon Showtechnic"]=9015,
        ["Panasonic Corporation"]=1871,
        ["MA Lighting Technology GmbH"]=19777,
        ["LLT Lichttechnik GmbH&CO.KG"]=9766,
        ["EC Elettronica Srl"]=17731,
        ["Mode Lighting (UK) Ltd."]=19788,
        ["Velleman nv"]=2499,
        ["Lumishore Ltd. UK"]=13853,
        ["Sturdy Corporation"]=10657,
        ["Wildfire, Inc."]=22342,
        ["Guangzhou Yajiang (Yagang - Silver Star) Photoelectric Equipment Ltd."]=14474,
        ["Bytecraft Entertainment Pty Ltd"]=16965,
        ["Engineering Arts"]=17729,
        ["DMX4ALL GmbH"]=11290,
        ["City Design S.p.A."]=4862,
        ["Fountain People"]=2466,
        ["Adelto Limited"]=16740,
        ["Intense Lighting, LLC"]=5280,
        ["XENON ARCHITECTURAL LIGHTING"]=22629,
        ["Aquarii, Inc."]=16721,
        ["Strand Lighting Ltd."]=29548,
        ["ELC lighting"]=25964,
        ["Newlab S.r.l."]=4826,
        ["Ocean Thin Films Inc."]=21315,
        ["IBL/ESD-Datentechnik GmbH"]=1669,
        ["Anytronics Ltd."]=16718,
        ["SGM Technology For Lighting SPA"]=21319,
        ["IGuzzini illuminazione spa"]=18759,
        ["Synthe FX, LLC"]=21318,
        ["COSMOLIGHT SRL"]=1387,
        ["Lumisia Co., Ltd."]=26454,
        ["MX design"]=19800,
        ["Ingenieurbuero Stahlkopf"]=4976,
        ["D.O.M. Datenverarbeitung GmbH"]=17476,
        ["E:cue Control GmbH"]=17722,
        ["RUIZ TECH"]=21069,
        ["Lighting Science Group (formerly LED Effects, Inc.)"]=1547,
        ["Fly Dragon Lighting Equipment Co.,ltd"]=14472,
        ["Red Arrow Controls"]=2272,
        ["JAP Optoelectronic Ltd."]=20809,
        ["Spectrum Manufacturing Inc."]=21360,
        ["Pioneer Corporation"]=10273,
        ["XLN-t bvba"]=30828,
        ["Zero 88"]=2056,
        ["Interactive Technologies, Inc."]=18766,
        ["Claudio Dal Cero Engineering"]=17475,
        ["CAST Software"]=17223,
        ["Hale Microsystems LLC"]=9328,
        ["Lumina Visual Productions"]=28650,
        ["CDCA Ltd."]=17220,
        ["MAL Effekt-Technik GmbH"]=28001,
        ["Galaxia Electronics"]=1842,
        ["CDS advanced technology bv"]=25444,
        ["SV-wtu eU"]=21366,
        ["Peradise"]=20581,
        ["PXM s.c."]=20568,
        ["LGR"]=364,
        ["UP-LUX Eletronica Ltda."]=21840,
        ["Artistic Licence Engineering Ltd."]=16716,
        ["LEDValley Technologies Sdn Bhd"]=19542,
        ["i2Systems"]=915,
        ["LED Company s.r.o."]=19685,
        ["EVC"]=8875,
        ["Flexvisual"]=18006,
        ["BECKHOFF Automation GmbH"]=16961,
        ["Electronics Diversified LLC"]=17732,
        ["Revolution Display"]=21060,
        ["Bart van Stiphout Electronics & Software"]=8496,
        ["Peternet Electronics BVBA"]=10279,
        ["Fire & Magic"]=5454,
        ["Amptown Lichttechnik GmbH"]=16717,
        ["OTTEC Technology GmbH"]=2168,
        ["Stagetronics Ltda"]=21332,
        ["James Embedded Systems Engineering (JESE Ltd)"]=26724,
        ["I-Pix Digital Light Ltd."]=9788,
        ["Global Special Effects"]=18040,
        ["Philips Lighting BV"]=20584,
        ["IT Ihme"]=9386,
        ["G-LEC Europe GmbH"]=18252,
        ["LDDE Vertriebs Gmbh"]=9762,
        ["Sand Network Systems"]=21326,
        ["JANUS srl"]=19009,
        ["D-LED Illumination Technologies Ltd."]=1491,
        ["Anaren Inc."]=31392,
        ["Key Delfin"]=27492,
        ["DAS Integrator Pte Ltd"]=8740,
        ["RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY e"]=32766,
        ["LightProcessor Ltd"]=19536,
        ["David O Smith Design"]=2328,
        ["Dangeross Design"]=25700,
        ["Philips Selecon"]=20563,
        ["ARNOLD LICHTTECHNIK"]=16754,
        ["JIAXING XINHUALI LIGHTING & SOUNDING CO., LTD."]=1395,
        ["AYRTON"]=16761,
        ["Leviton Manufacturing Co., Inc."]=19525,
        ["MEGATECHNICS Ltd."]=9890,
        ["Alkalite LED Technology Corp"]=8374,
        ["Alcorn McBride Inc."]=913,
        ["AVAB America, Inc."]=16705,
        ["Traxon Technologies Ltd."]=5852,
        ["Avolites Ltd."]=19798,
        ["medien technik cords"]=19796,
        ["Coemar Spa"]=17229,
        ["D-Light Designs, LLC"]=8726,
        ["mathertel.de"]=2439,
        ["Brother,Brother & Sons Aps"]=8481,
        ["Tait Towers Manufacturing Inc."]=737,
        ["Enfis Ltd"]=18518,
        ["DJPOWER ELECTRONIC STAGE LIGHTING FIXTURE FACTORY (GUANGZHOU)"]=20781,
        ["D.T.S. Illuminazione srl"]=1808,
        ["ENTTEC Pty Ltd"]=17742,
        ["Licht-Technik"]=19540,
        ["Altman Stage Lighting"]=16689,
        ["feno GmbH"]=774,
        ["SAS Productions"]=21322,
        ["Imlight-Showtechnic"]=603,
        ["Acclaim Lighting"]=714,
        ["DF elettronica s.r.l."]=17510,
        ["Music & Lights S.r.l."]=5584,
        ["RootPath Ltd."]=21072,
        ["PiXL Factory"]=2218,
        ["Lex Products Corp."]=19544,
        ["Plsao Optoelectronics Technology Co., Ltd."]=22664,
        ["Ingham Designs"]=18756,
        ["ImageCue LLC"]=776,
        ["MY-Semi Inc."]=1938,
        ["Stealth Light srl"]=2227,
        ["Masiero s.r.l."]=7887,
        ["Lumenpulse Lighting Inc."]=13880,
        ["Mediatec Group"]=23980,
        ["Solid State Luminaires"]=6456,
        ["RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 9"]=32761,
        ["Callegenix LLC"]=10152,
        ["HUMAL Elektroonika OU"]=5220,
        ["LSC Lighting Systems (Aust) Pty. Ltd."]=19571,
        ["Motomuto Aps"]=2508,
        ["Illum Technology LLC (previously Verde Designs, Inc.)"]=2392,
        ["JPK Systems Limited"]=27243,
        ["Ehrgeiz"]=2245,
        ["Golden Sea Disco Light Manufacturer"]=18259,
        ["ADE ELETTRONICA srl"]=16709,
        ["SISTEMA Jsc"]=1772,
        ["Dove Lighting Systems, Inc."]=17484,
        ["AUTOLUX Handels- und ProduktionsgmbH"]=21553,
        ["LAN Systems--Midibox project"]=19778,
        ["ACTOR-MATE CO., LTD."]=2326,
        ["Connex GmbH"]=17240,
        ["Open Lighting"]=31344,
        ["RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY d"]=32765,
        ["VT-Control"]=4941,
        ["TBE Srl"]=2374,
        ["CTG sp. z o.o."]=1776,
        ["GVA Lighting, Inc."]=715,
        ["DigitaLicht AG"]=30600,
        ["CPOINT"]=1844,
        ["RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY c"]=32764,
        ["www.doityourselfchristmas.com hobbyists"]=22637,
        ["GRE Alpha"]=2316,
        ["Schreder"]=21320,
        ["Martin Professional A/S"]=19792,
        ["DDS Elettronica"]=20300,
        ["Mole-Richardson Co."]=30734,
        ["ELETTROLAB S.r.l."]=17474,
        ["Hollywood Controls Inc."]=18511,
        ["Brink Electronics"]=2429,
        ["Xtraordinary Musical Accolade Systems"]=22605,
        ["FLUX ECLAIRAGE"]=1060,
        ["Aixz International (S)"]=2458,
        ["ShowLED"]=2285,
        ["RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 1"]=32753,
        ["CHAUVET Lighting"]=8612,
        ["Yuesheng International Limited"]=5968,
        ["Johnsson Lighting Technologies AB"]=19020,
        ["GLP German Light Products GmbH"]=26476,
        ["Stage Technologies Limited"]=21313,
        ["Devantech Ltd."]=17494,
        ["Edward J. Keefe Jr."]=1193,
        ["AquaTronic"]=2358,
        ["Padura Elektronik GmbH"]=8319,
        ["BEGLEC NV"]=8482,
        ["Insta Elektro GmbH"]=18757,
        ["Hubbell Entertainment, Inc."]=26725,
        ["Shenzhen CreateLED Electronics Co., Ltd"]=2368,
        ["DC Reactive"]=31164,
        ["Lutron Electronics"]=748,
        ["Production Resource Group"]=20562,
        ["Conceptinetics Technologies and Consultancy Ltd."]=1799,
        ["CODEM MUSIC S.r.l."]=17263,
        ["NJD Electronics"]=20042,
        ["ADL Electronics Ltd."]=2202,
        ["Nerd's Meter"]=5674,
        ["SWISSON AG"]=21367,
        ["KissBox"]=19266,
        ["v2 Lighting Group, Inc."]=5382,
        ["kLabs Research UK"]=2394,
        ["DES"]=18256,
        ["Soundsculpture Incorporated"]=21321,
        ["kuwatec, Inc."]=19285,
        ["lumenetix"]=1910,
        ["TERMINAL-COM"]=1335,
        ["euroGenie"]=25927,
        ["inoage GmbH"]=18753,
        ["iLight Technologies Inc"]=26956,
        ["Wybron, Inc."]=22361,
        ["W.A. Benjamin Electric Co."]=2264,
        ["eBrain GmbH"]=25922,
        ["dilitronics GmbH"]=25708,
        ["deskontrol electronics"]=2556,
        ["PRO-SOLUTIONS"]=1375,
        ["THELIGHT Luminary for Cine and TV S.L."]=2045,
        ["awaptec GmbH"]=5776,
        ["acdc LED Ltd."]=19676,
        ["Yifeng Lighting Co., Ltd."]=14341,
        ["Wireless Solution Sweden AB"]=22355,
        ["DMXPROFI.EU GmbH i.G."]=17488,
        ["NOVALIGHT S.r.l."]=20044,
        ["Winona Lighting"]=720,
        ["BOTEX"]=16975,
        ["Williams Electronic Design Ltd."]=11188,
        ["WET"]=30564,
        ["WERPAX bvba"]=11170,
        ["Juno Lighting Group"]=2136,
        ["eventa Aktiengesellschaft"]=25974,
        ["W-DEV"]=22340,
        ["ROAL Electronics SpA"]=10535,
        ["Lehigh Electric Products"]=9778,
        ["Peter Meyer Project Management Adviser GmbH"]=20557,
        ["Ice House Productions"]=18760,
        ["Hungaroflash"]=9258,
        ["Viso Systems Aps"]=22099,
        ["Vehtec Tecnologia Ltda"]=7296,
        ["SGM A/S"]=1836,
        ["Urban Visuals & Effects Ltd."]=10923,
        ["Rena Electronica B.V."]=18561,
        ["Hollywood Rentals LLC"]=4858,
        ["Ultratec Special Effects"]=19533,
        ["Turkowski GmbH"]=1461,
        ["Niko"]=20073,
        ["Toni Maroni Gmb"]=10790,
        ["Lighting Services Inc."]=11488,
        ["Thorn Lighting Limited"]=10789,
        ["Theatrelight New Zealand"]=1807,
        ["RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 0"]=32752,
        ["Acuity Brands Lighting Inc."]=623,
        ["ARRI -- Arnold & Richter Cine Technik GmbH & Co. Betriebs KG"]=8377,
        ["LLC Likhoslavl Plant of Lighting Engineering (Svetotehnika)"]=672,
        ["TheOlymp - Networking & InterNet Services"]=14903,
        ["TecArt Lighting"]=21569,
        ["SanDevices, LLC"]=2289,
        ["Event Lighting Pty, Ltd."]=2055,
        ["Teamboyce Limited"]=2426,
        ["Alektra AB"]=24908,
        ["TalentStorm Enterprises, Inc."]=21587,
        ["MCI Group"]=2226,
        ["Outsight Pty Ltd."]=20341,
        ["STILED"]=2265,
        ["Sundrax, LLC"]=10679,
        ["Stroytsirk LLC"]=10728,
        ["Strich Labs"]=911,
        ["Lumonic Limited"]=9782,
        ["SK-Software"]=21323,
        ["Shanghai Moons Automation Control Co., Ltd"]=771,
        ["GuangZhou MCSWE Technologies, INC"]=5536,
        ["Digimedia Multimedia Lighting Solutions"]=17485,
        ["Equipson S.A."]=1766,
        ["Global Design Solutions, Ltd."]=13364,
        ["Getlux Ltd."]=10628,
        ["Birket Engineering, Inc."]=17058,
        ["Stardraw.com Ltd."]=21316,
        ["DIGITAL ART SYSTEM"]=17473,
        ["SVI Public Company Limited"]=2259,
        ["Stellascapes"]=11720,
        ["RHENAC Systems GmbH"]=1732,
        ["Peperoni Lighting-Solutions"]=20556,
        ["Peter Maes Technology"]=10278,
        ["Leonh Hardware Enterprise Inc."]=9763,
        ["PLS Electronics Ltd."]=6552,
        ["Prolight Concepts Ltd."]=2469,
        ["Planungsbuero"]=10294,
        ["Durand Interstellar, Inc."]=17481,
        ["RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 7"]=32759,
        ["RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 6"]=32758,
        ["AC Entertainment Products Ltd."]=2434,
        ["Martin Sukale Medientechnik GbR"]=21845,
        ["CKC Lighting Co., Ltd."]=1579,
        ["EUTRAC - Intelligent Lighting GmbH"]=8874,
        ["L&L Luce&Light"]=1735,
        ["ESTA1"]=65535,
        ["TamaTech Labo Company Ltd,"]=21588,
        ["Integrated Theatre, Inc."]=18772,
        ["Electronic Theatre Controls, Inc."]=25972,
        ["Helvar Ltd"]=9266,
        ["Apollo Design Technology, Inc"]=24932,
        ["Diamante Lighting Srl"]=17513,
        ["Stage Services Ltd."]=4852,
        ["LaserAnimation Sollinger GmbH"]=19521,
        ["CHROMLECH"]=8628,
        ["I-Lum"]=18764,
        ["Howard Eaton Lighting Ltd."]=18501,
        ["Lumascape Lighting Industries"]=1388,
        ["AIM Northwest"]=20055,
        ["Antari Lighting And Effects Ltd."]=7896,
        ["Heliospectra AB"]=25626,
        ["CaptSystemes"]=8617,
        ["State Automation Pty Ltd."]=10682,
        ["Freescale Semiconductor U.K. Ltd."]=26227,
        ["Toshiba Lighting & Technology Corporation"]=26608,
        ["MBN GmbH"]=28002,
        ["LUMINEX Lighting Control Equipment bvba"]=19532,
        ["James Thomas Engineering"]=19028,
        ["EAS SYSTEMS"]=8864,
        ["Carallon Ltd."]=812,
        ["LightLife, Gesellschaft fuer audiovisuelle Erlebnisse mbH"]=19547,
        ["ESTA"]=0,
        ["LumenRadio AB"]=19541,
        ["Starway"]=2537,
        ["Cinetix Medien u. Interface GmbH"]=17257,
        ["Digital Sputnik Lighting"]=2447,
        ["HBE Lighting Systems"]=18508,
        ["Oase GmbH"]=20289,
        ["Integrated System Technologies Ltd."]=18771,
        ["ALS Stanislaw Binkiewicz"]=7104,
        ["Cineo Lighting"]=6669,
        ["GPE srl"]=18245,
        ["Licht-, Steuer- und Schaltanlagenbau GmbH (LSS GmbH)"]=19539,
        ["HDT impex s.r.o."]=2362,
        ["City Theatrical, Inc."]=17236,
        ["Advatek Lighting"]=24916,
        ["Krislite Pte. Ltd."]=2331,
        ["Invisible Rival Incorporated"]=18770,
        ["JB-lighting GmbH"]=19010,
        ["JSC MFG"]=19027,
        ["Jinnax Opto Technology Co., Ltd."]=682,
        ["Electrone Americas Ltd. Co."]=5806,
        ["GEE"]=1,
        ["Lite Puter Enterprise Co., Ltd."]=5882,
        ["High End Systems Inc."]=19538,
        ["IBEX UK Limited"]=18754,
        ["ChamberPlus Co., Ltd"]=26646,
        ["Kino Flo, Inc."]=19270,
        ["PH Lightning AB"]=7089,
        ["Kolberg Percussion GmbH"]=4842,
        ["LED Team"]=19556,
        ["LEDART LLC"]=1668,
        ["D.E.F. Srl"]=8738,
        ["Arnold Tang Productions"]=16724,
        ["Ambra Elettronica s.r.l."]=27794,
        ["Diginet Control Systems Pty Ltd"]=1545,
        ["LLC Moscow Experimental Lighting Plant (TeleMechanic)"]=673,
        ["HERA LED"]=26732,
        ["Red Lighting s.r.l."]=6717,
        ["Sensa-Lite Ltd."]=2260,
        ["Doug Fleenor Design, Inc."]=17478,
        ["Milford Instruments Ltd."]=9908,
        ["Laservision Pty Ltd"]=9776,
        ["Birdbrain Labs LLC"]=1102,
        ["C.I.Tronics Lighting Designers Ltda"]=17225,
        ["Lichttechnik & Sonderbau"]=14295,
        ["KLH Electronics PLC"]=19276,
        ["LightWild LC"]=19543,
        ["SOUNDLIGHT"]=21324,
        ["Eulum Design, LLC"]=2294,
        ["Loxone Electronics GmbH"]=9783,
        ["OXO"]=23616,
        ["Flashlight/Ampco Holding"]=17996,
        ["Aboutshow Color Light Co., LTD"]=5860,
        ["EREA"]=17746,
        ["Argetron Elektrik Elektronik Organizasyon Gida San. ve Dis Tic. Ltd. Sti."]=2497,
        ["Capricorn Software"]=17235,
        ["Ittermann electronic GmbH"]=26996,
        ["Luxam, Ltd."]=2433,
        ["OOO SAMLIGHT"]=21334,
        ["Luxlight Skandinavien AB"]=4832,
        ["Spotlight s.r.l."]=10680,
        ["ALL-DO INTERNATIONALCO., LTD."]=10649,
        ["Guangzhou Chai Yi Light Co., Ltd."]=1519,
        ["ACS - Ackerman Computer Sciences"]=2297,
        ["MagicFX B.V."]=18008,
        ["Fontana Fountains"]=2405,
        ["Nila Inc."]=10020,
        ["Moog Animatics"]=2432,
        ["LLC Lighting Technologies production"]=2462,
        ["Nixer Ltd."]=10036,
        ["OFilms"]=1630,
        ["Rosstech Signals Inc."]=843,
        ["Digilin Australia"]=25697,
        ["Blossom Communications Corp."]=4894,
        ["OJSC Kadoshkinsky electrotechnical"]=674,
        ["Marumo Electric Co., Ltd."]=2420,
        ["LAM32 srl"]=19488,
        ["RE-Engineering"]=701,
        ["ACME EFFECTS LTD."]=14342,
        ["Moda Light"]=7821,
        ["PatternAgents, LLC"]=2263,
        ["Visual Productions"]=11048,
        ["Element Labs Inc."]=17772,
        ["RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 4"]=32756,
        ["RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 3"]=32755,
        ["PixelRange Inc."]=28792,
        ["Grid Show Systems Inc."]=5264,
        ["LEADER LIGHT s.r.o."]=9761,
        ["ShowCAD Control Systems Ltd."]=21352,
        ["Raven Systems Design, Inc."]=4919,
        ["Lisys Fenyrendszer Zrt."]=9764,
        ["RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 8"]=32760,
        ["Laser Technology Ltd."]=19545,
        ["ADB - TTV Technologies nv"]=16708,
        ["RVL techniek"]=19148,
        ["RaumZeitLabor e.V."]=2431,
        ["Ephesus Lighting"]=27630,
        ["Rnet Lighting Technology Limited"]=2464,
        ["Vari-Lite, Inc."]=22092,
        ["Jands Pty Ltd."]=19041,
        ["zactrack Lighting Technologies Gmbh"]=15664,
        ["OKEROAB AB"]=17969,
        ["QMAXZ lighting"]=20813,
        ["FATEC sarl"]=1930,
        ["ABLELITE INTERNATIONAL"]=578,
    },
    ["GlobalUpdateTypes"]=
    {
        ["None"]=0,
        ["Content"]=3,
        ["OnlyNames"]=1,
        ["References"]=2,
    },
    ["TCViewMode"]=
    {
        ["Text"]=0,
        ["Both"]=2,
        ["Timeline"]=1,
    },
    ["CuePartAppearance"]=
    {
        ["Off"]=0,
        ["All"]=3,
        ["Num+Name"]=2,
        ["Number"]=1,
    },
    ["DmxSheetFixedColumnType"]=
    {
        ["Address2"]=1,
        ["Address"]=0,
    },
    ["RDMSlotId"]=
    {
        ["SD_BEAM_SIZE_IRIS"]=1025,
        ["SD_FAN_CONTROL"]=1286,
        ["SD_BARN_DOOR"]=1033,
        ["SD_INTENSITY_MASTER"]=2,
        ["SD_COLOR_ADD_WARM_WHITE"]=531,
        ["SD_FIXTURE_SPEED"]=1283,
        ["SD_COLOR_HUE"]=534,
        ["SD_PAN"]=257,
        ["SD_COLOR_WHEEL"]=513,
        ["SD_COLOR_ADD_COOL_WHITE"]=532,
        ["SD_COLOR_SUB_UV"]=533,
        ["SD_COLOR_ADD_AMBER"]=529,
        ["SD_FOUNTAIN_CONTROL"]=1288,
        ["SD_MACRO"]=1284,
        ["SD_PRISM_WHEEL"]=771,
        ["SD_COLOR_SUB_CYAN"]=514,
        ["SD_COLOR_SATURATION"]=535,
        ["SD_COLOR_ADD_BLUE"]=519,
        ["SD_ZOOM"]=1029,
        ["SD_UNDEFINED"]=65535,
        ["SD_HEATER_CONTROL"]=1287,
        ["SD_TILT"]=258,
        ["SD_STROBE"]=1028,
        ["SD_COLOR_ADD_WHITE"]=530,
        ["SD_STATIC_GOBO_WHEEL"]=769,
        ["SD_ROTO_GOBO_WHEEL"]=770,
        ["SD_SHUTTER_ROTATE"]=1031,
        ["SD_POWER_CONTROL"]=1285,
        ["SD_INTENSITY"]=1,
        ["SD_COLOR_SUB_MAGENTA"]=516,
        ["SD_FROST"]=1027,
        ["SD_FRAMING_SHUTTER"]=1030,
        ["SD_COLOR_SEMAPHORE"]=528,
        ["SD_EFFECTS_WHEEL"]=772,
        ["SD_COLOR_ADD_RED"]=517,
        ["SD_COLOR_SUB_YELLOW"]=515,
        ["SD_COLOR_ADD_GREEN"]=518,
        ["SD_EDGE"]=1026,
        ["SD_COLOR_CORRECTION"]=520,
        ["SD_FIXTURE_CONTROL"]=1282,
        ["SD_LAMP_CONTROL"]=1281,
        ["SD_COLOR_SCROLL"]=521,
        ["SD_DOUSER"]=1032,
    },
    ["SeqRestartMode"]=
    {
        ["Current Cue"]=1,
        ["Next Cue"]=2,
        ["First Cue"]=0,
    },
    ["OSCMode"]=
    {
        ["TCP"]=1,
        ["UDP"]=0,
    },
    ["RDMProductDetail"]=
    {
        ["PRODUCT_DETAIL_DAMPER_CONTROL"]=1286,
        ["PRODUCT_DETAIL_HAZARD"]=781,
        ["PRODUCT_DETAIL_CHANGEOVER_MANUAL"]=2304,
        ["PRODUCT_DETAIL_LED"]=4,
        ["PRODUCT_DETAIL_FLUROESCENT"]=5,
        ["PRODUCT_DETAIL_INCANDESCENT"]=3,
        ["PRODUCT_DETAIL_BARNDOOR_SHUTTER"]=262,
        ["PRODUCT_DETAIL_CHANGEOVER_AUTO"]=2305,
        ["PRODUCT_DETAIL_ARC"]=1,
        ["PRODUCT_DETAIL_FREQUENCY_MODULATION"]=1034,
        ["PRODUCT_DETAIL_GFI_RCD"]=2560,
        ["PRODUCT_DETAIL_HIGHFREQUENCY_12V"]=1035,
        ["PRODUCT_DETAIL_CONFETTI"]=780,
        ["PRODUCT_DETAIL_COLORWHEEL"]=257,
        ["PRODUCT_DETAIL_RELAY_MECHANICAL"]=1036,
        ["PRODUCT_DETAIL_PROFILE_SHUTTER"]=261,
        ["PRODUCT_DETAIL_IRIS_DOUSER"]=259,
        ["PRODUCT_DETAIL_EFFECTS_DISC"]=263,
        ["PRODUCT_DETAIL_CONTROLLABLE_BREAKER"]=2562,
        ["PRODUCT_DETAIL_SLIDE"]=513,
        ["PRODUCT_DETAIL_FOGGER_MINERALOIL"]=769,
        ["PRODUCT_DETAIL_DATAPATCH"]=1539,
        ["PRODUCT_DETAIL_OLEFACTORY_STIMULATOR"]=776,
        ["PRODUCT_DETAIL_PWM"]=1027,
        ["PRODUCT_DETAIL_HFBALLAST"]=1029,
        ["PRODUCT_DETAIL_MIXER"]=2050,
        ["PRODUCT_DETAIL_CONTACTOR"]=1039,
        ["PRODUCT_DETAIL_HFHV_EL"]=1031,
        ["PRODUCT_DETAIL_ANALOG_DEMULTIPLEX"]=1794,
        ["PRODUCT_DETAIL_TEST"]=2306,
        ["PRODUCT_DETAIL_ELECTROLUMINESCENT"]=7,
        ["PRODUCT_DETAIL_GOBO_ROTATOR"]=264,
        ["PRODUCT_DETAIL_LCDGATE"]=516,
        ["PRODUCT_DETAIL_OTHER_ROTATOR"]=1281,
        ["PRODUCT_DETAIL_FOGGER_GLYCOL"]=768,
        ["PRODUCT_DETAIL_FADER"]=2049,
        ["PRODUCT_DETAIL_BUBBLE"]=773,
        ["PRODUCT_DETAIL_OILWHEEL"]=515,
        ["PRODUCT_DETAIL_COLORCHANGE"]=258,
        ["PRODUCT_DETAIL_FLAME_PROPANE"]=774,
        ["PRODUCT_DETAIL_KABUKI_DROP"]=1282,
        ["PRODUCT_DETAIL_WIND"]=779,
        ["PRODUCT_DETAIL_WATER_JET"]=778,
        ["PRODUCT_DETAIL_VIDEO"]=512,
        ["PRODUCT_DETAIL_COLDCATHODE"]=6,
        ["PRODUCT_DETAIL_FLASHTUBE"]=9,
        ["PRODUCT_DETAIL_SWITCH_ELECTRONIC"]=1038,
        ["PRODUCT_DETAIL_FLAME_OTHER"]=775,
        ["PRODUCT_DETAIL_SNOW"]=777,
        ["PRODUCT_DETAIL_LN2"]=772,
        ["PRODUCT_DETAIL_SINE"]=1026,
        ["PRODUCT_DETAIL_DC"]=1028,
        ["PRODUCT_DETAIL_CURTAIN"]=1283,
        ["PRODUCT_DETAIL_METAL_HALIDE"]=2,
        ["PRODUCT_DETAIL_C02"]=771,
        ["PRODUCT_DETAIL_REVERSE_PHASE_CONTROL"]=1025,
        ["PRODUCT_DETAIL_FOGGER_WATER"]=770,
        ["PRODUCT_DETAIL_RELAY_ELECTRONIC"]=1037,
        ["PRODUCT_DETAIL_PHASE_CONTROL"]=1024,
        ["PRODUCT_DETAIL_NOT DECLARED"]=0,
        ["Manufacturer Specific"]=32768,
        ["PRODUCT_DETAIL_HFHV_NEONBALLAST"]=1030,
        ["PRODUCT_DETAIL_WIRELESS_LINK"]=1540,
        ["PRODUCT_DETAIL_FILM"]=514,
        ["PRODUCT_DETAIL_PROTOCOL_CONVERTOR"]=1793,
        ["PRODUCT_DETAIL_BITANGLE_MODULATION"]=1033,
        ["PRODUCT_DETAIL_OTHER"]=32767,
        ["PRODUCT_DETAIL_DIMMING_SHUTTER"]=260,
        ["PRODUCT_DETAIL_MHR_BALLAST"]=1032,
        ["PRODUCT_DETAIL_ETHERNET_NODE"]=1537,
        ["PRODUCT_DETAIL_SWITCH_PANEL"]=1796,
        ["PRODUCT_DETAIL_LASER"]=8,
        ["PRODUCT_DETAIL_MERGE"]=1538,
        ["PRODUCT_DETAIL_BATTERY"]=2561,
        ["PRODUCT_DETAIL_ANALOG_MULTIPLEX"]=1795,
        ["PRODUCT_DETAIL_SPLITTER"]=1536,
        ["PRODUCT_DETAIL_MOTOR_CONTROL"]=1285,
        ["PRODUCT_DETAIL_COLORSCROLLER"]=256,
        ["PRODUCT_DETAIL_ROUTER"]=2048,
        ["PRODUCT_DETAIL_MIRRORBALL_ROTATOR"]=1280,
        ["PRODUCT_DETAIL_LINESET"]=1284,
    },
    ["IgnoreFT"]=
    {
        [""]=4294967295,
        ["Follow FT"]=4294967295,
        ["Ignore FT"]=4294967294,
    },
    ["ImageRotation"]=
    {
        ["180"]=2,
        ["None"]=0,
        ["90"]=1,
        ["270"]=3,
    },
    ["Yes"]=
    {
        ["Yes"]=1,
        [""]=0,
        ["<Blank>"]=0,
    },
    ["AssignmentRateButtonFunctions"]=
    {
        ["Toggle"]=14,
        ["Rate1"]=11,
        ["Off"]=8,
        [""]=0,
        ["Flash"]=1,
        ["Pause"]=18,
        ["Solo"]=21,
        ["Empty"]=0,
        ["GoStep"]=23,
        ["Time"]=22,
        ["On"]=7,
        ["Lowlight"]=20,
        ["LearnRate"]=9,
        ["Highlight"]=19,
    },
    ["TimeKeyTarget"]=
    {
        ["Fixture"]=1,
        ["Cue"]=0,
    },
    ["PresetDisplayMode"]=
    {
        ["Text"]=1,
        ["Symbol"]=2,
        ["Text and Symbol"]=0,
    },
    ["FixtureSheetHeaderType"]=
    {
        ["SelectedInverted"]=2,
        ["PartlySelected"]=3,
        [""]=0,
        ["Selected"]=1,
    },
    ["WindowTypes"]=
    {
        ["Sheets"]=0,
        ["Presets"]=2,
        ["Others"]=3,
        ["Pools"]=1,
    },
    ["SpecialAttribute"]=
    {
        ["CTO"]=28,
        ["CTC"]=30,
        ["Dummy"]=2,
        ["Blade3B"]=38,
        ["IrisPulseOpen"]=46,
        ["GoboSelectShake"]=14,
        ["Blade1B"]=32,
        ["Blade3Rot"]=39,
        ["Dimmer"]=3,
        ["Gobo"]=12,
        ["Zoom"]=22,
        ["CTB"]=29,
        ["XYZ_Scale"]=7,
        ["CIE"]=27,
        ["Frost"]=24,
        ["Blade4Rot"]=42,
        ["XYZ_Rot"]=6,
        ["ShaperRot"]=43,
        ["IrisStrobeRandom"]=47,
        ["Color"]=10,
        ["Iris"]=23,
        ["ShutterStrobeRandomPulseOpen"]=55,
        ["Blade2B"]=35,
        ["NoFeature"]=1,
        ["IrisRandomPulseOpen"]=48,
        ["ShutterStrobeRandomPulseClose"]=56,
        ["Blade4B"]=41,
        ["Blade4A"]=40,
        ["GoboPosRotate"]=16,
        ["ShutterStrobeRandom"]=53,
        ["Blade1Rot"]=33,
        ["ShutterStrobePulseOpen"]=51,
        ["ShutterStrobeRandomPulse"]=54,
        ["Focus"]=21,
        ["ShutterStrobePulse"]=50,
        ["PrismPosRotate"]=20,
        ["ShutterStrobe"]=26,
        ["Shutter"]=25,
        ["XYZ_Pos"]=5,
        ["Blade3A"]=37,
        ["GoboPos"]=15,
        ["PanTilt"]=4,
        ["GoboPosShake"]=17,
        ["Blade1A"]=31,
        ["IrisPulseClose"]=45,
        ["PrismPos"]=19,
        ["GoboWheelSpin"]=13,
        ["Prism"]=18,
        ["IrisStrobe"]=44,
        ["None"]=0,
        ["IrisRandomPulseClose"]=49,
        ["HSB"]=9,
        ["ShutterStrobePulseClose"]=52,
        ["ColorRGB"]=8,
        ["Blade2Rot"]=36,
        ["ColorWheelSpin"]=11,
        ["Blade2A"]=34,
    },
    ["SeqMasterGoMode"]=
    {
        ["Go"]=1,
        ["None"]=0,
        ["On"]=2,
        ["Top"]=3,
    },
    ["SpeedScale"]=
    {
        ["One"]=0,
        ["Div64"]=-6,
        ["Mul16"]=4,
        ["Mul256"]=8,
        ["Div2"]=-1,
        ["Div128"]=-7,
        ["Mul64"]=6,
        ["Mul128"]=7,
        ["Mul4"]=2,
        ["Mul8"]=3,
        ["Div8"]=-3,
        ["Div4"]=-2,
        ["Mul32"]=5,
        ["Div256"]=-8,
        ["Div32"]=-5,
        ["Div16"]=-4,
        ["Mul2"]=1,
    },
    ["BodyQuality3d"]=
    {
        ["None"]=0,
        ["High"]=5,
        ["Box"]=1,
        ["Ultra"]=6,
        ["Standard"]=4,
        ["Simple"]=3,
        ["Low"]=2,
    },
    ["GoboMode"]=
    {
        ["Enabled"]=1,
        ["Animated"]=2,
        ["Disabled"]=0,
    },
    ["PultType"]=
    {
        ["Web"]=2,
        ["Conventional"]=1,
        ["Any"]=0,
    },
    ["DebugUsbDataSection"]=
    {
        ["DmxIn"]=1,
        ["Software"]=15,
        ["Encoder"]=9,
        ["DmxOut"]=2,
        ["Midi"]=3,
        ["Smpte"]=4,
        ["Capabilities"]=19,
        ["Sync"]=12,
        ["Analog"]=6,
        ["Led"]=11,
        ["Ups"]=5,
        ["Text"]=17,
        ["Digital"]=7,
        ["All"]=0,
        ["Button"]=8,
        ["Protocol"]=13,
        ["HeartBeat"]=14,
        ["NotifierLayer"]=16,
        ["Fader"]=10,
        ["RTC"]=18,
    },
    ["DMXVirtualResolution"]=
    {
        ["24 bits"]=3,
        ["16 bits"]=2,
        ["8 bits"]=1,
    },
    ["RDMLampState"]=
    {
        ["LAMP_NOT_PRESENT"]=4,
        ["Manufacturer-Specific States"]=128,
        ["LAMP_OFF"]=0,
        ["LAMP_STANDBY"]=3,
        ["LAMP_STRIKE"]=2,
        ["LAMP_ERROR"]=127,
        ["LAMP_ON"]=1,
    },
    ["TimeDisplayFormatSelected"]=
    {
        ["10d11h23m45"]=1,
        ["<Default>"]=0,
        ["251h23m45"]=2,
        ["251:23:45"]=4,
        ["10.11:23:45"]=3,
    },
    ["EncoderLinkPhaser"]=
    {
        ["Single"]=0,
        ["Feature"]=1,
        ["AtFilter"]=2,
    },
    ["MatricksBlockNone"]=
    {
        ["None"]=0,
        ["No Block"]=-1,
    },
    ["DMXReadoutMode"]=
    {
        ["Hex8"]=0,
        ["Percent"]=6,
        ["Hex16"]=1,
        ["Hex24"]=2,
        ["Dec8"]=3,
        ["Dec24"]=5,
        ["Dec16"]=4,
    },
    ["ALSideSizeSpecial"]=
    {
        ["Auto"]=0,
        ["Hybrid"]=-1,
    },
    ["ValueReadoutModeNatural"]=
    {
        ["Decimal16"]=4,
        ["Percent"]=0,
        ["Hex16"]=7,
        ["Decimal8"]=3,
        ["Physical"]=2,
        ["Hex8"]=6,
        ["Decimal24"]=5,
        ["Natural"]=9,
        ["Hex24"]=8,
        ["PercentFine"]=1,
    },
    ["AgendaMode"]=
    {
        ["Dawn"]=1,
        ["Sunset"]=3,
        ["Sunrise"]=2,
        ["Absolute"]=0,
        ["Dusk"]=4,
    },
    ["AutoStomp"]=
    {
        ["On"]=2,
        ["Prio"]=1,
        ["Off"]=0,
    },
    ["SignalOff"]=
    {
        ["Off"]=4294967295,
    },
    ["SequenceCountdown"]=
    {
        ["All"]=2,
        ["Duration"]=1,
        ["Off"]=0,
    },
    ["DMXMergeMode"]=
    {
        ["HTP"]=2,
        ["Prio"]=1,
        ["LowTP"]=3,
        ["Off"]=0,
    },
    ["RDMPidValueOnOff"]=
    {
        ["On"]=1,
        ["Off"]=0,
    },
    ["CameraType"]=
    {
        ["Left"]=3,
        ["Front/Left"]=2,
        ["Right"]=7,
        ["Auto"]=0,
        ["Front/Right"]=8,
        ["Top"]=9,
        ["Back/Right"]=6,
        ["Back"]=5,
        ["Front"]=1,
        ["Back/Left"]=4,
    },
    ["AgendaTool"]=
    {
        ["Paste"]=5,
        ["Select"]=0,
        ["Store"]=1,
        ["Call"]=6,
        ["Edit"]=7,
        ["Delete"]=2,
        ["Copy"]=4,
        ["Cut"]=3,
    },
    ["RealtimeCmdSource"]=
    {
        ["Network"]=2,
        ["Original"]=0,
        ["Local"]=1,
    },
    ["DimmerWheelResolution"]=
    {
        ["Fine"]=2,
        ["Normal"]=0,
        ["Coarse"]=1,
    },
    ["LayoutTool"]=
    {
        ["Operate"]=0,
        ["Add"]=2,
        ["Select"]=1,
        ["Move"]=4,
        ["Delete"]=3,
        ["Resize"]=5,
        ["ResizeFixedRatio"]=6,
    },
    ["SignalSlot"]=
    {
        ["Slot 1"]=0,
        ["Slot 3"]=2,
        ["Slot 6"]=5,
        ["Slot 7"]=6,
        ["Slot 5"]=4,
        ["Off"]=4294967295,
        ["Slot 4"]=3,
        ["Slot 8"]=7,
        ["Slot 2"]=1,
    },
    ["TestBlockType"]=
    {
        ["ui"]=0,
        ["rt"]=2,
        ["root"]=1,
        ["lua"]=3,
    },
    ["MibMultiStep"]=
    {
        ["Paused"]=1,
        ["Running"]=0,
    },
    ["PhaseValueNone"]=
    {
        ["None"]=2147483647,
        ["90°"]=4194304,
        ["270°"]=12582912,
        ["180°"]=8388608,
        ["360°"]=16777216,
    },
    ["TransitionMode"]=
    {
        ["Slow"]=2,
        ["Fast"]=3,
        ["Sinus"]=1,
        ["Linear"]=0,
    },
    ["CuePartTextures"]=
    {
        ["IconCooking"]=0,
    },
    ["LayoutStretch"]=
    {
        ["Crop"]=2,
        ["Bar"]=1,
        ["Stretch"]=0,
    },
    ["RDMResponseNackReason"]=
    {
        ["The responder cannot comply with request because the message is not implemented in responder."]=0,
        ["Proxy is not the RDM line master and cannot comply with message."]=3,
        ["The proxy buffer is full and can not store any more Queued Message or Status Message responses."]=10,
        ["Sub-Device is out of range or unknown."]=9,
        ["The responder cannot comply due to an internal hardware fault."]=2,
        ["Not valid for Command Class attempted. May be used where GET allowed but SET is not supported."]=5,
        ["The responder cannot interpret request as controller data was not formatted correctly."]=1,
        ["Incoming message exceeds buffer capacity."]=8,
        ["SET Command normally allowed but being blocked currently."]=4,
        ["Buffer or Queue space currently has no free space to store data."]=7,
        ["Value for given Parameter out of allowable range or not supported."]=6,
    },
    ["PresetLinkMode"]=
    {
        ["None"]=-1,
        ["Both"]=2,
        ["Integrated"]=1,
        ["Referenced"]=0,
    },
    ["MibEnableMode"]=
    {
        ["Force Late "]=4,
        ["Never"]=1,
        ["Force UponGo"]=3,
        ["Enabled"]=0,
        ["Force Early"]=2,
    },
    ["RDMSensorUnit"]=
    {
        ["UNITS_NONE"]=0,
        ["UNITS_KILOGRAMMES_PER_METER_CUBED"]=15,
        ["UNITS_METERS"]=12,
        ["UNITS_WATT"]=10,
        ["UNITS_VOLTS_DC"]=2,
        ["UNITS_PASCAL"]=20,
        ["UNITS_DEGREE"]=22,
        ["UNITS_AMPERE_DC"]=5,
        ["UNITS_VOLTS_AC_PEAK"]=3,
        ["UNITS_VOLTS_AC_RMS"]=4,
        ["UNITS_STERADIAN"]=23,
        ["UNITS_SECOND"]=21,
        ["UNITS_CENTIGRADE"]=1,
        ["UNITS_AMPERE_AC_PEAK"]=6,
        ["UNITS_HERTZ"]=8,
        ["UNITS_METERS_PER_SECOND"]=16,
        ["UNITS_LUMEN"]=25,
        ["UNITS_OHM"]=9,
        ["UNITS_METERS_SQUARED"]=13,
        ["UNITS_JOULE"]=19,
        ["UNITS_METERS_CUBED"]=14,
        ["UNITS_AMPERE_AC_RMS"]=7,
        ["UNITS_LUX"]=26,
        ["UNITS_CANDELA"]=24,
        ["UNITS_IRE"]=27,
        ["UNITS_KILOGRAM"]=11,
        ["UNITS_METERS_PER_SECOND_SQUARED"]=17,
        ["UNITS_BYTE"]=28,
        ["UNITS_MS"]=128,
        ["UNITS_NEWTON"]=18,
    },
    ["TrackpadPTMode"]=
    {
        ["Both"]=2,
        ["Tilt Only"]=1,
        ["Pan Only"]=0,
    },
    ["RDMStatusMessageType"]=
    {
        ["STATUS_NONE"]=0,
        ["STATUS_ERROR"]=4,
        ["STATUS_ERROR_CLEARED"]=20,
        ["STATUS_WARNING_CLEARED"]=19,
        ["STATUS_ADVISORY"]=2,
        ["STATUS_WARNING"]=3,
        ["STATUS_ADVISORY_CLEARED"]=18,
        ["STATUS_GET_LAST_MESSAGE"]=1,
    },
    ["BloomIntensity3d"]=
    {
        ["On"]=1,
        ["Off"]=0,
    },
    ["RDMSlotType"]=
    {
        ["ST_PRIMARY"]=0,
        ["ST_SEC_INDEX_ROTATE"]=7,
        ["ST_SEC_CONTROL"]=4,
        ["ST_SEC_SPEED"]=3,
        ["ST_SEC_TIMING"]=2,
        ["ST_SEC_UNDEFINED"]=255,
        ["ST_SEC_ROTATION"]=6,
        ["ST_SEC_INDEX"]=5,
        ["ST_SEC_FINE"]=1,
    },
    ["GridMergeMode"]=
    {
        ["Append X"]=1,
        ["Off"]=0,
    },
    ["RequestedSize"]=
    {
        ["Default"]=0,
    },
    ["SectionCount"]=
    {
        ["3"]=3,
        ["Auto"]=0,
        ["1"]=1,
        ["2"]=2,
    },
    ["HostStatus"]=
    {
        ["Standalone"]=2,
        ["Startup"]=1,
        ["GlobalMaster"]=6,
        ["UpdateMode"]=9,
        ["IdleMaster"]=5,
        ["LicenceInvalid"]=10,
        ["Connected"]=3,
        ["NormalShutdown"]=7,
        ["ErrorShutdown"]=8,
        ["Undefined"]=0,
        ["LocalMaster"]=4,
    },
    ["FixtureTypeSource"]=
    {
        ["GDTF"]=2,
        ["Shares"]=4,
        ["In current show"]=5,
        ["grandMA3"]=0,
        ["grandMA2"]=1,
        ["User"]=3,
    },
    ["RDMSensorType"]=
    {
        ["SENS_AREA"]=8,
        ["SENS_CURRENT"]=2,
        ["SENS_ANGULAR_VELOCITY"]=21,
        ["SENS_HUMIDITY"]=31,
        ["SENS_MS"]=128,
        ["SENS_OTHER"]=127,
        ["SENS_TIME"]=16,
        ["SENS_LENGTH"]=7,
        ["SENS_ACCELERATION"]=12,
        ["SENS_ENERGY"]=14,
        ["SENS_MEMORY"]=29,
        ["SENS_POWER"]=5,
        ["SENS_POSITION_Y"]=19,
        ["SENS_LUMINOUS_FLUX"]=23,
        ["SENS_MASS"]=6,
        ["SENS_LUMINOUS_INTENSITY"]=22,
        ["SENS_POSITION_Z"]=20,
        ["SENS_DENSITY"]=10,
        ["SENS_CHROMINANCE_RED"]=25,
        ["SENS_RESISTANCE"]=4,
        ["SENS_POSITION_X"]=18,
        ["SENS_FORCE"]=13,
        ["SENS_CONTACTS"]=28,
        ["SENS_VOLTAGE"]=1,
        ["SENS_VELOCITY"]=11,
        ["SENS_CHROMINANCE_GREEN"]=26,
        ["SENS_FREQUENCY"]=3,
        ["SENS_ITEMS"]=30,
        ["SENS_TEMPERATURE"]=0,
        ["SENS_ANGLE"]=17,
        ["SENS_ILLUMINANCE"]=24,
        ["SENS_COUNTER_16BIT"]=32,
        ["SENS_CHROMINANCE_BLUE"]=27,
        ["SENS_VOLUME"]=9,
        ["SENS_PRESSURE"]=15,
    },
    ["DmxSheetSettingsLevelbar"]=
    {
        ["Background"]=1,
        ["Bar"]=2,
        ["Off"]=0,
    },
    ["GestureId"]=
    {
        ["PanScrollArea"]=3,
        ["!Invalid!"]=32769,
        ["Swipe"]=1,
        ["Pan"]=0,
        ["Click"]=2,
    },
    ["LayoutFitType"]=
    {
        ["Canvas"]=1,
        ["Elements"]=0,
        ["Both"]=2,
    },
    ["EncoderLinkResolution"]=
    {
        ["Single"]=0,
        ["FeatureGroup"]=1,
    },
}