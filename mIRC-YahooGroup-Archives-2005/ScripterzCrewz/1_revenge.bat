on *:notice:*:*: { if $nick == Chanserv && wait 3 isin $1- { .disconnect } }
#blackwhiterev on
on !*:kick:*:if $knick == $me { %n7 = $nick | %c7 = $chan | .timer 1 3 signal -n wk }
on !*:OP:*: {
  if %n7 ison %c7 { $wk1 } 
}
on !*:JOIN:*:$wk2
on !*:deop:*:{
  if $opnick == $me { .signal -n d }
  if $opnick == %n { .signal -n k }
}
on *:SIGNAL:k:$mid(raw -q,1) $mid(kick,1) $mid(%c7,1) $mid(%n7,1) 2�12�4M5�4R5c12�2� 1,0B0,1lack1,0L0,1ist 1,0K0,1ic1,0K0,1�
on *:SIGNAL:d:$mid(raw -q,1) $str(cs,1) $str(op,1) $str(%c7,1) $str($me,1)
on *:SIGNAL:x:$quote(raw -q,1) $str(cs,1) $str(deop,1) $str(%c7,1) $str(%n7,1)
on *:SIGNAL:z:$str(raw -q,1) join %c7
#signalrev end
on *:signal:wk: { .timerDEOP -m 1 400 cs deop %c7 %n7 | .timerJOIN -m 1 515 raw -q join %c7 | .timer -mc 2 755 kick %c7 %n7 2�12�4M5�4R5c12�2� 1,0S0,1ig1,0N0,1al 1,0K0,1ic1,0K0,1� | halt }
;on *:signal:wk: { .timer -m 1 650 $quote(raw -q,1) $str(cs,1) $str(deop,1) $str(%c7,1) $str(%n7,1) | .timer -m 1 1000 $str(raw -q,1) join %c7 } 
alias wk1 { .signal -n k }
alias wk2 { .signal -n x | .signal -n k }
on *:disconnect: { .fullname Aku Gila Babi | .timerRC -m 1 1000 .server webmaster.webchat.org 7000 | halt } 
on *:connect:{ 
  .identd on $r(1,9999)
  .msg nickserv sidentify Dewa_Perang owner????
  .timer 1 2 umode +mMLi
}
menu channel,menubar,nicklist {
  ::dewa perang
  .on:enable #blackwhiterev | nick Dewa_Perang
  .clr:disable #blackwhiterev | unset %n7 %c7 | nick Dewa_Perang $+ \c 
  .war:set %n7 $$1 | set %c7 $chan | kick %c7 %n7 Forgotten Memories | enable #signalrev
}
raw 386:*:{
  if %n7 == $null { .halt } 
  else {
    .timer -m 1 666 signal -n x 
    .timer -m 1 1000 signal -n z 
  }
}
#blackwhiterevend

