<?php
//   Copyright 2019 NEC Corporation
//
//   Licensed under the Apache License, Version 2.0 (the "License");
//   you may not use this file except in compliance with the License.
//   You may obtain a copy of the License at
//
//       http://www.apache.org/licenses/LICENSE-2.0
//
//   Unless required by applicable law or agreed to in writing, software
//   distributed under the License is distributed on an "AS IS" BASIS,
//   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//   See the License for the specific language governing permissions and
//   limitations under the License.
//
////en_US_UTF-8_ITABASEH_MNU
$ary[101020] = "Maintenance (view/register/update/discard) can be performed on the target host.<BR>Please register the necessary information to the target host before executing each orchestrator.";
$ary[101030] = "Managed system item number";
$ary[101040] = "ITA target system list";
$ary[101050] = "ITA target system list";
$ary[101060] = "HW device type";
$ary[101070] = "Select HW device type.\n・NW(network)\n・ST(storage)\n・SV(server)";
$ary[101080] = "Host name";
$ary[101090] = "[Maximum length] 128 bytes";
$ary[102010] = "IP address";
$ary[102020] = "Enter in [Maximum length]15byte\nxxx.xxx.xxx.xxx format.";
$ary[102024] = "Ansible Dedicated information";
$ary[102025] = "Pioneer Dedicated information";
$ary[102026] = "Tower Dedicated information";
$ary[102030] = "Protocol";
$ary[102040] = "Protocol for device login through Ansible-Pioneer.";
$ary[102050] = "Login user ID";
$ary[102060] = "[Maximum length] 30 bytes";
$ary[102061] = "Login password";
$ary[102062] = "Management";
$ary[102063] = "Login password is required for ●.";
$ary[102070] = "Login password";
$ary[102071] = "Input for login password is mandatory when ● is set in login password management.";
$ary[102072] = "Input for login password is not allowed when ● is not set in login password management.";
$ary[102073] = "Input for login password is mandatory when authentication method is password authentication.";
$ary[102074] = "Management of login password is mandatory when authentication method is password authentication.";
$ary[102075] = "Input value for authentication method is not valid.";
$ary[102080] = "[Maximum length] 30 bytes";
$ary[102085] = "Dedicated information for Legacy/Role";
$ary[102088] = "Authentication method";
$ary[102089] = "Management of login password should be ● for password method. \nSudo authority should be set as /etc/sudoers in login user for  key method. ";
$ary[102090] = "OS type";
$ary[102110] = "EtherWakeOnLan";
$ary[102120] = "Power ON";
$ary[102130] = "Power ON";
$ary[102140] = "MAC address";
$ary[102150] = "[Maximum length] 17 bytes";
$ary[102160] = "Network device name";
$ary[102170] = "[Maximum length] 256 bytes";
$ary[103010] = "Used for different dialog files based on OS type of device in Ansible-Pioneer.";
$ary[103015] = "Dedicated information for Cobbler";
$ary[103020] = "Profile";
$ary[103030] = "[Original data] Cobbler console/ profile list";
$ary[103040] = "Interface";
$ary[103050] = "[Maximum length] 256 bytes";
$ary[103051] = "Connection type";
$ary[103052] = "Sets the connection type for AnsibleTower credentials. Basically, select machine. Select Network for network devices that require ansible_connection set to locla.";
$ary[103060] = "MAC address";
$ary[103070] = "[Maximum length] 17 bytes";
$ary[103080] = "Netmask";
$ary[103090] = "[Maximum length] 15 bytes";
$ary[104010] = "Gateway";
$ary[104020] = "[Maximum length] 15 bytes";
$ary[104030] = "Static";
$ary[104040] = "[Maximum length] 32 bytes";
$ary[104050] = "Display order";
$ary[104060] = "To control display order";
$ary[104070] = "Maintenance (view/register/update/discard) can be performed on the input operation list.";
$ary[104080] = "No.";
$ary[104090] = "Input operation list information";
$ary[104101] = "Dedicated information for SCRAB ";
$ary[104111] = "Port number";
$ary[104112] = "For Linux OS type systems, set the port number of ssh.
For Windows OS type systems, set a port number of WinRM.
Generally port 22 is used for ssh and port 5985 is used for WinRM.";
$ary[104121] = "OS type";
$ary[104122] = "OS type of the node targeted for construction";
$ary[104131] = "Data link";
$ary[104132] = "When performing server information and data synchronization of SCARB, please choose \"●\".";
$ary[104141] = "Specified host format";
$ary[104142] = "Method to specify build node.";
$ary[104151] = "Authentication method";
$ary[104152] = "Set a method for authentication with SCARB.
For Windows OS type systems, choose a version of powershell. 
PowerShell version 4 or earlier
PowerShell version 5 or later
For Linux OS type systems, choose an authentication method from the following.
Password authentication
ssh key authentication
ssh config file";
$ary[104161] = "ssh authentication key file";
$ary[104162] = "When ssh key authentication is specified as the authentication method, input the path of the authentication key file.
The authentication key file must be located on a SCRAB server";
$ary[104171] = "ssh config file";
$ary[104172] = "When ssh config file is specified as the authentication method, input the path of the ssh config file.
The ssh config file must be located on a SCRAB server";
$ary[104201] = "Dedicated information for OpenAudIT";
$ary[104211] = "Connection type";
$ary[104212] = "";
$ary[104213] = "Community";
$ary[104214] = "";
$ary[104215] = "User name";
$ary[104216] = "";
$ary[104217] = "Password";
$ary[104218] = "";
$ary[104219] = "KEY File";
$ary[104220] = "";
$ary[104221] = "Security name";
$ary[104222] = "";
$ary[104223] = "Security level";
$ary[104224] = "";
$ary[104225] = "Authentication protocol";
$ary[104226] = "";
$ary[104227] = "Authentication passphrase";
$ary[104228] = "";
$ary[104229] = "Privacy protocol";
$ary[104230] = "";
$ary[104231] = "Privacy passphrase";
$ary[104232] = "";
$ary[104501] = "DSC Dedicated information";
$ary[104502] = "Certificate File";
$ary[104503] = "To encrypt credentials, enter a certificate file.";
$ary[104504] = "Thumbprint";
$ary[104505] = "To encrypt credentials, enter a thumbprint.";
$ary[104600] = "WinRM connection information";
$ary[104605] = "Port no";
$ary[104606] = "Specify the port number to use for WinRM connections to Windows Server. \nIf no port number is specified, the default port number (http:5985) will be used.";
$ary[104610] = "Server certificate";
$ary[104611] = "Enter the server certificate to use for WinRM connections to Windows Server over https.
If the Python version is 2.7 or later and does not verify the https server certificate.
    ansible_winrm_server_cert_validation=ignore";
