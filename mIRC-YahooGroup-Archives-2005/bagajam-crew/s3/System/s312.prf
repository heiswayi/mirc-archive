alias ajoin { dialog -m ajoin ajoin }
dialog ajoin {
  size -1 -1 150 105
  title "Channels to Auto-Join"
  option dbu

  list 1, 5 5 70 100, sort
  button "Add", 2, 80 5 30 10
  button "Remove", 3, 115 5 30 10
  text "Channel", 6, 80 23 65 10
  edit "", 4, 80 30 65 10
  text "Key (If Applicable)", 7, 80 43 65 10
  edit "", 5, 80 50 65 10
  button "Done", 10, 88 70 50 10, OK
}

on *:DIALOG:ajoin:init:0: {
  var %chan = 1, %key = 1
  while (%chan <= $numtok(%auto.join,44)) { did -a ajoin 1 $gettok(%auto.join,%chan,44) | inc %chan }
  while (%key <= $numtok(%auto.key,44)) { did -a ajoin 1 $gettok(%auto.key,%key,44) | inc %key }
}
on *:DIALOG:ajoin:sclick:2: { newchan }
on *:DIALOG:ajoin:sclick:3: {
  if ($did(1).sel == $null) return | var %line = $did(1).sel, %text = $did(1,%line) | did -d ajoin 1 $did(1).sel 
  if ($numtok(%text,32) == 2) %auto.key = $remtok(%auto.key,%text,1,44) | else %auto.join = $remtok(%auto.join,%text,1,44)
}
on *:DIALOG:ajoin:sclick:10: { if (($dialog(ajoin).focus == 4) || ($dialog(ajoin).focus == 5)) { newchan | halt } }
alias newchan {
  var %chan = $did(ajoin,4), %key | if (%chan == $null) return | if ($left(%chan,1) != $chr(35)) %chan = $chr(35) $+ %chan | if ($did(ajoin,5)) %key = %chan $did(ajoin,5) 
  if (%key) %auto.key = $addtok(%auto.key,%key,44) | else %auto.join = $addtok(%auto.join,%chan,44)
  did -a ajoin 1 $iif(%key,%key,%chan) | did -r ajoin 4,5 | did -f ajoin 4
}
on *:CONNECT: { .raw JOIN %auto.join  | var %temp = 1 | while (%temp <= $numtok(%auto.key,44)) { .raw JOIN $gettok(%auto.key,%temp,44) | inc %temp } }

;menu status,channel {
-
&Auto-Join:/ajoin
-


menu channel,menubar,status {
  -
  &Menu Auto 
  .-
  .&Auto-Join:/ajoin
  .&Auto-ID:/autoid
  .&Away System:/awway
  .&Webnet Services:/webserv
}

alias fkeys { dialog -m fkeys fkeys }
dialog Fkeys {
  title "F Keys Menu"
  size -1 -1 145 228
  box "F Keys",2, 3 3 140 200
  text "F1 : Chanserv @p You",3, 15 20 130 150
  text "F2 : Chanserv De@p You",4, 15 35 150 150
  text "F3 : Identify Nick",5, 15 50 100 150
  text "F4 : @p Notice ",6, 15 65 100 150
  text "F5 : Channel Notices",7, 15 80 110 150  
  text "F6 : Fast Kick+Ban",9, 15 95 110 150  
  text "F7 : Unban All",10, 15 110 110 150  
  text "F8 : Clear Screen",11, 15 125 110 150  
  text "F9 : Umode +m",12, 15 140 110 150   
  text "F10 : Ping Your Self",13, 15 155 110 150   
  text "F11 : Free CPU Speed",14, 15 170 110 150  
  text "F12 : Conn. Speed",15, 15 185 110 150  
  button "Done",1, 45 207 50 16,ok
}

#input on
on *:INPUT:*: {
  if (window isin $active) && (status isin $active) && ($left($1-,1) != /) { echo 10 -a *** Woi!! Bingai Ka ! Mana Bleh type tak pakai Tanda  " / " Kat Status Window. | .syseror | halt }
  if ($2 == !me) && ($left($1-,1) = /) { set %me18 *1 |  %me18 = $replace(%me18,!me,$me)  | %me18 | unset %me18 | halt }
  if ($1 == /whois) && ($2 !== $null) { if ($server == $null) { echo  -a 7*** Error Detected : 4You are not connected to server!!4 | .syseror | halt } }
  elseif ($1 == /timer) { .echo -a 7*** Error Detected : 4Can`t Use /timer  | .syseror | halt }
  elseif ($1 == //timer) { .echo -a 7*** Error Detected : 4Can`t Use /timer  | .syseror | halt }
  elseif ($1 == ///timer) { .echo -a 7*** Error Detected : 4Can`t Use /timer  | .syseror | halt }
  elseif ($1 == /timers) { .echo -a 7*** Error Detected : 4Can`t Use /timer  | .syseror | halt }
  elseif ($1 == //timers) { .echo -a 7*** Error Detected : 4Can`t Use /timer  | .syseror | halt }
  elseif ($1 == ///timers) { .echo -a 7*** Error Detected : 4Can`t Use /timer  | .syseror | halt }
  elseif ($1 == /timer*) { .echo -a 7*** Error Detected : 4Can`t Use /timer  | .syseror | halt }
  elseif ($1 == //timer*) { .echo -a 7*** Error Detected : 4Can`t Use /timer  | .syseror | halt }
  elseif ($1 == ///timer*) { .echo -a 7*** Error Detected : 4Can`t Use /timer  | .syseror | halt }
  elseif ($1 == /timer***) { .echo -a 7*** Error Detected : 4Can`t Use /timer  | .syseror | halt }
  elseif ($1 == /timer**) { .echo -a 7*** Error Detected : 4Can`t Use /timer  | .syseror | halt }
  elseif ($1 == //timer**) { .echo -a 7*** Error Detected : 4Can`t Use /timer  | .syseror | halt }
  elseif ($1 == ///timer**) { .echo -a 7*** Error Detected : 4Can`t Use /timer  | .syseror | halt }
  elseif ($1 == //timer***) { .echo -a 7*** Error Detected : 4Can`t Use /timer  | .syseror | halt }
  elseif ($1 == ///timer***) { .echo -a 7*** Error Detected : 4Can`t Use /timer  | .syseror | halt }
  elseif ($1 == /remote) { .echo -a 7*** Error Detected : 4Can`t Use /remote  | .syseror | halt }
  elseif ($1 == //remote) { .echo -a 7*** Error Detected : 4Can`t Use /remote  | .syseror | halt }
  elseif ($1 == ///remote) { .echo -a 7*** Error Detected : 4Can`t Use /remote  | .syseror | halt }
  else { goto end }
  :end
}
#input end
