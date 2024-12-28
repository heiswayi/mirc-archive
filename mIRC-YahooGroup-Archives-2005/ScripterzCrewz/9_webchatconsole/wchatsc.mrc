dialog wchat.servconsole {
  title "WebChat Service Console"
  size -1 -1 227 112
  option dbu
  icon network.ico, 0
  box "", 1, 2 0 223 110
  text "Welcome to WebChat Service Console®. To use this Console® , first select the service you want to use. The valid command would be displayed in the basic command menu. To execute a command , type the command without the */msg*. Press 'Execute' when you are done.", 2, 23 9 183 27, center
  text "WebChat Service Console® is an original remote done by Creatorz. The help file used are from WebChat Help Service. Information in the Help files are correct at the time this Console® is created . This Console® only tested on WebChat Servers. If you like to use this remote in your own script, please pass the credits to Creatorz. Thanks.", 3, 7 36 213 27, center
  text "..::[ Copyright ScripterzCrewz 2004 , All Rights Reserved ]::.. ", 4, 7 64 213 7, center
  text "Service", 5, 133 72 22 6
  combo 6, 117 81 50 50, vsbar drop
  text "Basic Command", 7, 177 72 40 7
  combo 8, 171 81 50 50, vsbar drop
  text "Input Command:", 9, 10 84 50 7
  edit "", 10, 10 94 158 12
  list 11, 5 7 217 72, hide extsel vsbar
  button "Execute", 12, 172 95 25 10
  button "Done", 13, 202 95 20 10, ok
}
menu menubar,status,channel {
  WebChat Console
  .Open Console:dialog -m wchat.servconsole wchat.servconsole
  .-
  .Unload Console:$iif($input(Do you want to unload WebChat Service Console?,520,Unload WebChat Service Console),.unload -rs $+(",$script,"),return)
}
on *:load:{
  if ($version < 5.91) { echo -a This addon is for mIRC v5.91 and later. Unloading WebChat Service Console. | .unload -rs " $+ $script $+ " }
  if ($isfile($scriptdirnetwork.ico) == $false) || ($isfile($scriptdirwchathelp.dat) == $false) { echo -a Missing file(s). Unloading WebChat Service Console. | .unload -rs " $+ $script $+ " }
  else { echo -a WebChat Service Console loaded. }
}
on *:dialog:wchat.servconsole:*:*: {
  if ($devent = init) { wchat.did -b 8,10,12 | didtok -ra wchat.servconsole 6 32 NickServ ChanServ MemoServ }
  if ($devent = edit) { if ($did == 10) { wchat.did -e 12 } }
  if ($devent = sclick) {
    if ($did == 6) { wchat.did -e 8,10 | wchat.did -rv 11 | wchat.did -h 2,3,4
      if ($did(6).text == NickServ) { wchat.did -r 8 | $wchat.comlist(NickServ) } 
      if ($did(6).text == ChanServ) { wchat.did -r 8 | $wchat.comlist(ChanServ) } 
      if ($did(6).text == MemoServ) { wchat.did -r 8 | $wchat.comlist(MemoServ) } 
    }
    if ($did == 8) { wchat.did -b 12 | wchat.did -r 11 | $wchat.servinfo($+($did(6).text,$did(8).sel)) }
    if ($did == 12) { 
      if ($server == $null) { wchat.did -ra 10 You are not connected. | return }
      if (webchat !isin $server) { $iif($input(You are not on WebChat/WebNet Server. Do you want to continue executing this command?,520),$did(10).text,return) }
      else { if ($did(10).text != $null) { $did(10).text } 
} } } }
alias wchat.did did $1 wchat.servconsole $2-
alias wchat.comlist { 
  var %i = $1 | goto %i
  :NickServ | var %n = 1 | while (%n <= $ini($scriptdirwchathelp.dat,NickServ,0)) { wchat.did -a 8 $readini -n $scriptdirwchathelp.dat nickserv $+(help,%n) | inc %n } | wchat.did -ra 10 /NickServ | goto end
  :ChanServ | var %n = 1 | while (%n <= $ini($scriptdirwchathelp.dat,ChanServ,0)) { wchat.did -a 8 $readini -n $scriptdirwchathelp.dat chanserv $+(help,%n) | inc %n } | wchat.did -ra 10 /ChanServ | goto end
  :MemoServ | var %n = 1 | while (%n <= $ini($scriptdirwchathelp.dat,MemoServ,0)) { wchat.did -a 8 $readini -n $scriptdirwchathelp.dat memoserv $+(help,%n) | inc %n } | wchat.did -ra 10 /MemoServ | goto end
  :end
}
alias wchat.servinfo { var %l = 1 | while (%l <= $ini($scriptdirwchathelp.dat,$1,0)) { wchat.did -a 11 $readini -n $scriptdirwchathelp.dat $1 $+(list,%l) | inc %l } | wchat.did -ra 10 / $+ $remove($1,0,1,2,3,4,5,6,7,8,9) $remove($readini $scriptdirwchathelp.dat $1 $+(list,1),command -) }
