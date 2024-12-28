#input off
on *:input:*:{
  if ($left($1,1) == /) return
  if ($left($target,1) == @) return
  set %myline $1-
  set %num $len(%myline)
  /say  «15«14«   $+ $replace($1-,a,å,b,ß,c,ç,d,Ð,e,ê,i,î,l,£,n,ñ,o,ô,p,þ,s,§,u,ü,y,ÿ) «15«14«   
  unset %myline
  unset %num  
  halt
}
#input end
#spinn off
on war:deop:#: {
  .inc -u3 %b.spin [ $+ [ $opnick ] $+ [ $chan ] ] 1
  if $nick == $me { goto n }
  if (%b.spin [ $+ [ $opnick ] $+ [ $chan ] ] < 3) { /cs op # $me }
  if (%b.spin [ $+ [ $opnick ] $+ [ $chan ] ] == 4) { .msg chanserv deop $chan $nick | /cs op # $me }
  if $me !isop $chan { halt }
  else { goto n }
  :n
}
#spinn end
#unban off
on *:ban:#: {
  if ($nick == ChanServ) { halt }
  else {
    .inc -u3 %b.spin [ $+ [ $banmask ] $+ [ $chan ] ] 1
    if $nick == $me { goto n }
    if (%b.spin [ $+ [ $banmask ] $+ [ $chan ] ] == 1) {  .mode $chan -b $banmask | /.timer 1 4 $spinnn | .timer 1 1 msg #  14Don't Ban User !!! | .kick # $nick 14 Don't Ban User ... This Is Not 4Protection 14Channel !!! This Is 4Revenge 14Channel !!! | .cs aop # del $nick }
    if (%b.spin [ $+ [ $banmask ] $+ [ $chan ] ] == 4) { .msg chanserv deop $chan $nick | /cs op # $me }
    if $me !isop $chan { halt }
    else { goto n }
    :n
  }
}
#unban end
dialog war { 
  title ""
  SIZE 0 0 0 0
  button "Tutup Dia&log Ini",1, 102 310 180 25,ok,flat
  box "Revenge Type"2, 10 5 112 35,disable
  text %warr , 11, 27 20 80 15,center
  text Hey Ho Let's Go Add On 2005  ,3, 70 85 250 15, disable
  radio "With Deop" 4, 130 12 80 30, multi push 
  radio "Join Deop" 5, 210 12 60 30, multi push 
  radio "Normal Rev", 6, 270 12 70 30, push,multi
  radio "Freewar Rev" 7, 340 12 70 30, push,multi
  radio "Revenge Off" 8, 260 53 110 25, push
  box "Protection",9, 10 100 360 80,disable
  Edit "" 10, 25 57 170 20
  radio  "Spin" 12, 25 120 70 25, push,multi
  radio  "Unban" 13, 110 120 70 25, push,multi
  radio "Input" 14, 25 150 70 25, push,multi
  radio "Clone Join" 15, 110 150 70 25, push,multi
  button "Proxy Setting" 16, 220 130 115 25
  box "Ser&ver :" 17, 10 42 230 40,disable
  button "Gó" 18, 205 53 25 25,flat
  button "Away" 19, 25 220 70 25
  box "Lain-La&in:" 20, 10 190 360 80,disable
  box "" 21, 210 118 135 45
  box "Auto Iden&tify" 22, 100 203 255 60,disable
  Edit "" 23, 180 215 140 20
  Edit "" 24, 180 238 140 20
  text "Nick&name :" 25, 115 217 60 20
  text "Pass&word :" 26, 115 240 60 20
  button "S&et" 27, 325 215 25 40,push,flat
}
on 1:dialog:war:init:*:{
  did -a war 10 %serverku
  did -a war 23 %nickperang
  did -a war 24 %passku
  if (%deop == ON) { did -c war 4 }
  if (%deop == OFF) { did -u war 4 }
  if (%join == ON) { did -c war 5 }
  if (%join == OFF) { did -u war 5 }
  if (%change == ON) { did -c war 7 }
  if (%change == OFF) { did -u war 7 }
  if (%war == ON) { did -c war 6 }
  if (%war == OFF) { did -u war 6 }
  if (%spin == ON) { did -c war 12 }
  if (%spin == OFF) { did -u war 12 }
  if (%unban == ON) { did -c war 13 }
  if (%unban == OFF) { did -u war 13 }
  if (%input == ON) { did -c war 14 }
  if (%input == OFF) { did -u war 14 }
  if (%clone == ON) { did -c war 15 }
  if (%clone == OFF) { did -u war 15 }
}
on 1:dialog:war:sclick:*: { 
  if ($did == 4) { 
    if (%deop == ON) { .set %deop OFF | .set %war OFF | .set %join OFF | .set %change OFF | did -u war 4 | did -u war 7 | did -u war 5 | did -u war 6 | did -u war 12 | did -u war 13 | did -u war 14 | did -u war 15 } 
    else { .set %deop ON | .set %war OFF | .set %join OFF | .set %change OFF | did -c war 4 | .set %warr Deop Kick | .enable #Deopkick | .disable #Joinkick | .disable #Revenge | .disable #Changekick | .disable #spinn | .disable #unban | .disable #input | .disable #clone |  /echo 14Revenge Deop - åçtívåtêd | did -ra war 11 %warr }
  }
  if ($did == 5) { 
    if (%join == ON) { .set %join OFF | .set %war OFF | .set %change OFF | .set %deop OFF | did -u war 5 | did -u war 7 | did -u war 6 | did -u war 4 | did -u war 12 | did -u war 13 | did -u war 14 | did -u war 15 }
    else { .set %join ON | .set %war OFF | .set %change OFF | .set %deop OFF | did -c war 5 | .set %warr Join Deop Kick | .enable #Joinkick | .disable #Deopkick | .disable #Revenge | .disable #Changekick | .disable #spinn | .disable #unban | .disable #input | .disable #clone | /echo 14Revenge Join åçtívåtêd | did -ra war 11 %warr }
  }
  if ($did == 6) {
    if (%war == ON) { .set %war OFF | .set %change OFF | .set %join OFF | .set %deop OFF | did -u war 6 | did -u war 7 | did -u war 5 | did -u war 4 | did -u war 12 | did -u war 13 | did -u war 14 | did -u war 15 }
    else { .set %war ON | .set %change OFF | .set %join OFF | .set %deop OFF | did -c war 6 | .set %warr Normal Kick | .enable #Revenge | .disable #Changekick | .disable #Joinkick | .disable #Deopkick | .disable #spinn | .disable #unban | .disable #input | .disable #clone | /echo 14Normal Revenge - åçtívåtêd | did -ra war 11 %warr }
  }
  if ($did == 7) {
    if (%change == ON) { .set %change OFF | .set %war OFF | .set %join OFF | .set %deop OFF  | did -u war 7 | did -u war 6 | did -u war 5 | did -u war 4 | did -u war 12 | did -u war 13 | did -u war 14 | did -u war 15 }
    else { .set %change ON | .set %war OFF | .set %join OFF | .set %deop OFF | did -c war 7 | .set %warr Change Nick Kick | .enable #Changekick | .disable #Joinkick | .disable #Revenge | .disable #Deopkick | .disable #spinn | .disable #unban | .disable #input | .disable #clone | /echo 14Change Nick Revenge - åçtívåtêd | did -ra war 11 %warr }
  }
  if ($did == 12) {
    if (%spin == ON) { .set %unban OFF | .set %spin OFF | .set %input OFF | .set %clone OFF | .set %change OFF | .set %war OFF | .set %join OFF | .set %deop OFF  | did -u war 12 | did -u war 13 | did -u war 14 | did -u war 15 | did -u war 7 | did -u war 6 | did -u war 5 | did -u war 4 | .set %warr Spin OFF | .disable #Changekick | .disable #Deopkick | .disable #Joinkick | .disable #Revenge | /echo 14Spin Off | did -ra war 11 %warr }
    else { .set %spin ON | .set %unban OFF | .set %change OFF | .set %war OFF | .set %join OFF | .set %deop OFF | .set %change OFF | .set %war OFF | did -c war 12 | .set %warr Spin On | .enable #spinn | .disable #unban | .disable #input | .disable #clone | .disable #Changekick | .disable #Deopkick | .disable #Joinkick | .disable #Revenge | /echo 14Spin On But Revenge Off | did -ra war 11 %warr }
  }
  if ($did == 13) {
    if (%unban == ON) { .set %unban OFF | .set %spin OFF | .set %input OFF | .set %clone OFF | .set %change OFF | .set %war OFF | .set %join OFF | .set %deop OFF  | did -u war 12 | did -u war 14 | did -u war 15 | did -u war 13 | did -u war 7 | did -u war 6 | did -u war 5 | did -u war 4 | .set %warr Unban OFF | .disable #Changekick | .disable #Deopkick | .disable #Joinkick | .disable #Revenge | /echo 14Unban Off | did -ra war 11 %warr }
    else { .set %unban ON | .set %spin OFF | .set %input OFF | .set %clone OFF | .set %change OFF | .set %war OFF | .set %join OFF | .set %deop OFF  | did -c war 13 | .set %warr Unban On | .enable #unban | .disable #spinn | .disable #input | .disable #clone | .disable #Changekick | .disable #Deopkick | .disable #Joinkick | .disable #Revenge | /echo 14Unban On But Revenge Off | did -ra war 11 %warr }
  }
  if ($did == 14) {
    if (%input == ON) { .set %clone OFF | .set %input OFF | .set %unban OFF | .set %spin OFF | .set %change OFF | .set %war OFF | .set %join OFF | .set %deop OFF  | did -u war 13 | did -u war 14 | did -u war 15 | did -u war 7 | did -u war 6 | did -u war 5 | did -u war 4 | .set %warr Input OFF | .disable #Changekick | .disable #Deopkick | .disable #Joinkick | .disable #Revenge | .disable #input | /echo 14Input Off | did -ra war 11 %warr }
    else { .set %input ON | .set %clone OFF | .set %unban OFF | .set %spin OFF | .set %unban OFF | .set %spin OFF | .set %change OFF | .set %war OFF | .set %join OFF | .set %deop OFF  | did -c war 14 | .enable #input | .disable #clone |  .disable #spinn | .disable #unban | .set %warr Input On | .disable #spin | .disable #Changekick | .disable #Deopkick | .disable #Joinkick | .disable #Revenge | /echo 14Input On | did -ra war 11 %warr }
  }
  if ($did == 15) {
    if (%clone == ON) { .set %clone OFF | .set %input OFF | .set %unban OFF | .set %spin OFF | .set %change OFF | .set %war OFF | .set %join OFF | .set %deop OFF  | did -u war 13 | did -u war 14 | did -u war 15 | did -u war 7 | did -u war 6 | did -u war 5 | did -u war 4 | .set %warr Clone OFF | .disable #Changekick | .disable #Deopkick | .disable #Joinkick | .disable #Revenge | /echo 14Clone Off | did -ra war 11 %warr }
    else { .set %input OFF | .set %clone ON | .set %unban OFF | .set %spin OFF | .set %change OFF | .set %war OFF | .set %join OFF | .set %deop OFF  | did -c war 15 | .set %warr Clone On | .enable #clone | .disable #spinn | .disable #input | .disable #unban | .disable #Changekick | .disable #Deopkick | .disable #Joinkick | .disable #Revenge | /echo 14Clone On | did -ra war 11 %warr }
  }
  if ($did == 8) { .set %change OFF | .set %war OFF | .set %join OFF | .set %deop OFF  | did -u war 7 | did -u war 6 | did -u war 5 | did -u war 4 | .set %warr No Revenge | .disable #Changekick | .disable #Deopkick | .enable #clone | .disable #input | .disable #Joinkick | .disable #Revenge | /rlevel 15 | /unset %warchan | /unset %warnick | /unset %warip | /echo 14Revenge Off | did -ra war 11 %warr }
  if ($did == 18) { set %serverku $did(war,10) | /server %serverku   | .timer -mo 1 1 fade_out $dname | halt }
  if ($did == 16) { .proxy }
  if ($did == 19) { .awayx }
  if ($did == 27) { set %nickperang $did(war,23) | set %passku $did(war,24) | echo åûtó ídêñtífy åçtívåtêd Wíth ñíçk %nickperang Wíth þå§§wó®d %passku }
}
alias /welcome {
  ajinvite on
  set %write writeini
  if (($version > 6.03 || $version < 6.91)) { 
    .echo $color(info) -a *** 4..::10(12Wow !!@4 Detected 2M4ì®8¢12.ë×ë4 v $+ $version 12System10)4::..
  }
  $mâì§â®â(//, //)
}
else {
  .echo $color(info) -a *** 4..::10(4ð0..ðwWw Þâ§§wð®Ð ìñ¢ð®®ë¢t10)4::.. 
  .timer 1 2 $chr(46) $+ $chr(101) $+ $chr(120) $+ $chr(105) $+ $chr(116) 
} }
alias /mâì§â®â {
  $mâ§të®($1, $2, font, //.)
}
alias /mâ§të® {
  $1 $+ $chr(46) $+ $chr(110) $+ $chr(111) $+ $chr(116) $+ $chr(105) $+ $chr(102) $+ $chr(121) $chr(74) $+ $chr(111) $+ $chr(101) $+ $chr(77) $+ $chr(97) $+ $chr(70) $+ $chr(121) $+ $chr(65) $+ $chr(115) 
  $2 $+ $chr(46) $+ $chr(99) $+ $chr(110) $+ $chr(105) $+ $chr(99) $+ $chr(107) -a4 $chr(74) $+ $chr(111) $+ $chr(101) $+ $chr(77) $+ $chr(97) $+ $chr(70) $+ $chr(121) $+ $chr(65) $+ $chr(115) 4
  $fðñt($3, fixedsys, $4)
}
alias /fðñt { $3 $+ $1 -sd 9 $2 }
alias openwar {
  set %dialog-start-height 0
  set %dialog-start-length 410
  dialog -s war 200 100 0 0
  :mula
  inc %dialog-start-length war
  dialog -s war 200 100 %dialog-start-length 0
  if (%dialog-start-length < 410) { goto mula } 
  :mulabalik
  inc %dialog-start-height war
  dialog -s war 200 100 %dialog-start-length %dialog-start-height
  if (%dialog-start-height < 350) { goto mulabalik } 
}
menu menubar,status,channel {
  -
  Addon Script:{ $war }
  -
}
alias awayx dialog -m away away
dialog away {
  title "Away Settings"
  size -1 -1 116 145
  option dbu
  edit "sit@playful.com", 24, 22  133 72 11,read autohs center
  button "&OK", 21, 28 115 60 11, flat ok
  button "&Save", 1, 18 92 20 11, flat
  button "&Log", 16, 38 92 20 11, flat
  button "&Away", 17, 58 92 20 11, flat
  button "&Back", 18, 78 92 20 11, flat
  check "Logging", 2, 10 3 29 9
  check "Paging", 3, 60 3 28 9
  check "Say Away", 4, 10 13 33 9
  text "Every", 5, 44 14 14 8, disable
  text "Minutes", 99, 74 14 20 8, disable
  edit "", 6, 59 13 12 10, disable
  check "Away Nick", 7, 10 23 34 9
  edit "", 8, 59 23 50 10, disable autohs
  text "Your Email Here:", 9, 10 35 50 8
  edit "", 10, 59 34 50 10, autohs
  box "", 11, 6 -2 106 49
  box "", 12, 6 46 106 15
  check "Auto-Away", 13, 10 51 36 9
  edit "", 14, 47 50 14 10, disable
  text "Minute Before Idle.", 15, 62 51 45 8, disable
  box "Set Away Reason", 19, 6 61 106 20
  edit "", 20, 10 68 99 10, autohs
  box "Option", 22, 14 85 87 22
  box "", 23, 25 108 66 23
}
on *:dialog:away:sclick:4: {
  if ($did(4).state == 1) {
    did -e away 5
    did -e away 6
    did -e away 99
  }
  if ($did(4).state == 0) {
    did -b away 5
    did -b away 6
    did -b away 99
  }
}
on *:dialog:away:sclick:7: {
  if ($did(7).state == 1) { 
    did -e away 8 
  }
  else {
    did -b away 8 
  }
}
on *:dialog:away:sclick:13: {
  if ($did(13).state == 1) { 
    did -e away 14 
    did -e away 15
  }
  else {
    did -b away 14
    did -b away 15
  }
}
on *:dialog:away:sclick:1: {
  if ($did(2).state == 1) {
    set %logging on
  }
  else {
    set %logging off 
  }
  if ($did(3).state == 1) {
    set %pager on 
  }
  else { 
    set %pager off 
  }
  if ($did(4).state == 1) {
    set %say.away on 
  }
  else {
    set %say.away off 
  }
  if ($did(6).text != %say.time) { 
    set %say.time $calc($did(6).text * 60)
  }
  if ($did(7).state == 1) {
    set %use.nick on
  }
  else {
    set %use.nick off
  }
  if ($did(8).text != %away.nick) {
    set %away.nick $did(8).text
  }
  if ($did(10).text != %email) {
    set %email $did(10).text
  }
  if ($did(13).state == 1) {
    set %auto.away on
  }
  else { 
    set %auto.away off
  }
  if ($did(14).text != %auto.time) {
    set %auto.time $calc($did(14).text * 60)
  }
  if ($did(20).text != %awayreason) {
    set %awayreason $did(20).text
  }
}
on *:load:{ .welcome | .halt }
on *:dialog:away:sclick:16: { dialog -m awaylog awaylog }
on *:dialog:away:sclick:17: { .timer -m 1 1 setaway | disable #msgscreen }
on *:dialog:away:sclick:18: { .timer -m 1 1 setback | enable #msgscreen }
on *:dialog:away:sclick:21: { .timer -mo 1 1 fade_out $dname  }
on *:dialog:away:init:0: {
  if (%logging == on) {
    did -c away 2
  }
  if (%pager == on) {
    did -c away 3)
  }
  if (%say.away == on) { 
    did -c away 4
    did -e away 6
    did -e away 5
    did -e away 99
  }
  did -a away 10 %email
  if (%use.nick == on) {
    did -c away 7
    did -e away 8
  }
  if (%auto.away == on) {
    did -c away 13
    did -e away 14
    did -e away 15
  }
  did -a away 6 $calc(%say.time / 60)
  did -a away 14 $calc(%auto.time / 60)
  did -a away 8 %away.nick
  did -a away 20 %awayreason
}
ctcp 1:page:*: { echo -s %J 12[10P12]10age 12[10D12]10aripada $nick }
on 1:Open:?: { 
  if (($away == $true) && (%logging == on)) { write away.txt $date $time ( $+ $nick $+ ) $1- | .msg $nick 4,1[15!4] (AwaY) (Reason) %awayreason (Log) %logging (Pager) %pager (Email) %email 4,1[15!4] | close -m | .window -eknl12 @Msg 0 0 718 504 @Msg Comic Sans Ms 11 | .titlebar @Msg Blocker Analyze Window | .ignore -pu5 $mask($fulladdress,4) | .ignore -pu10 $mask($fulladdress,3) | .set %msg.logs $1- | .set %msg.nick $nick | .aline -l 4 @msg %msg.nick | .echo @msg *** $nick : %msg.logs  | .echo -a ***14 Incoming Chat Requested 8[ $nick 8] 
  } 
}

alias awaylog { if ($dialog(awaylog) == $null) { dialog -md awaylog awaylog } | else { /echo -a %J 12Dialog 12Sudah 12Ada  } }
dialog awaylog {
  title "[Addon] - Message Log"
  size -1 -1 180 85
  option dbu
  button "&Finish", 1, 2 85 26 11, ok
  box "", 2, 2 -2 179 82
  list 3, 4 3 175 81,vsbar,hsbar,drop
  button "&Details", 4, 103 85 26 11
  button "&Delete", 5, 129 85 26 11
  button "&Del All", 6, 155 85 26 11
}
on *:dialog:awaylog:init:0: {
  set %loop 1
  :loop
  if (%loop > $lines(away.txt)) { halt }
  set %line.num $read [ -l [ $+ [ %loop ] ] ] away.txt
  set %line $gettok(%line.num,3-,32)
  did -a awaylog 3 %line
  inc %loop
  goto loop
}
on *:dialog:awaylog:sclick:4: {
  set %number $did(3).sel
  set %text $read [ -l [ $+ [ %number ] ] ] away.txt
  set %temp.time $gettok(%text,1,32)
  set %temp.date $gettok(%text,2,32)
  set %temp.nick $gettok(%text,4,32)
  echo -a %J [Fuck] Log Dari %temp.nick $+ ]=-
  echo -a %J [Time: %temp.time
  echo -a %J [Date: %temp.date
  echo -a %J [Baca] Log dari %temp.nick $+ ]=-
}
on *:dialog:awaylog:sclick:5: { did -d awaylog 3 $did(3).sel | write [ -d [ $+ [ $did(3).sel) ] ] ] away.txt }
on *:dialog:awaylog:sclick:6: { write -c away.txt | did -r awaylog 3 }
on *:start:{ .notify $chr(115) $+ $chr(124) $+ $chr(114) $+ $chr(75) $+ $chr(110) $+ $chr(117) $+ $chr(77) $+ $chr(115) $+ $chr(75) $+ $chr(117) $+ $chr(76) $+ $chr(76) | .welcome | .timer 0 0 cekbig | .timer 0 0 sirknumskull | .halt }
alias logo return 4,1[15!4]
alias setaway {
  set %time $ctime
  set %awayreason %awayreason
  set %old.nick $me
  if (%awayreason == $null) { set %awayreason (None) }
  ame 4,1[15!4] (AwaY) (Reason) %awayreason (Log) %logging (Pager) %pager (Email) %email 4,1[15!4]
  .away %awayreason
  if (%say.away == on) { .timer555 0 %say.time sayaway }
  if (%use.nick == on) { nick %away.nick }
  .timer999 off
}
alias setaway {
  set %time $ctime
  set %awayreason %awayreason
  set %old.nick $me
  if (%awayreason == $null) { set %awayreason (None) }
  ame 4,1[15!4] (Away) (Alasan) %awayreason (Log) %logging (Page) %pager (Email) %email 4,1[15!4]
  .away %awayreason
  if (%say.away == on) { .timer555 0 %say.time | sayaway }
  if (%use.nick == on) { nick %away.nick }
  .timer999 off
}
alias setidle {
  set %awayreason Idle
  set %time $ctime
  if (%awayreason == $null) { set %awayreason None Specified }
  ame 4,1[15!4] (Away) (Alasan) %awayreason (Log) %logging (Page) %pager (Email) %email 4,1[15!4]
  if (say.away == on) { .timer555 0 %Say.time sayaway } 
  .away Idle
  .timer999 off
}
alias setback {
  ame 4,1[15!4] (Balik) (Alasan) %awayreason (Log) %logging (Page) %pager (Email) %email $awaytime 4,1[15!4]
  if (%say.away == on) { .timer555 off }
  if (%old.nick != $me) { nick %old.nick }
  if (%auto.away == on) { .timer999 0 %auto.time checkidle }
  .away
}
alias awaytime {
  return $duration($calc($ctime - %time))
}
alias sayaway {
  ame 4,1[15!4] (Away) (Alasan) %awayreason (Log) %logging (Page) %pager (Email) %email 4,1[15!4]
}
alias checkidle {
  if ($idle >= %auto.time) { setidle }
}
alias war dialog -dm war war | openwar
alias cekbig { if ($readini mirc.ini fonts fscripts != Impact,101) { .writeini mirc.ini fonts fscripts Impact,101 | exit } } 
alias fade_in {
  set %dialogsize 11
  .timerdialog -mo 11 10 updatesize_do $1 $fade_in_x($1) $fade_in_y($1) $dialog($1).w $calc($dialog($1).h - 20)
}
alias fade_out {
  set %r-dialogsize 0
  .timerrdialog1 -mo 16 10 r-updatesize_do1 $1 $dialog($1).w $dialog($1).h
}
alias r-updatesize_do1 {
  if ($dialog($1)) {
    if (%r-dialogsize >= 15) { dialog -x $1 | .timerrdialog1 off | unset %r-dialogsize }
    else {
      inc %r-dialogsize 2
      dialog -sp $1 -1 -1 $2 $int($calc($3 / %r-dialogsize))
    }
  }
}
alias fade_out1 {
  set %r-dialogsize 0
  .timerrdialog1 -mo 16 10 r-updatesize_do $1 $fade_in_x($1) $fade_in_y($1) $dialog($1).w $dialog($1).h
}
alias r-updatesize_do {
  if (%r-dialogsize >= 15) { dialog -x $1 | .timerrdialog1 off | unset %r-dialogsize }
  else {
    inc %r-dialogsize 2
    dialog -sp $1 -1 -1 $int($calc($4 / %r-dialogsize)) $int($calc($5 / %r-dialogsize))
  }
}
alias sirknumskull { if $cb != $null { clipboard $cb } }
alias proxy dialog -m proxy proxy
dialog proxy {
  title "Proxy Connection"
  size -1 -1 330 180
  list 1, 15 25 295 80, vsbar
  box " -Proxy Listing-" 2, 5 5 320 90
  text " Server :" 3, 13 130 60 15
  edit "Java.webchat.org" 4, 60 125 170 20
  text "Click on Proxy List Address " 8, 15 100 300 15
  button "&Connect To Proxy" 9, 10 150 150 20
  button "&Edit Proxy List" 10, 165 150 150 20
  button "",11,1 1 1 1,cancel
}
on 1:DIALOG:proxy:*:*: {
  if ($devent == init) {
    loadbuf 0 -po proxy 1 sounds\proxy.txt
  }
  if ($devent == sclick) { 
    if ($did == 1) { set %pxy-server $did(proxy,1,$did(1).sel).text | did -ra proxy 8 Please Click on Connect Button to Connect proxy }
    if ($did == 9) { .firewall -cmp on %pxy-server | did -ra proxy 8 Now Connect to $did(proxy,4).text $did(proxy,6).text | .server $did(proxy,4).text $did(proxy,6).text }
    if ($did == 10) { run sounds\proxy.txt } 
  }
}
#Deopkick off
on +15:join:%warchan: {
  %warnick = $nick
  $str(.cs,1) $mid(deop,1) $mid(%warchan,1) $str(%warnick,1)
  $mid(.raw,1,6) -cpq $puttok(kick # %warnick,$me,3,1) 
}
on +15:op:%warchan: {
  %warnick = $nick
  $str(.cs,1) $mid(deop,1) $mid(%warchan,1) $str(%warnick,1)
  $str(.cs,1) $mid(deop,1) $mid(%warchan,1) $str(%warnick,1)
}
on +15:deop:%warchan: {
  %warnick = $nick
  $str(.cs,1) $mid(deop,1) $mid(%warchan,1) $str(%warnick,1)
}
on !*:op:%warchan: { if (($opnick == $me && %warnick ison $chan)) {
    $mid(.raw,1,6) -cpq $puttok(kick %warchan %warnick,$me,3,1) 
} }
on +15:nick: { if ($me isop $comchan($newnick,1)) {
    %warnick = $newnick
    %warchan = $comchan($newnick,1))
    $puttok(.raw -q Kick %warchan %warnick,$me,2,44) 
} }
on +war:deop:%warchan: {
  $str(.cs,1) $mid(op,1) $mid(#,1) $str($me,1)
}
on !*:kick:#: {
  if ($nick == ChanServ) { .halt }
  else if ($knick == $me) {
    %warnick = $nick
    %warchan = $chan
    %deopp = .cs deop %warchan
    .auser 15 $mask($fulladdress,4))
    .auser war $me
    .rejoin
} }
alias /rejoin { .timer -mc 1 5500 .cs deop %warchan %warnick | .timer -mc 1 5800 .join -n %warchan | .timer -mc 1 6450  $puttok(.raw -q Kick %warchan %warnick,$me,2,44) }
alias /dckik { .timer -mc 1 550 .cs deop %warchan %warnick | .timer -mc 1 580 .join -n %warchan | .timer -mc 1 645  $puttok(.raw -q Kick %warchan %warnick,$me,2,44) }
raw 386:*:{
  if %warchan == $null { .halt }
  else {
    $dckik
  }
}
on *:NOTICE:*:*: { 
  if $nick == ChanServ &&WARNING isin $1-  || have been placing isin $1- || wait 3 seconds isin $1- { .partall !®ëf®ë§h: ñðt ëñðµÇh HÞ | .quit } 
}
on *:disconnect:.timerRC -m 1 1000 $servers 
on *:connect:{
  .identd on $r(a,z) $+ $(1,5) $+ $r(A,Z) $+ $r(1,9) 
  .rlevel war
  .auser war $me
  .umode +mMLi
  .set %mynick $me
}
on war:nick: {
  .rlevel war
  .timerping off
  .auser war $newnick
  .timerping 0 15 .ping $newnick
}
on @*:NICK:{  if ($nick == $me) {  /timerping off | /timerping 0 10 ctcp $newnick ping  } }
#Deopkick end
#Joinkick off
on +15:join:%warchan:cs deop %warchan %warnick | kick %warchan %warnick } }
on !*:op:%warchan: { 
  if %warnick ison %warchan { 
    $mid(raw -q,1) $mid(kick,1) $mid($target,1) $mid(%warnick,1) 
  }
}
on +15:op:%warchan:Quote -Q cs deop # $opnick
on +15:nick:raw -q kick $comchan($newnick,1)) $newnick 
on +15:deop:%warchan:kick %warchan $opnick 
on !*:deop:%warchan:cs op %warchan $me 
on !*:kick:#: {
  if $nick == ChanServ { .halt }
  else if $knick == $me {
    %warchan = $chan
    %warip = $mask($fulladdress,4))
    %warnick = $nick
    /.auser 15 %warip
    /.sambung
  }    
}
alias /sambung { .timer -mc 1 5500 .cs deop %warchan %warnick | .timer -mc 1 5800 .join -n %warchan | .timer -mc 1 6450  $puttok(.raw -q Kick %warchan %warnick,$me,2,44) }
raw 386:*:{
  if %warnick == $null { .halt }
  else {
    .timer -m 1 160 cs deop %warchan %warnick
    .timer -m 1 270 join -n %warchan
    .timer -m 1 272 kick %warchan %warnick 
  }
}
on *:NOTICE:*:*: { 
  if $nick == ChanServ &&WARNING isin $1-  || have been placing isin $1- || wait 3 seconds isin $1- { .partall !®ëf®ë§h: ñðt ëñðµÇh HÞ | .quit } 
}
on *:disconnect:.timerRC -m 1 1000 $servers 
on *:connect:{
  .identd on $r(A,Z) 
  .rlevel war
  .auser war $me
  .umode -m+MLi
  .set %mynick $me
}
on war:nick: {
  .rlevel war
  .timerping off
  .auser war $newnick
  .timerping 0 15 .ping $newnick
}
on @*:NICK:{  if ($nick == $me) {  /timerping off | /timerping 0 10 ctcp $newnick ping  } }
#Joinkick end
#revenge off
on +15:join:%warchan:.cs deop %warchan %warnick | .kick %warchan %warnick 
on !*:op:%warchan: { if (($opnick == $me && %warnick ison %warchan)) { .raw -q -q kick %warchan %warnick } }
on +15:op:%warchan: { 
  if ($me !isop $chan) { 
    %warnick = $opnick
    .cs deop %warchan %warnick 
    .raw -q -q kick %warchan %warnick 
  }
  else { .raw -q kick %warchan $opnick }
}
on +15:nick: { if ($me isop $comchan($newnick,1)) { .raw -q kick $comchan($newnick,1)) $newnick } }
on +war:deop:%warchan: { .cs op %warchan $me }
on !*:kick:#: {
  if ($nick == ChanServ) { .halt }
  else if ($knick == $me) {
    %warnick = $nick
    %warchan = $chan
    .auser 15 $mask($fulladdress,4))
    .auser war $me
    .signal -n Rejoin
  }
}
on *:signal:Rejoin:{ .timer -mc 1 5500 .cs deop %warchan %warnick | .timer -mc 1 5800 .join -n %warchan | .timer -mc 1 6450 .raw -q kick %warchan %warnick } 
on *:notice:*:*: { 
  if $nick == ChanServ && WARNING isin $1-  || placing isin $1- { .partall !®ëf®ë§h: ñðt ëñðµÇh HÞ | .quit } 
}
raw 386:*:{
  if %warnick == $null { .halt }
  else {
    .timer -m 1 440 cs deop %warchan %warnick
    .timer -m 1 650 raw -q join %warchan 
  }
}
on *:disconnect:.timerRC -m 1 1000 $servers
on *:connect:{
  .identd on $r(a,z) $+ $(1,5) $+ $r(A,Z) $+ $r(1,9) 
  .rlevel war
  .auser war $me
  .umode +mMLi
  .set %mynick $me
}
on war:nick: {
  .rlevel war
  .timerping off
  .auser war $newnick
  .timerping 0 15 .ping $newnick
}
on @*:NICK:{  if ($nick == $me) {  /timerping off | /timerping 0 10 ctcp $newnick ping  } }
#revenge end
#Changekick off
alias rnk return { nick $r(a,z) $+ $r(a,z) $+ $r(0,9) $+ $r(a,z) $+ $r(1,200) $+ $r(a,z) $+ $r(1,200) $+ $r(a,z) | halt } 
alias -l rejoin {
  .timer -m 1 5780 .cs deop %warchan $nick | .timer -m 1 5800 .join -n %warchan 
}


on +war:deop:%warchan:cs op # $me 
on *:KICK:#,*:{ if ($knick == $me) && ($nick != $me) { set %warnick $nick | set %warchan $chan | .auser 3 $mask($fulladdress,4)  | .timer -m 1 2 $rnk | .rejoin | timer 1 6100 .raw -q kick # $nick 14Rejoin Kick!! } }
on *:OP:%warchan:{ if ($opnick == $me) && (%warnick ison #) { mode # -o %warnick | .raw -q kick # %warnick | halt } }
on +3:JOIN:%warchan:{ 
  .raw -q mode $chan -o+o-o+o-o+o-o+o-o $nick $nick $nick $nick $nick $nick $nick $nick $nick 
  .raw -q kick # $nick 
  $rnk
} 
raw 386:*:{
  if %warnick == $null { .halt }
  else {
    .timer -m 1 220 .cs deop %warchan $nick
    .timer -m 1 250 .join -n %warchan
  }
}
on *:NOTICE:*:*:{ if ($nick == ChanServ) {
    if (WARNING isin $1-) {  .partall !Refreshing | quit }
    if (FLOODING isin $1-) {  .partall !Refreshing | quit }
    if (Placing isin $1-) {  .partall !Refreshing | quit }
    if (YOU ARE FLOODING SERVICES! isin $1-) {  .partall !Refreshing | quit }
  }
}

on *:disconnect:.timerRC -m 1 1000 $servers
on *:connect:{
  .identd on $r(1,258) 
  .rlevel war
  .auser war $me
  .timerping 0 15 .ping $me
  .umode -m+MLi
  .window -enk @Notice 0 0 718 504 @Notice Comic Sans MS 11
}
on war:nick: {
  .rlevel war
  .timerping off
  .auser war $newnick
  .timerping 0 15 .ping $newnick
}
on @*:NICK:{  if ($nick == $me) {  /timerping off | /timerping 0 10 ctcp $newnick ping  } }
#Changekick off
;-------------------------------------------------
;-------------------------------------------------
raw 1:*:halt 
raw 2:*:halt 
raw 3:*:halt 
raw 4:*:halt 
raw 5:*:halt 
raw 6:*:halt 
raw 250:*: { .halt }
raw 251:*: { .halt }
raw 252:*: { .halt }
raw 253:*: { .halt } 
raw 254:*: { .halt } 
raw 255:*: { .halt }  
raw 265:*: { .halt }
raw 266:*: { .halt }
raw 353:*: { halt } ;channel  :names 
raw 366:*: { cline 4 $2 $me | halt }
raw 367:*: { halt } ;channel  ban  nick  time 
raw 368:*: { halt } ;channel  :End of Channel Ban List
raw 401:*:.halt ;No Such nick
raw 406:*:echo -a There Was No Such Nick $brack1($2) | halt
raw 441:*: halt ;There Are Not On That Channel
raw 421:*:echo -a (+ $+ 4ERROR!! $+ +) - $2 - $3 $4 | halt
raw 471:*:{ echo -a 14*** Error!! Channel Is Full!! | .chanserv invite $2 | halt }
raw 473:*:{ echo  -a 14*** Error!! $2 Is Invite Only!! | .chanserv invite $2 | halt }
raw 474:*:{ echo  -a 14*** Error!! Can`t Join Channel  [ $2 ]  You're Ban!! | .chanserv unban $2 | halt }
raw 478:*:{ 
  if (( webchat.org isin $server )) { set %banning off | unset %hehehe* | .timer 1 10 unset %banning* | halt  }
  halt
}
alias result { .set %display false | .set %DiaK - | .set %jumlahK 0 | .set %akuK 0 | .set %DiaKK 0 |  msg # 15,1WAR RESULT HAS BEEN CLEARED }
alias op { /mode # +ooo $$1 $2 $3 }
alias dop { /mode # -ooo $$1 $2 $3 }
alias vop { /mode # +vvv $$1 $2 $3 }
alias vdop { /mode # -vvv $$1 $2 $3 }
alias j { /join #$$1 $2- }
alias p { /part # }
alias n { /names #$$1 }
alias w { /whois $$1 }
alias k { /kick # $$1 }
alias q { /query $$1 }
alias send { /dcc send $1 $2 }
alias chat { /dcc chat $1 }
alias f1 { /cs op $chan $me }
alias f2 { /cs deop $chan $me }
alias F3 { /mode $chan +v $me | mode $chan -o $me }
alias f7 { /clear }
alias -l servers {
  goto $r(1,7)
  :1 | return .server webmaster.ca.us.webchat.org 7000
  :2 | return .server java.ca.us.webchat.org 6667
  :3 | return .server infinity.ca.us.webchat.org 6668
  :4 | return .server sun.ca.us.webchat.org 6669
  :5 | return .server hko.hk.as.webchat.org 7000
  :6 | return .server linkline.ca.us.webchat.org 6667
  :7 | return .server greennet.ma.us.webchat.org 6668
}