$ary[104615] = "Connection options";
$ary[104616] = "When the protocol is ssh\nTo set options other than the ssh option set in ssh_args in /etc/ansible/ansible.cfg, specify the desired options.\n(Example)\n    To specify the ssh config file.\n      -F /root/.ssh/ssh_config\n\nWhen the protocol is telnet\nTo set options for telnet connections, specify the desired options.\n(Example)\n    To specify 11123 as the port number.\n      11123";
$ary[104620] = "Inventory file\nAdditional option";
$ary[104621] = "Enter additional options in YAML format to set inventory file options that ITA does not set.
(Example)
    ansible_connection: network_cli
    ansible_network_os: nxos";
$ary[104630] = "Instance group name";
$ary[104631] = "Specify the instance group to be set as the inventory of AnsibleTower / AWX.";
$ary[105010] = "Input operation list information";
$ary[105020] = "Operation name";
$ary[105030] = "[Maximum length] 256 bytes";
$ary[105040] = "Scheduled date for execution";
$ary[105050] = "Not used in the system";
$ary[105060] = "Operation ID";
$ary[105070] = "Operation ID (auto numbering)";
$ary[105080] = "Display order";
$ary[105090] = "To control display order";
$ary[106010] = "Select";
$ary[106020] = "You can perform maintenance(view/register/update/discard) for the OS type.";
$ary[106030] = "OS type ID";
$ary[106040] = "OS type master information";
$ary[106050] = "OS type master information";
$ary[106060] = "OS type name";
$ary[106070] = "Include till version.\n(Example)RHEL7.2";
$ary[106075] = "Device type";
$ary[106080] = "SV";
$ary[106090] = "";
$ary[107010] = "NW";
$ary[107020] = "";
$ary[107030] = "ST";
$ary[107040] = "";
$ary[107050] = "Display order";
$ary[107060] = "To control display order";
$ary[107070] = "The association between Movement and Orchestrator can be viewed.";
$ary[107080] = "Movement ID";
$ary[107090] = "Movement";
$ary[108010] = "Movement";
$ary[108020] = "Movement Name";
$ary[108030] = "[Maximum length] 256 bytes";
$ary[108040] = "Orchestrator";
$ary[108050] = "The orchestrator for use is displayed.";
$ary[108060] = "Delay timer";
$ary[108070] = "If there is a delay in the Movement as per the specified period (minutes), delayed status appears.";
$ary[108075] = "Dedicated information for Ansible";
$ary[108080] = "Host specific format";
$ary[108090] = "Method to specify  build node. ";
$ary[108091] = "Number of parallel executions";
$ary[108092] = "NULL or positive integer";
$ary[108100] = "WinRM connection";
$ary[108110] = "Select when the build node connects to a WinRM through a WindowsServer.";
$ary[108120] = "gather_facts";
$ary[108130] = "Select if you want to get the build node information (gather_facts) when executing Playbook.";
$ary[108200] = "OpenStack Dedicated information";
$ary[108210] = "HEAT template";
$ary[108220] = "Upload the HEAT template to execute. [Maximum size] 4GB";
$ary[108230] = "Environment configuration file";
$ary[108240] = "Upload the script file to be executed after executing the HEAT template. [Maximum size] 4GB";
$ary[108241] = "Tower Dedicated information";
$ary[108242] = "virtualenv";
$ary[108243] = "Ansible execution environment directory built with virtualenv is displayed.\nChoose the ansible execution environment you want to run.\nIf it is not choose, the ansible execution environment installed at the time of Tower installation will be used.";
$ary[108300] = "DSC Dedicated information";
$ary[108310] = "Error retry timeout";
$ary[108320] = "If the error persists beyond the specified time (seconds), the status will be in error.";
$ary[109006] = "ssh authentication key file";
$ary[109007] = "Enter the file used for key authentication by specifying the ssh authentication key file.\nPrepare a ssh authentication key file that can be authenticated as the root user.";
$ary[109010] = "Display order";
$ary[109020] = "To control display order";
$ary[109030] = "You can view Symphony class. <br>By clicking “Details”, transit to Symphony class edit menu.";
$ary[109040] = "Symphony class ID";
$ary[109050] = "Symphony class information";
$ary[109060] = "Symphony class information";
$ary[109070] = "Symphony name";
$ary[109080] = "[Maximum length] 256 bytes";
$ary[109090] = "Description";
$ary[201010] = "Detailed display";
$ary[201020] = "Details";
$ary[201030] = "Display order";
$ary[201040] = "To control display order";
$ary[201050] = "Select";
$ary[201060] = "You can view Symphony execution list (execution history). <br>By clicking “Details”, transit to Symphony execution check menu.";
$ary[201070] = "Symphony instance ID";
$ary[201080] = "Symphony instance information";
$ary[201090] = "Symphony instance information";
$ary[202010] = "Detailed display";
$ary[202020] = "Details";
$ary[202030] = "Symphony name";
$ary[202040] = "[Original data] Symphony class list";
$ary[202050] = "Operation";
$ary[202060] = "[Original data] Input operation list";
$ary[202070] = "Operation Name";
$ary[202080] = "[Maximum length] 256 bytes";
$ary[202090] = "Status";
$ary[203010] = "The following states exists for Status.\n
・Unexecuted
・Unexecuted(schedule)
・Executing
・Executing(delayed)
・Normal end
・Emergency stop
・Abend
・Unexpected error
・Schedule canceled";
$ary[203020] = "Emergency stop flag";
$ary[203030] = "[Original data] Check Symphony execution";
$ary[203040] = "Scheduled date/time";
$ary[203050] = "[Format]YYYY/MM/DD HH:MM";
$ary[203060] = "Start";
$ary[203070] = "[Format]YYYY/MM/DD HH:MM";
$ary[203080] = "End";
$ary[203090] = "[Format]YYYY/MM/DD HH:MM";
$ary[204010] = "Display order";
$ary[204020] = "To control display order";
$ary[204030] = "Select";
$ary[204040] = "Description";
$ary[204050] = "Edit Symphony";
$ary[201110] = "Executing user";
$ary[204060] = "Symphony class ID";
$ary[201120] = "[Original data] User list";
$ary[204070] = "Symphony name";
$ary[204071] = "Symphony role";
$ary[204080] = "Note";
$ary[204090] = "Start";
$ary[205010] = "Display filter";
$ary[205020] = "Contents";
$ary[205030] = "Auto filter";
$ary[205040] = "Filter";
$ary[205050] = "Clear filter.";
$ary[205060] = "Scheduling";
$ary[205065] = "The following Symphony executions are possible. <br>・Immediate execution<br>・Scheduled execution <br>Select the Symphony class ID and Operation ID to execute.
";
$ary[205070] = "Specify the scheduled date/time in (YYYY/MM/DD HH:MM) 
Immediately execute when blank.";
$ary[205080] = "Scheduled date/time.";
$ary[205090] = "Symphony [Filter]";
$ary[206010] = "Symphony [List]";
$ary[206020] = "Operation [Filter]";
$ary[206030] = "Operation [List]";
$ary[206040] = "Execute Symphony";
$ary[206050] = "Symphony class ID";
$ary[206060] = "Symphony name";
$ary[206070] = "Description";
$ary[206080] = "Start";
$ary[206090] = "Operation ID";
$ary[207010] = "Operation Name";
$ary[207020] = "Check Symphony execution";
$ary[207030] = "Symphony instance ID";
$ary[207040] = "Symphony name";
$ary[207050] = "Description";
$ary[207060] = "Start";
$ary[207070] = "Operation ID";
$ary[207080] = "Operation Name";
$ary[207090] = "Status";
$ary[208010] = "Scheduled date/time";
$ary[208020] = "Emergency stop command";
$ary[209000] = "Emergency stop command";
$ary[209001] = "Movement class ID";
$ary[209002] = "Symphony Movement list";
$ary[209003] = "Orchestrator ID";
$ary[209004] = "Movement ID";
$ary[209005] = "Sequence no";
$ary[209006] = "Pause";
$ary[209007] = "Description";
$ary[209008] = "Symphony class no";
$ary[209100] = "View of movement instance associated with symphony instance";
$ary[209101] = "Symphony instance id";
$ary[209102] = "Movement instance list";
$ary[209103] = "Movement class no";
$ary[209104] = "Orchestrator id";
$ary[209105] = "Pattern id";
$ary[209106] = "Pattern name";
$ary[209107] = "Time limit";
$ary[209108] = "Ansible host designate type id";
$ary[209109] = "Ansible winrm id";
$ary[209110] = "DSC retry timeout";
$ary[209111] = "Movement sequence number";
$ary[209112] = "Flag of next Pending";
$ary[209113] = "Description";
$ary[209114] = "Symphony instance no";
$ary[209115] = "Execution no";
$ary[209116] = "Status id";
$ary[209117] = "Flag of abort received";
$ary[209118] = "Start time";
$ary[209119] = "End time";
$ary[209120] = "Flag to hold release";
$ary[209121] = "Flag to skip execution";
$ary[209122] = "Overwrite operation no";
$ary[209123] = "Overwrite operation name";
$ary[209124] = "Overwrite operation id";
$ary[211000] = "Maintenance (view/register/update/discard) can be performed on the menu associated with the substitution value auto-registration setting.";
$ary[211001] = "Item No.";
$ary[211002] = "Associated menu";
$ary[211003] = "Associated menu";
$ary[211004] = "Menu group";
$ary[211005] = "ID";
$ary[211006] = "This item is not subject to be updated at the time of register or update. (Update menu ID)";
$ary[211007] = "Name";
$ary[211008] = "This item is not subject to be updated at the time of register or update. (Update menu ID)";
$ary[211009] = "Menu";
$ary[211010] = "ID";
$ary[211011] = "This item is not subject to be updated at the time of register or update. (Menu group: update menu)";
$ary[211012] = "Name";
$ary[211013] = "This item is not subject to be updated at the time of register or update. (Menu group: update menu)";
$ary[211014] = "Menu group:Menu";
$ary[211015] = "Sheet type";
$ary[211016] = "Permission role flg";
$ary[212000] = "Associated menu table list";
$ary[212001] = "Item No.";
$ary[212002] = "Associated menu table list";
$ary[212003] = "Associated menu table list";
$ary[212004] = "Menu";
$ary[212005] = "Table name";
$ary[212006] = "Primary key";
$ary[213000] = "Associated menu column list";
$ary[213001] = "Item No.";
$ary[213002] = "Associated menu column list";
$ary[213003] = "Associated menu column list";
$ary[213004] = "Menu";
$ary[213005] = "Column";
$ary[213006] = "Item name";
$ary[213007] = "Reference table name";
$ary[213008] = "Reference primary key";
$ary[213009] = "Reference column name";
$ary[213010] = "Display order";
$ary[213011] = "Class";
$ary[214001] = "Maintenance (view/register/update/discard) can be performed on data deletion information with an operation that has an expired retention period.";
$ary[214002] = "No";
$ary[214003] = "Operation deletion management";
$ary[214004] = "Operation deletion management";
$ary[214005] = "Logical deletion days";
$ary[214006] = "";
$ary[214007] = "Physical deletion days";
$ary[214008] = "";
$ary[214009] = "Table name";
$ary[214010] = "";
$ary[214011] = "Primary key column name";
$ary[214012] = "";
$ary[214013] = "Operation ID column name";
$ary[214014] = "";
$ary[214015] = "Data storage path acquisition SQL";
$ary[214016] = "";
$ary[214017] = "History data path 1";
$ary[214018] = "";
$ary[214019] = "History data path 2";
$ary[214020] = "";
$ary[214021] = "History data path 3";
$ary[214022] = "";
$ary[214023] = "History data path 4";
$ary[214024] = "";
$ary[215001] = "Maintenance (view/register/update/discard) can be performed on data deletion information with a file that has an expired retention period.";
$ary[215002] = "No";
$ary[215003] = "File deletion management";
$ary[215004] = "File deletion management";
$ary[215005] = "Deletion days";
$ary[215006] = "";
$ary[215007] = "Directories to delete";
$ary[215008] = "";
$ary[215009] = "Files to delete";
$ary[215010] = "";
$ary[215011] = "Delete subdirectories";
$ary[215012] = "";
$ary[301010] = "AD group judgement";
$ary[301020] = "Item No.";
$ary[301030] = "AD group judgement";
$ary[301040] = "AD group judgement";
$ary[301050] = "AD group identifier";
$ary[301060] = "AD group identifier";
$ary[301070] = "ITA role";
$ary[301080] = "ITA role";
$ary[302010] = "AD user judgement";
$ary[302020] = "Item No.";
$ary[302030] = "AD user judgement";
$ary[302040] = "AD user judgement";
$ary[302050] = "AD user identifier";
$ary[302060] = "AD user identifier";
$ary[302070] = "ITA user";
$ary[302080] = "ITA user";
$ary[303000] = "You can perform maintenance (view/register/update/discard) of the interface information on Symphony. <br>This menu should be one record.";
$ary[303010] = "No";
$ary[303020] = "Symphony Interface information";
$ary[303030] = "Symphony Interface information";
$ary[303040] = "Data relay storage path";
$ary[303050] = "ITA shared directory for each Symphony instance.";
$ary[303060] = "Status monitoring cycle (milliseconds)";
$ary[303070] = "The execution status refresh interval while Symphony is executing. \n Although tuning is required depending on the environment, the recommended value is 3000 milliseconds.";
$ary[900001] = "Export";
$ary[900002] = "Upload";
$ary[900003] = "Import";
$ary[900004] = "Upload a file you want to import";
$ary[900005] = "Upload file";
$ary[900006] = "Export menu";
$ary[900007] = "Import menu";
$ary[900008] = "Export/Import data list";
$ary[900009] = "Import process has registred.<br>Execution No.：[<strong>{}</strong>]";
$ary[900010] = "The following functions are provided.<br>・View of exported or imported data list";
$ary[900011] = "The following functions are provided.<br>・Upload import data<br>&nbsp;&nbsp;&nbsp;&nbsp;Upload the kym file containing the compressed data to import<br><br>・Import data<br>&nbsp;&nbsp;&nbsp;&nbsp;A list of importable menus is displayed.<br>&nbsp;&nbsp;&nbsp;&nbsp;Select the menus to import and click the import button.<br>&nbsp;&nbsp;&nbsp;&nbsp;The status of imported data can be checked from the \"Export/Import data list\".";
$ary[900012] = "The following functions are provided.<br>&nbsp;&nbsp;・Export data<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Select menus you want to export and click the export button.";
$ary[900013] = "Execution No.";
$ary[900014] = "Status";
$ary[900015] = "File name";
$ary[900016] = "The following states exist for status.\n・Unexecuted\n・Executing\n・Completed\n・Completed (error)";
$ary[900017] = "Cannot be edited (auto-registration)";
$ary[900018] = "All menus";
$ary[900019] = "Import (without discarded data)";
$ary[900020] = "Import type";
$ary[900021] = "The following states exist for Import type.\n・Normal\n・Without discarded data";
$ary[900022] = "Execution type";
$ary[900023] = "The following states exist for Execution type.\n・Export\n・Import";
$ary[900024] = "The data export process has been registred.<br>Execution No.：[<strong>{}</strong>]";
$ary[900025] = "Mode";
$ary[900026] = "Override";
$ary[900027] = "Add";
$ary[900028] = "Abolition data";
$ary[900029] = "Normal";
$ary[900030] = "Without disuse data";
$ary[900031] = "The following modes exist.\n・Override\n・Add";
$ary[900032] = "The following abolition data exists.\n・Normal\n・Without disuse data";
$ary[900051] = "The following functions are provided.<br>&nbsp;&nbsp;・Export Symphony/Operation data<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Select Symphony/Operation you want to export and click the export button.";
$ary[900052] = "The following functions are provided.<br>・Upload import Symphony/Operation data<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Upload the kym2 file containing the compressed data to import<br><br>・Import Symphony/Operation data<br>&nbsp;&nbsp;&nbsp;&nbsp;A list of importable Symphony/Operation is displayed.<br>&nbsp;&nbsp;&nbsp;&nbsp;Select the Symphony/Operation to import and click the import button.<br>&nbsp;&nbsp;&nbsp;&nbsp;The status of imported data can be checked from the \"Export/Import Symphony/Operation list\".";
$ary[900053] = "All Operations";
$ary[900054] = "All Symphonies";
$ary[900055] = "The following functions are provided.<br>・View of exported or imported Symphony/Operation list";
$ary[900056] = "Export/Import Symphony/Operation list";
$ary[900057] = "Export Symphony/Operation";
$ary[900058] = "The Symphony/Operation export process has been registred.<br>Execution No.：[<strong>{}</strong>]";
$ary[900059] = "Import Symphony/Operation";
$ary[900060] = "The Symphony/Operation import process has registred.<br>Execution No.：[<strong>{}</strong>]";
$ary[105075] = "Last execution date";
$ary[105076] = "Date/time when the operation was actually performed.";
$ary[910001] = "version";
$ary[910002] = "driver";
$ary[910003] = "version";
$ary[900100] = "Orchestrator ID";
$ary[900101] = "Movement ID";
$ary[900102] = "pause(OFF:/ON:checkedValue)";
$ary[900103] = "Description";
$ary[900104] = "Operation ID (Specified individually)";
$ary[920001] = "Symphony can be run periodically according to a schedule.
<br>Select the target symphony, operation, and enter detailed settings from \"Schedule Setting\".";
$ary[920002] = "RegularlyID";
$ary[920003] = "RegularlyWorkInformation";
$ary[920004] = "RegularlyWorkInformation";
$ary[920005] = "RegularlyWorkList";
$ary[920006] = "Status";
$ary[920007] = "The following states exists for Status.\n
・In preparation\n
・In operation\n
・Completed\n
・Mismatch error\n
・Linking error\n
・Unexpected error\n
・Symphony discard\n
・Operation discard";
$ary[920008] = "Schedule setting";
$ary[920009] = "Schedule";
$ary[920010] = "Next execution date";
$ary[920011] = "Start date";
$ary[920012] = "End date";
$ary[920013] = "Period";
$ary[920014] = "Interval";
$ary[920015] = "Week number";
$ary[920016] = "Day of weeek";
$ary[920017] = "Day";
$ary[920018] = "Time";
$ary[920019] = "Work suspension period";
$ary[920020] = "Start";
$ary[920021] = "End";
$ary[920022] = "Symphony name";
$ary[920023] = "[Original data] Symphony class list";
$ary[920024] = "Operation";
$ary[920025] = "[Original data] Input operation list";
$ary[920026] = "Auto-input";
$ary[920027] = "Execution user";
$ary[920028] = "User to run Symphony (The registered/updated user will be automatically filled in)";
$ary[111010] = "Terraform Dedicated information";
$ary[111020] = "Organization:Workspace";
$ary[111030] = "Target Organization:Workspace.";
$ary[304000] = "Conductor interface information can be maintained (view/register/update/retire). <br>This menu must be 1 record.";
$ary[304010] = "No";
$ary[304020] = "Conductor interface information";
$ary[304030] = "Conductor interface information";
$ary[304040] = "Data relay storage path";
$ary[304050] = "A shared directory for each Conductor instance on the ITA side.";
$ary[304060] = "Condition monitoring cycle (unit: millisecond)";
$ary[304070] = "Interval to refresh the work status when Conductor is executed. \nTuning is required for each environment, but normally 3000 milliseconds is the recommended value.";
$ary[305030] = "You can browse the Conductor class. <br> Click \"Details\" to go to the Conductor class edit menu.";
$ary[305040] = "Conductor class ID";
$ary[305050] = "Conductor class information";
$ary[305060] = "Conductor class information";
$ary[305070] = "Conductor name";
$ary[305080] = "[Maximum length] 256 bytes";
$ary[305090] = "Explanation";
$ary[306010] = "Conductor work list (execution history) can be viewed. <br> Click \"Details\" to go to the Conductor work confirmation menu.";
$ary[306020] = "Conductor instance ID";
$ary[306030] = "Conductor instance information";
$ary[306040] = "Conductor instance information";
$ary[306050] = "Conductor name";
$ary[306060] = "[Original data] Conductor class list";
$ary[306070] = "Emergency stop flag";
$ary[306080] = "[Original data] Conductor work confirmation";
$ary[307001] = "You can run Conductor regularly according to a schedule. <br>Select the target Conductor, operation, and enter the detailed settings from \"Schedule Settings\".";
$ary[307002] = "Periodic work execution ID";
$ary[307003] = "Regular work execution information";
$ary[307004] = "Regular work execution information";
$ary[307005] = "Check the work list";
$ary[307006] = "status";
$ary[307007] = "There are the following states in the status.\n
・Preparing\n
・In operation\n
・Done\n
・Inconsistency error\n
・Linking error\n
・Unexpected error\n
・Abolished Conductor\n
・Operation abolition";
$ary[307008] = "Schedule settings";
$ary[307009] = "Schedule";
$ary[307010] = "Next execution date";
$ary[307011] = "Start date";
$ary[307012] = "End date";
$ary[307013] = "period";
$ary[307014] = "interval";
$ary[307015] = "Week number";
$ary[307016] = "Day of the week";
$ary[307017] = "Day";
$ary[307018] = "time";
$ary[307019] = "Work suspension period";
$ary[307020] = "start";
$ary[307021] = "End";
$ary[307022] = "Conductor name";
$ary[307023] = "[Original data]-Conductor list";
$ary[307024] = "Operation name";
$ary[307025] = "[Original data] Input operation list";
$ary[307026] = "Auto-input";
$ary[307027] = "Execution user";
$ary[307028] = "User to run Conductor (The registered/updated user will be automatically filled in)";
$ary[308000] = "You can browse the Node associated with the Conductor class.";
$ary[308001] = "Node class id";
$ary[308002] = "List of Conductor pegged nodes";
$ary[308003] = "Node name";
$ary[308004] = "Node type id";
$ary[308005] = "Orchestrator id";
$ary[308006] = "Pattern id";
$ary[308007] = "Conductor class no";
$ary[308008] = "Conductor call class no";
$ary[308009] = "Operation no idbh";
$ary[308010] = "Skip flag";
$ary[308100] = "You can browse the Terminal associated with the Node class.";
$ary[308101] = "Terminal class id";
$ary[308102] = "Node pegging terminal list";
$ary[308104] = "Terminal type id";
$ary[308105] = "Terminal name";
$ary[308106] = "Node class no";
$ary[308107] = "Conductor class no";
$ary[308108] = "Conductor node name";
$ary[308109] = "Conditional id";
$ary[308110] = "Case no";
$ary[308200] = "You can browse the Conductor instance.";
$ary[308201] = "Conductor instance id";
$ary[308202] = "Conductor instance list";
$ary[308203] = "I Conductor class no";
$ary[308204] = "Operation no uapk";
$ary[308205] = "Status id";
$ary[308206] = "Execution user";
$ary[308207] = "Abort execution flg";
$ary[308208] = "Conductor ncall flg";
$ary[308209] = "Conductor caller no";
$ary[308210] = "Time book";
$ary[308211] = "Time start";
$ary[308212] = "Time end";
$ary[308300] = "You can browse Node instances.";
$ary[308301] = "Node instance id";
$ary[308302] = "List of Node instances";
$ary[308303] = "I node class no";
$ary[309001] = "You can run the Conductor. <BR>-Immediate execution <BR>-Reserved execution <BR> is possible. <BR>Please select Conductor class ID and operation ID when executing.";
$ary[309002] = "Conductor [filter]";
$ary[309003] = "Conductor [List]";
$ary[309004] = "Conductor execution";
$ary[309005] = "Conductor class ID";
$ary[309006] = "Conductor name";
$ary[309007] = "New";
$ary[309008] = "Save";
$ary[309009] = "Read";
$ary[309010] = "Cancel";
$ary[309011] = "Redo";
$ary[309012] = "Delete node";
$ary[309013] = "The entire display";
$ary[309014] = "Display reset";
$ary[309015] = "full screen";
$ary[309016] = "Full screen release";
$ary[309017] = "log";
$ary[309018] = "Registration";
$ary[309019] = "To edit";
$ary[309020] = "Diversion";
$ary[309021] = "update";
$ary[309022] = "Reload";
$ary[309023] = "Cancel";
$ary[309024] = "Execution";
$ary[309025] = "Cancel reservation";
$ary[309026] = "Emergency stop";
$ary[309027] = "Conductor name";
$ary[309028] = "Input data set (zip)";
$ary[309029] = "Result data set (zip)";
$ary[309030] = "download(.zip)";
$ary[309031] = "Input data set (zip)";
$ary[309032] = "Result data set (zip)";
$ary[309033] = "download(.zip)";
$ary[309034] = "It is populated data set (zip).";
$ary[309035] = "It is result data set (zip).";
?>