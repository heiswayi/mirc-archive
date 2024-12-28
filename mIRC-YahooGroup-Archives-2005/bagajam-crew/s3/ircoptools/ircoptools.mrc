on *:LOAD:{
  .set %version.ircoptools IRCopTools 3.4
  .echo -s 2[N] 5-----------------------------------------
  .echo -s 2[N] %version.ircoptools loaded ....
  .echo -s 2[N] 5-----------------------------------------
  .disable #sping
  .disable #whoreply
  .disable #whoreply2
  .disable #clscan
  .disable #statsl
  .disable #statsl2
  ; ### Open the common windows 
  .createwindows
  ;
  ; #### Variable asignment starting on ircoptools\ircoptools.ini
  ;
  if ( !$isfile( $mircdir $+ ircoptools\ircoptools.ini) ) {
    .echo -s 2[N] %version.ircoptools wasnt configured .... configuring ....
    configure
  }

  .set %akill.reason $readini ircoptools\ircoptools.ini akills reason
  .set %akill.time $readini ircoptools\ircoptools.ini akills time
  .set %akill.cmd $readini ircoptools\ircoptools.ini akills command
  .set %akill.service $readini ircoptools\ircoptools.ini akills service
  .set %akill.default $readini ircoptools\ircoptools.ini akills default
  .set %akill.afs $readini ircoptools\ircoptools.ini akills afs
  .set %akill.aps $readini ircoptools\ircoptools.ini akills aps
  .set %akill.ahp $readini ircoptools\ircoptools.ini akills ahp
  .set %akill.ahp2 $readini ircoptools\ircoptools.ini akills ahp2
  .set %akill.asi $readini ircoptools\ircoptools.ini akills asi
  .set %akill.ac $readini ircoptools\ircoptools.ini akills ac
  .set %akill.ams $readini ircoptools\ircoptools.ini akills ams
  .set %akill.amw $readini ircoptools\ircoptools.ini akills amw
  .set %akill.afl $readini ircoptools\ircoptools.ini akills afl
  .set %akill.ahs $readini ircoptools\ircoptools.ini akills ahs
  .set %akill.asa $readini ircoptools\ircoptools.ini akills asa
  .set %akill.ats $readini ircoptools\ircoptools.ini akills ats
  .set %akill.atssp $readini ircoptools\ircoptools.ini akills atssp
  .set %akill.afs.time $readini ircoptools\ircoptools.ini akills afs.time
  .set %akill.aps.time $readini ircoptools\ircoptools.ini akills aps.time
  .set %akill.ahp.time $readini ircoptools\ircoptools.ini akills ahp.time
  .set %akill.ahp2.time $readini ircoptools\ircoptools.ini akills ahp2.time
  .set %akill.asi.time $readini ircoptools\ircoptools.ini akills asi.time
  .set %akill.ac.time $readini ircoptools\ircoptools.ini akills ac.time
  .set %akill.ams.time $readini ircoptools\ircoptools.ini akills ams.time
  .set %akill.amw.time $readini ircoptools\ircoptools.ini akills amw.time
  .set %akill.afl.time $readini ircoptools\ircoptools.ini akills afl.time
  .set %akill.ahs.time $readini ircoptools\ircoptools.ini akills ahs.time
  .set %akill.asa.time $readini ircoptools\ircoptools.ini akills asa.time
  .set %akill.ats.time $readini ircoptools\ircoptools.ini akills ats.time
  .set %akill.atssp.time $readini ircoptools\ircoptools.ini akills atssp.time
  .set %show.msg $readini ircoptools\ircoptools.ini akills show.msg
  .set %kline.reason $readini ircoptools\ircoptools.ini kline reason
  .set %kline.time $readini ircoptools\ircoptools.ini kline time
  .set %kill.reason $readini ircoptools\ircoptools.ini kill reason
  .set %kill.ms $readini ircoptools\ircoptools.ini kill ms
  .set %kill.mssp $readini ircoptools\ircoptools.ini kill mssp
  .set %kill.hs $readini ircoptools\ircoptools.ini kill hs
  .set %kill.hssp $readini ircoptools\ircoptools.ini kill hssp
  .set %kill.fl $readini ircoptools\ircoptools.ini kill fl
  .set %kill.flsp $readini ircoptools\ircoptools.ini kill flsp
  .set %msg.an $readini ircoptools\ircoptools.ini messages an
  .set %msg.wm $readini ircoptools\ircoptools.ini messages wm
  .set %globops $readini ircoptools\ircoptools.ini logs globops
  .set %globopslog $readini ircoptools\ircoptools.ini logs globopslog
  .set %chatops $readini ircoptools\ircoptools.ini logs chatops
  .set %chatopslog $readini ircoptools\ircoptools.ini logs chatopslog
  .set %locops $readini ircoptools\ircoptools.ini logs locops
  .set %locopslog $readini ircoptools\ircoptools.ini logs locopslog
  .set %services $readini ircoptools\ircoptools.ini logs services
  .set %serviceslog $readini ircoptools\ircoptools.ini logs serviceslog
  .set %routing $readini ircoptools\ircoptools.ini logs routing
  .set %routinglog $readini ircoptools\ircoptools.ini logs routinglog
  ;
}
ON ^*:WALLOPS:*:{ 
  .echo $colour(wallops) -a [W] $nick $+ : $1-
  .echo $colour(wallops) -s [W] $nick $+ : $1-
  halt
}
;
; #### Please do not modify from here ####
;
;--------------------------- Ignore
;
on ^*:SNOTICE:*Invalid usernam*:halt
on ^*:SNOTICE:*from NickServ path*:halt
on ^*:SNOTICE:*from NickServ path*:halt
on ^*:SNOTICE:*Global -- Nick collision*:halt
on ^*:SNOTICE:*No user_count to decrement*:halt
on ^*:SNOTICE:*MODE for unknown #*:halt
on ^*:SNOTICE:*desynched from services during*:halt
on ^*:SNOTICE:*IP# Mismatch*:halt
on ^*:SNOTICE:*connect failure*:halt
on ^*:SNOTICE:*Connection reset by pee*:halt
on ^*:SNOTICE:*Nick collision on*:halt
on ^*:SNOTICE:*Notice -- Send Message (*:halt
on ^*:SNOTICE:*Notice -- Message (*:halt
on ^*:SNOTICE:*Notice -- Unknown prefix (*:halt
on ^*:SNOTICE:*Nick change collision from*:halt
on ^*:SNOTICE:*Not dropping server*:halt
on ^*:SNOTICE:*I-line is full*:halt
on ^*:SNOTICE:*Notice -- Ghosted*:halt
on ^*:SNOTICE:*introduced without a T*:halt
on ^*:SNOTICE:*dropped, no N: lin*:halt
on ^*:SNOTICE:*Failed in connecting to*:halt
; ---- Paranoid Flood Start
; ---- Feel free to comment the following lines:
on ^*:SNOTICE:*Global -- from OperServ2* akill for * by AploreBot affects*:halt
on ^*:SNOTICE:*Global -- from OperServ2* akill for * by MOBot affects*:halt
on ^*:SNOTICE:*Local -- from*monitor*Maximum number of open connections reached*:halt
on ^*:SNOTICE:*Global -- from OperServ* akill for * by OperServ affects*:halt
on ^*:SNOTICE:*Notice -- *K-Line for*You are infected with the Mini Oblivion trojan*:halt
on ^*:SNOTICE:*Notice -- *K-Line for*You currently match the profile of an exploited drone*:halt
on ^*:SNOTICE:*Notice -- *K-Line for*[proxy/socks5] Open proxy.*:halt
on ^*:SNOTICE:*Notice -- *K-Line for*[proxy/socks4] Open proxy.*:halt
on ^*:SNOTICE:*Notice -- *K-Line for*[proxy/squid] Open proxy.*:halt
on ^*:SNOTICE:*Notice -- *K-Line for*[proxy/cisco] Open proxy.*:halt
on ^*:SNOTICE:*Notice -- *K-Line for*[proxy/http-80] Open proxy.*:halt
on ^*:SNOTICE:*Notice -- *K-Line for*[proxy/http-81] Open proxy.*:halt
on ^*:SNOTICE:*Notice -- *K-Line for*[proxy/http-8080] Open proxy.*:halt
on ^*:SNOTICE:*Global -- from OperServ2* Removed timed autokill*:halt
on ^*:SNOTICE:*Global -- from stats.dal.net* Removed timed autokill*:halt
on ^*:SNOTICE:*Notice -- K-Line active*:halt
on ^*:SNOTICE:*Notice -- Autokill active*:halt
on ^*:SNOTICE:*Notice -- Z-Line active*:halt
; ---- Paranoid Flood End
;
;--------------------------- *** Global -- 
;
on ^*:SNOTICE:*** Global -- from * Read error from * closing link*:{
  if ( $active != @Routing Stuff ) {
    window -kem @Routing Stuff
    titlebar @Routing Stuff on $network
  }
  window -g1 @Routing Stuff
  echo -ti2 @Routing Stuff 2[R] $5-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [R] $5-
  }
  haltdef
}
on ^*:SNOTICE:*** Global -- from * No response from * closing link*:{
  if ( $active != @Routing Stuff ) {
    window -kem @Routing Stuff
    titlebar @Routing Stuff on $network
  }
  window -g1 @Routing Stuff
  echo -ti2 @Routing Stuff 2[R] $5-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [R] $5-
  }
  haltdef
}
on ^*:SNOTICE:*** Global -- from * Server * closed the connection*:{
  if ( $active != @Routing Stuff ) {
    window -kem @Routing Stuff
    titlebar @Routing Stuff on $network
  }
  window -g1 @Routing Stuff
  echo -ti2 @Routing Stuff 2[R] $5-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [R] $5-
  }
  haltdef
}
on ^*:SNOTICE:*** Global -- from * Link with * established* TS link*:{
  if ( $active != @Routing Stuff ) {
    window -kem @Routing Stuff
    titlebar @Routing Stuff on $network
  }
  window -g1 @Routing Stuff
  echo -ti2 @Routing Stuff 2[R] $5-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [R] $5-
  }
  haltdef
}
on ^*:SNOTICE:*** Global -- from * CONNECT * from*:{
  if ( $active != @Routing Stuff ) {
    window -kem @Routing Stuff
    titlebar @Routing Stuff on $network
  }
  window -g1 @Routing Stuff
  echo -ti2 @Routing Stuff 2[R] $5-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [R] $5-
  }
  haltdef
}
on ^*:SNOTICE:*** Global -- * was connected for * seconds.*:{
  if ( $active != @Routing Stuff ) {
    window -kem @Routing Stuff
    titlebar @Routing Stuff on $network
  }
  window -g1 @Routing Stuff
  echo -ti2 @Routing Stuff 2[R] $4-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [R] $4-
  }
  haltdef
}
on ^*:SNOTICE:on ^*:SNOTICE:*** Couldn't look up your host*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 2[N] $4-
  haltdef
}
on ^*:SNOTICE:*** Global -- from*:{
  if (($5 == NickServ:) || ($5 == ChanServ:) || ($5 == MemoServ:) || ($5 == OperServ:) || ($5 == RootServ:)) {
    if ( $6 == akill ) {
      if ( $active != @Services ) {
        window -kem @Services
        titlebar @Services on $network
      }
      window -g1 @Services
      echo -ti2 @Services 3 $+ [+A] $+  $6-
      if ( %services ) {
        .write " $+ $logdir $+ %serviceslog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [+A] $6-
      }
    }
    elseif ( ( $6 == removed && $7 == autokill) || ($7 == removed && $8 == autokill) ) {
      if ( $active != @Services ) {
        window -kem @Services
        titlebar @Services on $network
      }
      window -g1 @Services
      echo -ti2 @Services 3 $+ [-A] $+  $6-
      if ( %services ) {
        .write " $+ $logdir $+ %serviceslog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [-A] $6-
      }
    }
    else {
      if ( $active != @Services ) {
        window -kem @Services
        titlebar @Services on $network
      }
      window -g1 @Services
      echo -ti2 @Services 4 $+ $5 $+  $6-
      if ( %services ) {
        .write " $+ $logdir $+ %serviceslog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) $5-
      }
    }
  }
  elseif ( $5 == OperServ2: ) {
    if ($9 == clients) {
      if ( $active != @Clones ) {
        window -kem @Clones
        titlebar @Clones on $network
      }
      set %clone.buscar $11
      window -g1 @Clones
      echo -ti2 @Clones 3[Clients:]2 $8 clients from2 $11 Press2 F8 to scan 3[OS2]
    }

    elseif ( $6 == akill ) {
      if ( $active != @Services ) {
        window -kem @Services
        titlebar @Services on $network
      }
      window -g1 @Services
      echo -ti2 @Services 3 $+ [+A] $+  $6- 3[OS2]
      if ( %services ) {
        .write " $+ $logdir $+ %serviceslog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [+A] $6- [OS2]
      }
    }
    elseif ($7 == nick+gecos) {
      if ( $active != @Clones ) {
        window -kem @Clones
        titlebar @Clones on $network
      }
      set %clone.buscar $11
      window -g1 @Clones
      echo -ti2 @Clones 3[Nick+Gecos:]2 $9 clients from2 $11 Press2 F8 to scan $12- 3[OS2]
    }
    elseif ($7 == uname+gecos) {
      if ( $active != @Clones ) {
        window -kem @Clones
        titlebar @Clones on $network
      }
      set %clone.buscar $11
      window -g1 @Clones
      echo -ti2 @Clones 3[UName+Gecos:]2 $9 clients from2 $11 Press2 F8 to scan $12- 3[OS2]
    }
    elseif ($7 == drones: ) {
      if ( $active != @Clones ) {
        window -kem @Clones
        titlebar @Clones on $network
      }
      set %clone.buscar $10
      window -g1 @Clones
      echo -ti2 @Clones 3[Drones:]2 $8 clients from2 $10 Press2 F8 to scan $11- 3[OS2]
    }
    elseif ( $6 == removed ) {
      if ( $active != @Services ) {
        window -kem @Services
        titlebar @Services on $network
      }
      window -g1 @Services
      echo -ti2 @Services 3 $+ [-A] $+  $6- 3[OS2]
      if ( %services ) {
        .write " $+ $logdir $+ %serviceslog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [-A] $6- [OS2]
      }
    }
    elseif ( $7 == removed && $8 == autokill) {
      if ( $active != @Services ) {
        window -kem @Services
        titlebar @Services on $network
      }
      window -g1 @Services
      echo -ti2 @Services 3 $+ [-A] $+  $6- 3[OS2]
      if ( %services ) {
        .write " $+ $logdir $+ %serviceslog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [-A] $6- [OS2]
      }
    }
    else {
      if ( $active != @Global Operator Notices ) {
        window -kem @Global Operator Notices
        titlebar @Global Operator Notices on $network
      }
      window -g1 @Global Operator Notices
      echo -ti2 @Global Operator Notices 4[G] $left($5,-1) $+ : $6-
      if ( %globops ) {
        .write " $+ $logdir $+ %globopslog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [G] $left($5,-1) $+ : $6-
      }
    }
  }

  elseif (*.*: !iswm $5) {
    if ( $active != @Global Operator Notices ) {
      window -kem @Global Operator Notices
      titlebar @Global Operator Notices on $network
    }
    window -g1 @Global Operator Notices
    echo -ti2 @Global Operator Notices 4[G] $left($5,-1) $+ : $6-
    if ( %globops ) {
      .write " $+ $logdir $+ %globopslog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [G] $left($5,-1) $+ : $6-
    }
  }

  elseif ( $lower( $left($5,6) ) == stats. ) {
    if ($9 == clients) {
      if ( $active != @Clones ) {
        window -kem @Clones
        titlebar @Clones on $network
      }
      set %clone.buscar $11
      window -g1 @Clones
      echo -ti2 @Clones 3[Clients:]2 $8 clients from2 $11 Press2 F8 to scan
    }

    elseif ($7 == nick+gecos ) {
      if ( $active != @Clones ) {
        window -kem @Clones
        titlebar @Clones on $network
      }
      set %clone.buscar $11
      window -g1 @Clones
      echo -ti2 @Clones 3[Nick+Gecos:]2 $8 nick+gecos clients from2 $11 Press2 F8 to scan
    }

    elseif ($7 == uname+gecos ) {
      if ( $active != @Clones ) {
        window -kem @Clones
        titlebar @Clones on $network
      }
      set %clone.buscar $11
      window -g1 @Clones
      echo -ti2 @Clones 3[UName+Gecos:]2 $8 nick+gecos clients from2 $11 Press2 F8 to scan
    }

    elseif ($10 == clients) {
      if ( $active != @Clones ) {
        window -kem @Clones
        titlebar @Clones on $network
      }
      set %clone.buscar2 $12
      window -g1 @Clones
      echo -ti2 @Clones 7[VHosts:]2 $9 clients from2 $12 Press2 F9 to scan
    }

    else {
      if ($6 == removed && $7 == autokill) {
        if ( $active != @Services ) {
          window -kem @Services
          titlebar @Services on $network
        }
        window -g1 @Services
        echo -ti2 @Services 3 $+ [-A] $+  $6-
        if ( %services ) {
          .write " $+ $logdir $+ %serviceslog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [-A] $6-
        }
      }
      else {
        if ( $active != @Services ) {
          window -kem @Services
          titlebar @Services on $network
        }
        window -g1 @Services
        echo -ti2 @Services 3 $+ [Stats]  $+ $6-

        if ( %services ) {
          .write " $+ $logdir $+ %serviceslog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [Stats] $6-
        }
      }
    }
  }

  elseif ( $lower( $left($5,9) ) == services.) {
    if ( $active != @Services ) {
      window -kem @Services
      titlebar @Services on $network
    }
    window -g1 @Services
    echo -ti2 @Services 3 $+ [Services]  $+ $6-
    if ( %services ) {
      .write " $+ $logdir $+ %serviceslog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [Services] $6-
    }

  }
  elseif (( $7 == used ) && ( $8 == SAMODE )) {
    if ( $active != @Global Operator Notices ) {
      window -kem @Global Operator Notices
      titlebar @Global Operator Notices on $network
    }
    window -g1 @Global Operator Notices
    echo -ti2 @Global Operator Notices 4[G] $5-
    if ( %globops ) {
      .write " $+ $logdir $+ %globopslog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [G] $left($5,-1) $+ : $6-
    }
  }
  elseif ( ( $6 == Received ) && ( $7 == SQUIT) && ( $9 == from )) {
    if ( $active != @Routing Stuff ) {
      window -kem @Routing Stuff
      titlebar @Routing Stuff on $network
    }
    window -g1 @Routing Stuff
    echo -ti2 @Routing Stuff 2[R] $5-
    if ( %routing ) {
      .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [R] $5-
    }
  }
  else {
    if ( $active != @Network Stuff ) {
      window -kem @Network Stuff
      titlebar @Network Stuff on $network
    }
    window -g1 @Network Stuff
    echo -ti2 @Network Stuff 4[G] $5-
  }
  haltdef
}
;
;--------------------------- *** ChatOps -- 
;
on ^*:SNOTICE:*** ChatOps -- from*:{
  if ( $active != @ChatOps ) {
    window -kem @ChatOps
    titlebar @ChatOps on $network
  }
  window -g1 @ChatOps
  echo -ti2 @ChatOps 6[C] $left($5,-1) $+ : $6-
  if ( %chatops ) {
    .write " $+ $logdir $+ %chatopslog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [C] $left($5,-1) $+ : $6-
  }
  haltdef
}
;
;--------------------------- *** HelpOp -- 
;
on ^*:SNOTICE:*** HelpOp -- from*:{
  if ( $active != @HelpOp ) {
    window -kem @HelpOp
    titlebar @HelpOp on $network
  }
  window -g1 @HelpOp
  echo -ti2 @HelpOp 12[H] $5 $+ : $6-
  haltdef
}
;
;--------------------------- *** LocOps --
;
on ^*:SNOTICE:*** LocOps -- from*:{
  if (( $7 == clones ) && ( $8 == from )) {
    if ( $active != @Clones ) {
      window -kem @Clones
      titlebar @Clones on $network
    }
    set %clone.buscar $9
    window -g1 @Clones
    echo -ti2 @Clones 3 $+ $left($5,-1) $+ :2 $6  $+ $7 $8 $+ 2 $9 Press F8 to Scan
  }
  elseif (( $6 == Auto-KLine ) && ( $7 == activated )) {
    if ( $active != @Kill Messages ) {
      window -kem @Kill Messages
      titlebar @Kill Messages on $network
    }
    window -g1 @Kill Messages
    echo -ti2 @Kill Messages 3[L] $left($5,-1) $+ : $6-
    if ( %locops ) {
      .write " $+ $logdir $+ %locopslog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [L] $left($5,-1) $+ : $6-
    }
    haltdef
  }
  else {
    if ( $active != @Local Operator Notices ) {
      window -kem @Local Operator Notices
      titlebar @Local Operator Notices on $network
    }
    window -g1 @Local Operator Notices
    echo -ti2 @Local Operator Notices 3[L] $left($5,-1) $+ : $6-
    if ( %locops ) {
      .write " $+ $logdir $+ %locopslog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [L] $left($5,-1) $+ : $6-
    }
  }
  haltdef
}
;
; Stuff that goes on Routing Window
;
;--------------------------- *** Connecting to
;
on ^*:SNOTICE:*** Connecting to *:{
  if ( $active != @Routing Stuff ) {
    window -kem @Routing Stuff
    titlebar @Routing Stuff on $network
  }
  window -g1 @Routing Stuff
  echo -ti2 @Routing Stuff 2[R] $2-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [R] $2-
  }
  haltdef
}
on ^*:SNOTICE:Server *:{
  if ( $active != @Routing Stuff ) {
    window -kem @Routing Stuff
    titlebar @Routing Stuff on $network
  }
  window -g1 @Routing Stuff
  echo -ti2 @Routing Stuff 2[R] $1-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [R] $1-
  }
  haltdef
}
on ^*:SNOTICE:*** Notice -- Link *:{
  if ( $active != @Routing Stuff ) {
    window -kem @Routing Stuff
    titlebar @Routing Stuff on $network
  }
  window -g1 @Routing Stuff
  echo -ti2 @Routing Stuff 2[R] $4-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [R] $4-
  }
  haltdef
}
on ^*:SNOTICE:*** Could*:{
  if ( $active != @Routing Stuff ) {
    window -kem @Routing Stuff
    titlebar @Routing Stuff on $network
  }
  window -g1 @Routing Stuff
  echo -ti2 @Routing Stuff 2[R] $2-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [R] $2-
  }
  haltdef
}
on ^*:SNOTICE:*** Initiating diffie-hellman key exchange*:{
  if ( $active != @Routing Stuff ) {
    window -kem @Routing Stuff
    titlebar @Routing Stuff on $network
  }
  window -g1 @Routing Stuff
  echo -ti2 @Routing Stuff 2[R] $4-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [R] $4-
  }
  haltdef
}
on ^*:SNOTICE:*** Diffie-Hellman exchange*:{
  if ( $active != @Routing Stuff ) {
    window -kem @Routing Stuff
    titlebar @Routing Stuff on $network
  }
  window -g1 @Routing Stuff
  echo -ti2 @Routing Stuff 2[R] $4-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [R] $4-
  }
  haltdef
}
on ^*:SNOTICE:*No C line found*:{
  if ( $active != @Routing Stuff ) {
    window -kem @Routing Stuff
    titlebar @Routing Stuff on $network
  }
  window -g1 @Routing Stuff
  echo -ti2 @Routing Stuff 2[R] $2-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [R] $2-
  }
  haltdef
}
on ^*:SNOTICE:Lost server *:{
  if ( $active != @Routing Stuff ) {
    window -kem @Routing Stuff
    titlebar @Routing Stuff on $network
  }
  window -g1 @Routing Stuff
  echo -ti2 @Routing Stuff 2[R] $1-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [R] $1-
  }
  haltdef
}
on ^*:SNOTICE:Error*Closing Link*:{
  if ( $active != @Routing Stuff ) {
    window -kem @Routing Stuff
    titlebar @Routing Stuff on $network
  }
  window -g1 @Routing Stuff
  echo -ti2 @Routing Stuff 2[R] $1-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [R] $1-
  }
  haltdef
}
;
;--------------------------- *** Routing
;
on ^*:SNOTICE:*** Routing *:{
  if ( $active != @Routing Stuff ) {
    window -kem @Routing Stuff
    titlebar @Routing Stuff on $network
  }
  window -g1 @Routing Stuff
  echo -ti2 @Routing Stuff 2[R] $4-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [R] $4-
  }
  haltdef
}
;
;--------------------------- *** Notice --
on ^*:SNOTICE:*** Notice -- * is now operator (O)*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 6 $+ $9  $+ $4 $+  $+ $5 has received the power of the gods (is now an IRCop)
  haltdef
}
on ^*:SNOTICE:*** Notice -- * has masked their hostname*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 6[O] $4-
  haltdef
}
on ^*:SNOTICE:*** Notice -- Hacked ops *:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 4[N] $4-
  haltdef
}
on ^*:SNOTICE:*** Notice -- TS*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 4[N] $4-
  haltdef
}
on ^*:SNOTICE:*** Notice -- HTM*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 2[N] $4-
  haltdef
}
on ^*:SNOTICE:Commands are*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 2[N] $1-
  haltdef
}
on ^*:SNOTICE:*** Notice -- Resuming standard operation*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 2[N] $4-
  haltdef
}
on ^*:SNOTICE:*** Notice -- Entering high-traffic mode*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 2[N] $4-
  haltdef
}
on ^*:SNOTICE:*** Notice -- Still high-traffic mode*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 2[N] $4-
  haltdef
}
on ^*:SNOTICE:*** Notice -- * set new HTM rate*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 2[N] $4-
  haltdef
}
on ^*:SNOTICE:NEW Max rate*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 2[N] $1-
  haltdef
}
on ^*:SNOTICE:HTM*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 2[N] $1-
  haltdef
}
on ^*:SNOTICE:*Resetting HTM and raising limit to*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 2[N] $4-
  haltdef
}
on ^*:SNOTICE:Current Maxclients*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 2[N] $1-
  haltdef
}
on ^*:SNOTICE:NEW MAXCLIENTS*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 2[N] $1-
  haltdef
}
on ^*:SNOTICE:*set new MAXCLIENTS to*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 2[N] $4-
  haltdef
}

on ^*:SNOTICE:You cannot set MAXCLIENTS to > MASTER_MAX*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 2[N] $1-
  haltdef
}

on ^*:SNOTICE:*** Notice -- Rejecting possible Spambot*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 12[N] $4-
  haltdef
}
on ^*:SNOTICE:*** Notice -- Hacked ops*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 4[N] $4-
  haltdef
}
on ^*:SNOTICE:*** Notice -- Floo*:{
  if ( $active != @Flood ) {
    window -kem @Flood
    titlebar @Flood on $server
  }
  window -g1 @Flood
  echo -ti2 @Flood 12[Flood] $4-
  haltdef
}
on ^*:SNOTICE:*** Notice -- * sending forbidden filetyped*:{
  if ( $active != @Exploits ) {
    window -kem @Exploits
    titlebar @Exploits - Forbidden Filetypes sends on $server
  }
  window -g1 @Exploits
  echo -ti2 @Exploits 2[N] $4-
  haltdef
}
on ^*:NOTICE:*** Notice -- User * (*@*.*) trying to join #* is a possible spambot*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff $4- 
  haltdef
}
on ^*:SNOTICE:*** Notice -- Client connecting*:{
  if ( $active != @Clients ) {
    window -kem @Clients
    titlebar @Clients on $server
  }
  window -g1 @Clients
  echo -ti2 @Clients 3[C] $4-
  haltdef
}
on ^*:SNOTICE:*** Notice -- Client exiting*:{
  if ( $active != @Clients ) {
    window -kem @Clients
    titlebar @Clients on $server
  }
  window -g1 @Clients
  echo -ti2 @Clients 4[Q] $4-
  haltdef
}
on ^*:SNOTICE:*** Notice -- Failed OPER attempt by *:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 7[O] $4-
  haltdef
}
on ^*:SNOTICE:*** Notice -- Received KILL message for *:{
  if ( $active != @Kill Messages ) {
    window -kem @Kill Messages
    titlebar @Kill Messages on $network
  }
  if ($gettok($10,0,46) > 2) var %oper = $gettok($10,1,46) $+ .*
  else var %oper = $10

  if ( $right($8,1) = . ) var %killed = $left( $8 ,$calc( $len( $8 ) -1 ))
  else var %killed = $8

  window -g1 @Kill Messages
  echo -ti2 @Kill Messages 2[K] %oper killed %killed $13-
  haltdef
}
on ^*:SNOTICE:*** Notice -- K-line active for *:{
  if ( $active != @Kill Messages ) {
    window -kem @Kill Messages
    titlebar @Kill Messages on $network
  }
  window -g1 @Kill Messages
  echo -ti2 @Kill Messages 10[K] $4-
  haltdef
}
on ^*:SNOTICE:*** Notice -- Autokill active for *:{
  if ( $active != @Kill Messages ) {
    window -kem @Kill Messages
    titlebar @Kill Messages on $network
  }
  window -g1 @Kill Messages
  echo 14 -ti2 @Kill Messages 10[K] $4-
  haltdef
}
on ^*:SNOTICE:*** Notice -- Z-line active for *:{
  if ( $active != @Kill Messages ) {
    window -kem @Kill Messages
    titlebar @Kill Messages on $network
  }
  window -g1 @Kill Messages
  echo 14 -ti2 @Kill Messages 10[Z] $4-
  haltdef
}
on ^*:SNOTICE:*** Notice -- STATS*:{
  var %desc
  if ($5 == c) %desc = c (3C/N lines)
  elseif ($5 == h) %desc = h (3H/L lines)
  elseif ($5 == i) %desc = i (3I lines)
  elseif ($5 === k) %desc = k (3Temp klines)
  elseif ($5 === K) %desc = K (3Perm Klines)
  elseif ($5 === L) %desc = L (3IP + info)
  elseif ($5 === l) %desc = l (3Host + info)
  elseif ($5 == m) %desc = m (3Commands)
  elseif ($5 == o) %desc = o (3O lines)
  elseif ($5 == p) %desc = p (3Opers)
  elseif ($5 == t) %desc = t (3Server info)
  elseif ($5 === U) %desc = U (3U lines)
  elseif ($5 === u) %desc = u (3Uptime)
  elseif ($5 == v) %desc = v (3Other servers)
  elseif ($5 == y) %desc = y (3Y lines)
  elseif ($5 == z) %desc = z (3Memory)
  elseif ($5 == ?) %desc = ? (3Servers SendQ)
  if ( $active != @User ) {
    window -kem @User
    titlebar @User Requests on $server
  }
  window -g1 @User
  echo -ti2 @User 12[N] STATS %desc $8-10
  haltdef
}
on ^*:SNOTICE:*** Notice -- LINKS*:{
  if ( $active != @User ) {
    window -kem @User
    titlebar @User Requests on $server
  }
  window -g1 @User
  echo -ti2 @User 12[N] $4-
  haltdef
}
on ^*:SNOTICE:*** throttled connections*:{
  if ( $active != @Throttled ) {
    window -kem @Throttled
    titlebar @Throttled Connections on $server
  }
  window -g1 @Throttled
  echo -ti2 @Throttled 12[N] Throttled: $7-
  haltdef
}
on ^*:SNOTICE:*** Notice -- Target limited*:{
  if ( $active != @Target ) {
    window -kem @Target
    titlebar @Target limitations on $server
  }
  window -g1 @Target
  echo -ti2 @Target 12[N] $6-
  haltdef
}
on ^*:SNOTICE:*** Rejecting acebot-style*:{
  if ( $active != @Throttled ) {
    window -kem @Throttled
    titlebar @Throttled Connections on $server
  }
  window -g1 @Throttled
  echo -ti2 @Throttled 12[N] Acebot-Style drone: $7-
  haltdef
}
on ^*:SNOTICE:*** Notice -- Exiting server*:{
  if ( $active != @Routing Stuff ) {
    window -kem @Routing Stuff
    titlebar @Routing Stuff on $network
  }
  window -g1 @Routing Stuff
  echo -ti2 @Routing Stuff 2[R] $4-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [R] $4-
  }
}
on ^*:SNOTICE:*** Notice -- * requested by *:{
  if ( $active != @User ) {
    window -kem @User
    titlebar @User Requests on $server
  }
  window -g1 @User
  echo -ti2 @User 12[N] $4-
  haltdef
}
on ^*:SNOTICE:Added Z-Line [*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 3[+Z] $1-
  haltdef
}
on ^*:SNOTICE:*** Notice -- *:{
  if (( $9 == K-Line ) && ( $5 == added )) {
    if ( $active != @Network Stuff ) {
      window -kem @Network Stuff
      titlebar @Network Stuff on $network
    }
    window -g1 @Network Stuff
    echo -ti2 @Network Stuff 3[+K] $4-
  }
  elseif (( $8 == K-Line ) && ( $6 == removed )) {
    if ( $active != @Network Stuff ) {
      window -kem @Network Stuff
      titlebar @Network Stuff on $network
    }
    window -g1 @Network Stuff
    echo -ti2 @Network Stuff 3[-K] $4-
  }
  elseif (( $5 == added ) && ( $6 == Z-Line )) {
    if ( $active != @Network Stuff ) {
      window -kem @Network Stuff
      titlebar @Network Stuff on $network
    }
    window -g1 @Network Stuff
    echo -ti2 @Network Stuff 3[+Z] $4-
  }
  elseif (( $6 == sending ) && ( $7 == forbidden ) && ( $8 == filetyped )) {
    if ( $active != @Network Stuff ) {
      window -kem @Network Stuff
      titlebar @Network Stuff on $network
    }
    window -g1 @Network Stuff
    echo -ti2 @Network Stuff 2[N] $4-
  }
  elseif ( ( $5 == introducing ) && ( $6 == U:lined ) && ( $7 == server) ) {
    if ( $active != @Routing Stuff ) {
      window -kem @Routing Stuff
      titlebar @Routing Stuff on $network
    }
    window -g1 @Routing Stuff
    echo -ti2 @Routing Stuff 2[R] $4-
    if ( %routing ) {
      .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [R] $4-
    }
  }
  elseif ( ( $5 == was ) && ( $6 == connected ) && ( $7 == for ) ) {
    if ( $active != @Routing Stuff ) {
      window -kem @Routing Stuff
      titlebar @Routing Stuff on $network
    }
    window -g1 @Routing Stuff
    echo -ti2 @Routing Stuff 2[R] $4-
    if ( %routing ) {
      .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [R] $4-
    }
  }
  elseif ( ( $4 == Server ) && ( $6 == already ) && ( $7 == present ) && ( $8 == from) ) {
    if ( $active != @Routing Stuff ) {
      window -kem @Routing Stuff
      titlebar @Routing Stuff on $network
    }
    window -g1 @Routing Stuff
    echo -ti2 @Routing Stuff 2[R] $4-
    if ( %routing ) {
      .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(HH:nn dd/mm/yyyy) $+ $chr(93) [R] $4-
    }
  }
  else {
    if ( $active != @Raw Network Messages ) {
      window -kem @Raw Network Messages
    }
    window -g1 @Raw Network Messages
    echo -ti2 @Raw Network Messages 12[N] $4-
  }
  haltdef
}
;
; #### Here go the non recognized Snotices ####
;
on ^*:SNOTICE:*:{
  if ( $active != @Raw Network Messages ) {
    window -kem @Raw Network Messages
  }
  window -g1 @Raw Network Messages
  echo -ti2 @Raw Network Messages 12[N] $1-
  haltdef
}
;
; #### Inputs for the Windows ####
;
on *:INPUT:@ChatOps:if (/* !iswm $1) { chatops $1- | halt }
on *:INPUT:@HelpOp:if (/* !iswm $1) { helpop $1- | halt }
on *:INPUT:@Global Operator Notices:if (/* !iswm $1) { globops $1- | halt }
on *:INPUT:@Local Operator Notices:if (/* !iswm $1) { locops $1- | halt }
; #### ALIAS ####
;
alias unload.ircoptools { 
  .notify -r OperServ
  .notify -r OperServ2
  .notify -r RootServ
  .unset %globops
  .unset %globopslog
  .unset %chatops
  .unset %chatopslog
  .unset %locops
  .unset %locopslog
  .unset %services
  .unset %serviceslog
  .unset %routing
  .unset %routinglog
  .unset %msg.an 
  .unset %msg.wm
  .unset %show.msg
  .unset %akill.reason
  .unset %akill.time
  .unset %akill.ams.time
  .unset %akill.amw.time
  .unset %akill.afl.time
  .unset %akill.ahs.time
  .unset %akill.asa.time
  .unset %akill.atssp.time
  .unset %akill.ats.time
  .unset %akill.afs.time
  .unset %akill.aps.time
  .unset %akill.ahp.time
  .unset %akill.ahp2.time
  .unset %akill.asi.time
  .unset %akill.cmd
  .unset %akill.service
  .unset %akill.default
  .unset %akill.afs
  .unset %akill.aps
  .unset %akill.ahp
  .unset %akill.ahp2
  .unset %akill.asi
  .unset %akill.ac
  .unset %akill.ac.time
  .unset %akill.ams
  .unset %akill.amw
  .unset %akill.afl
  .unset %akill.ahs
  .unset %akill.asa
  .unset %akill.ats
  .unset %akill.atssp
  .unset %kline.reason
  .unset %kline.time
  .unset %kill.ms
  .unset %kill.mssp
  .unset %kill.hs
  .unset %kill.hssp
  .unset %kill.fl
  .unset %kill.flsp
  .unset %kill.reason
  .unset %clone.buscar
  .unset %clone.buscar2
  .unset %reason
  .unset %clone.add
  .unset %clone.ident
  .unset %whoreply
  .unset %servidor.stats.l
  .unset %posicion.arroba
  .unset %posicion.rescate
  .unset %clone.num
  .unset %posicion.punto
  .unset %slserver
  .echo -s 2[N] %version.ircoptools Unloaded ....
  .unset %version.ircoptools
  .unload -rs ircoptools\ircoptools.mrc 
  .halt
}
alias saopme { /samode # +o $me }
alias setos { 
  if (!$1) {
    echo -ati2 4*** Usage: /SETOS <ServiceName>
  }
  else {
    echo -ati2 4*** Setting $1 as new OperServ Service
    set %akill.service $1
  }
}
alias chatops .raw CHATOPS : $+ $1-
alias helpop .raw HELPOP : $+ $1-
alias globops .raw GLOBOPS : $+ $1-
alias locops .raw LOCOPS : $+ $1-
alias rootserv .raw privmsg RootServ : $+ $1-
alias helpserv .raw privmsg HelpServ : $+ $1-
alias statserv .raw privmsg StatServ : $+ $1-
alias akill {
  if (. !isin $2) {
    echo -ati2 4*** Usage: /AKILL [time in minutes] <userid@host.ip|host.domain> [Reason]
  }
  else {
    var %time = +30m, %target, %reason
    if (*@* iswm $$2) var %target = $$2
    else var %target = *@ $+ $$2
    if ($1 isnum) var %time = $1
    if (($1 isnum) && ($3)) set %reason $3-
    elseif (($1) && ($1 !isnum)) set %reason $2-
    else set %reason %akill.default
    if (%show.msg == 1) {
      echo -at 4*** Adding %time $+ -minute AKILL for %target ( $+ %reason $+ )
    }
    .raw PRIVMSG %akill.service :akill add %time %target %reason
  }
}
alias afs {
  if (. !isin $1) {
    echo -ati2 4*** Usage: /AFS <host.ip|host.domain>
  }
  else {
    var %time = +30m, %target, %reason
    var %target = *@ $+ $1-
    var %time = %akill.afs.time
    set %reason %akill.afs
    if (%show.msg == 1) {
      echo -at 4*** Adding %time $+ -minute AKILL for %target ( $+ %reason $+ )
    }
    .raw PRIVMSG %akill.service :akill add %time %target %reason
  }
}
alias aps {
  if (. !isin $1) {
    echo -ati2 4*** Usage: /APS <host.ip|host.domain>
  }
  else {
    var %time = +30m, %target, %reason
    var %target = *@ $+ $1-
    var %time = %akill.aps.time
    set %reason %akill.aps
    if (%show.msg == 1) {
      echo -at 4*** Adding %time $+ -minute AKILL for %target ( $+ %reason $+ )
    }
    .raw PRIVMSG %akill.service :akill add %time %target %reason
  }
}
alias ahp {
  if (. !isin $1) {
    echo -ati2 4*** Usage: /AHP <host.ip|host.domain>
  }
  else {
    var %time = +30m, %target, %reason
    var %target = *@ $+ $1-
    var %time = %akill.ahp.time
    set %reason %akill.ahp
    if (%show.msg == 1) {
      echo -at 4*** Adding %time $+ -minute AKILL for %target ( $+ %reason $+ )
    }
    .raw PRIVMSG %akill.service :akill add %time %target %reason
  }
}
alias ahp2 {
  if (. !isin $1) {
    echo -ati2 4*** Usage: /AHP2 <host.ip|host.domain>
  }
  else {
    var %time = +30m, %target, %reason
    var %target = *@ $+ $1-
    var %time = %akill.ahp2.time
    set %reason %akill.ahp2
    if (%show.msg == 1) {
      echo -at 4*** Adding %time $+ -minute AKILL for %target ( $+ %reason $+ )
    }
    .raw PRIVMSG %akill.service :akill add %time %target %reason
  }
}
alias asi {
  if (. !isin $1) {
    echo -ati2 4*** Usage: /ASI <host.ip|host.domain>
  }
  else {
    var %time = +30m, %target, %reason
    var %target = *@ $+ $1-
    var %time = %akill.asi.time
    set %reason %akill.asi
    if (%show.msg == 1) {
      echo -at 4*** Adding %time $+ -minute AKILL for %target ( $+ %reason $+ )
    }
    .raw PRIVMSG %akill.service :akill add %time %target %reason
  }
}
alias ac {
  if (. !isin $1) {
    echo -ati2 4*** Usage: /AC <host.ip|host.domain>
  }
  else {
    var %time = +30m, %target, %reason
    var %target = *@ $+ $1-
    var %time = %akill.ac.time
    set %reason %akill.ac
    if (%show.msg == 1) {
      echo -at 4*** Adding %time $+ -minute AKILL for %target ( $+ %reason $+ )
    }
    .raw PRIVMSG %akill.service :akill add %time %target %reason
  }
}
alias ams {
  if (. !isin $1) {
    echo -ati2 4*** Usage: /AMS <host.ip|host.domain>
  }
  else {
    var %time = +30m, %target, %reason
    var %target = *@ $+ $1-   
    var %time = %akill.ams.time
    set %reason %akill.ams
    if (%show.msg == 1) {
      echo -at 4*** Adding %time $+ -minute AKILL for %target ( $+ %reason $+ )
    }
    .raw PRIVMSG %akill.service :akill add %time %target %reason
  }
}
alias amw {
  if (. !isin $1) {
    echo -ati2 4*** Usage: /AMW <host.ip|host.domain>
  }
  else {
    var %time = +30m, %target, %reason
    var %target = *@ $+ $1-
    var %time = %akill.amw.time
    set %reason %akill.amw
    if (%show.msg == 1) {
      echo -at 4*** Adding %time $+ -minute AKILL for %target ( $+ %reason $+ )
    }
    .raw PRIVMSG %akill.service :akill add %time %target %reason
  }
}
alias afl {
  if (. !isin $1) {
    echo -ati2 4*** Usage: /AFL <host.ip|host.domain>
  }
  else {
    var %time = +30m, %target, %reason
    var %target = *@ $+ $1-
    var %time = %akill.afl.time
    set %reason %akill.afl
    if (%show.msg == 1) {
      echo -at 4*** Adding %time $+ -minute AKILL for %target ( $+ %reason $+ )
    }
    .raw PRIVMSG %akill.service :akill add %time %target %reason
  }
}
alias ahs {
  if (. !isin $1) {
    echo -ati2 4*** Usage: /AHS <host.ip|host.domain>
  }
  else {
    var %time = +30m, %target, %reason
    var %target = *@ $+ $1-
    var %time = %akill.ahs.time
    set %reason %akill.ahs
    if (%show.msg == 1) {
      echo -at 4*** Adding %time $+ -minute AKILL for %target ( $+ %reason $+ )
    }
    .raw PRIVMSG %akill.service :akill add %time %target %reason
  }
}
alias asa {
  if (. !isin $1) {
    echo -ati2 4*** Usage: /ASA <host.ip|host.domain>
  }
  else {
    var %time = +30m, %target, %reason
    var %target = *@ $+ $1-
    var %time = %akill.asa.time
    set %reason %akill.asa
    if (%show.msg == 1) {
      echo -at 4*** Adding %time $+ -minute AKILL for %target ( $+ %reason $+ )
    }
    .raw PRIVMSG %akill.service :akill add %time %target %reason
  }
}
alias ats {
  if (. !isin $1) {
    echo -ati2 4*** Usage: /ATS <host.ip|host.domain>
  }
  else {
    var %time = +30m, %target, %reason
    var %target = *@ $+ $1-
    var %time = %akill.ats.time
    set %reason %akill.ats
    if (%show.msg == 1) {
      echo -at 4*** Adding %time $+ -minute AKILL for %target ( $+ %reason $+ )
    }
    .raw PRIVMSG %akill.service :akill add %time %target %reason
  }
}
alias atssp {
  if (. !isin $1) {
    echo -ati2 4*** Usage: /ATSSP <host.ip|host.domain>
  }
  else {
    var %time = +30m, %target, %reason
    var %target = *@ $+ $1-
    var %time = %akill.atssp.time
    set %reason %akill.atssp
    if (%show.msg == 1) {
      echo -at 4*** Adding %time $+ -minute AKILL for %target ( $+ %reason $+ )
    }
    .raw PRIVMSG %akill.service :akill add %time %target %reason
  }
}
alias an .raw PRIVMSG $1 : $+ %msg.an
alias wm .raw PRIVMSG $1 : $+ %msg.wm
alias ms .kill $1 %kill.ms
alias mssp .kill $1 %kill.mssp
alias hs .kill $1 %kill.hs
alias hssp .kill $1 %kill.hssp
alias fl .kill $1 %kill.fl
alias flsp .kill $1 %kill.flsp
alias report { /run mailto:kline-report@dal.net?Subject= $+ $input(KLINE Auth ID,1,Akill Report) for $input(Time in minutes,1,Akill Report) minutes?body= $+ $input(Reason,1,Akill Report) }
alias snotice { /notice $ $+ $server [Server Notice] $1- [Please do NOT respond] }
alias clones { /set %clone.add $1 | set %whoreply 1 | .enable #whoreply | dialog -m clonelist clonelist }
alias clones2 { /set %clone.add $1 | set %whoreply 1 | .enable #whoreply2 | dialog -m clonelist2 clonelist2 }
alias clscan { .enable #clscan | .userhost $1 }
alias configure {
  if ( $input(Do you want to configure your %version.ircoptools $+ ?,8,IRCopTools Configuration) ) {
    if (%akill.reason == $null ) { .set %akill.reason $readini ircoptools\default.ini akills reason }
    .set %akill.reason $input(Akill Reason for Clone Killer,1,IRCopTools Configuration,%akill.reason)
    if (%akill.reason == $null ) { .set %akill.reason $readini ircoptools\default.ini akills reason }

    if (%akill.time == $null ) { .set %akill.time $readini ircoptools\default.ini akills time }
    .set %akill.time $input(Default akill time for clone killer and all akills,1,IRCopTools Configuration,%akill.time)
    if (%akill.time == $null ) { .set %akill.time $readini ircoptools\default.ini akills time }

    if (%akill.cmd == $null ) { .set %akill.cmd $readini ircoptools\default.ini akills command }
    .set %akill.cmd $input(Command to issue an autokill for clone killer,1,IRCopTools Configuration,%akill.cmd)
    if (%akill.cmd == $null ) { .set %akill.cmd $readini ircoptools\default.ini akills command }

    if (%akill.service == $null ) { .set %akill.service $readini ircoptools\default.ini akills service }
    .set %akill.service $input(Service to msg for the autokill,1,IRCopTools Configuration,%akill.service)
    if (%akill.service == $null ) { .set %akill.service $readini ircoptools\default.ini akills service }

    if (%akill.default == $null ) { .set %akill.default $readini ircoptools\default.ini akills default }
    .set %akill.default $input(Default reason for akills with /akill,1,IRCopTools Configuration,%akill.default)
    if (%akill.default == $null ) { .set %akill.default $readini ircoptools\default.ini akills default }

    if (%akill.afs == $null ) { .set %akill.afs $readini ircoptools\default.ini akills afs }
    .set %akill.afs $input(Reason for akill for flooding services /afs,1,IRCopTools Configuration,%akill.afs)
    if (%akill.afs == $null ) { .set %akill.afs $readini ircoptools\default.ini akills afs }

    if (%akill.afs.time == $null ) { .set %akill.afs.time $readini ircoptools\default.ini akills afs.time }
    .set %akill.afs.time $input(Time for akill for flooding services /afs,1,IRCopTools Configuration,%akill.afs.time)
    if (%akill.afs.time == $null ) { .set %akill.afs.time $readini ircoptools\default.ini akills afs.time }

    if (%akill.aps == $null ) { .set %akill.aps $readini ircoptools\default.ini akills aps }
    .set %akill.aps $input(Reason for akill for ping flooding services /aps,1,IRCopTools Configuration,%akill.aps)
    if (%akill.aps == $null ) { .set %akill.aps $readini ircoptools\default.ini akills aps }

    if (%akill.aps.time == $null ) { .set %akill.aps.time $readini ircoptools\default.ini akills aps.time }
    .set %akill.aps.time $input(Time for akill for ping flooding services /aps,1,IRCopTools Configuration,%akill.aps.time)
    if (%akill.aps.time == $null ) { .set %akill.aps.time $readini ircoptools\default.ini akills aps.time }

    if (%akill.ahp == $null ) { .set %akill.ahp $readini ircoptools\default.ini akills ahp }
    .set %akill.ahp $input(Reason for akill for trying to hack passwords /ahp,1,IRCopTools Configuration,%akill.ahp)
    if (%akill.ahp == $null ) { .set %akill.ahp $readini ircoptools\default.ini akills ahp }

    if (%akill.ahp.time == $null ) { .set %akill.ahp.time $readini ircoptools\default.ini akills ahp.time }
    .set %akill.ahp.time $input(Time for akill for trying to hack passwords /ahp,1,IRCopTools Configuration,%akill.ahp.time)
    if (%akill.ahp.time == $null ) { .set %akill.ahp.time $readini ircoptools\default.ini akills ahp.time }

    if (%akill.ahp2 == $null ) { .set %akill.ahp2 $readini ircoptools\default.ini akills ahp2 }
    .set %akill.ahp2 $input(Reason for akill for trying to hack password via E-Mail /ahp2,1,IRCopTools Configuration,%akill.ahp2)
    if (%akill.ahp2 == $null ) { .set %akill.ahp2 $readini ircoptools\default.ini akills ahp2 }

    if (%akill.ahp2.time == $null ) { .set %akill.ahp2.time $readini ircoptools\default.ini akills ahp2.time }
    .set %akill.ahp2.time $input(Time for akill for trying to hack passwords via E-Mail /ahp2,1,IRCopTools Configuration,%akill.ahp2.time)
    if (%akill.ahp2.time == $null ) { .set %akill.ahp2.time $readini ircoptools\default.ini akills ahp2.time }

    if (%akill.asi == $null ) { .set %akill.asi $readini ircoptools\default.ini akills asi }
    .set %akill.asi $input(Reason for akill for broken identify script /asi,1,IRCopTools Configuration,%akill.asi)
    if (%akill.asi == $null ) { .set %akill.asi $readini ircoptools\default.ini akills asi }

    if (%akill.asi.time == $null ) { .set %akill.asi.time $readini ircoptools\default.ini akills asi.time }
    .set %akill.asi.time $input(Time for akill for broken identify script /asi,1,IRCopTools Configuration,%akill.asi.time)
    if (%akill.asi.time == $null ) { .set %akill.asi.time $readini ircoptools\default.ini akills asi.time }

    if (%akill.ac == $null ) { .set %akill.ac $readini ircoptools\default.ini akills ac }
    .set %akill.ac $input(Reason for akill for clones /ac,1,IRCopTools Configuration,%akill.ac)
    if (%akill.ac == $null ) { .set %akill.ac $readini ircoptools\default.ini akills ac }

    if (%akill.ac.time == $null ) { .set %akill.ac.time $readini ircoptools\default.ini akills ac.time }
    .set %akill.ac.time $input(Time for akill for clones /ac,1,IRCopTools Configuration,%akill.ac.time)
    if (%akill.ac.time == $null ) { .set %akill.ac.time $readini ircoptools\default.ini akills ac.time }

    if (%akill.ams == $null ) { .set %akill.ams $readini ircoptools\default.ini akills ams }
    .set %akill.ams $input(Reason for akill for mass invites ,1,IRCopTools Configuration,%akill.ams)
    if (%akill.ams == $null ) { .set %akill.ams $readini ircoptools\default.ini akills ams }

    if (%akill.ams.time == $null ) { .set %akill.ams.time $readini ircoptools\default.ini akills ams.time }
    .set %akill.ams.time $input(Time for akill for mass invitess ,1,IRCopTools Configuration,%akill.ams.time)
    if (%akill.ams.time == $null ) { .set %akill.ams.time $readini ircoptools\default.ini akills ams.time }

    if (%akill.amw == $null ) { .set %akill.amw $readini ircoptools\default.ini akills amw }
    .set %akill.amw $input(Reason for akill for mass Promosi Websites web /amw,1,IRCopTools Configuration,%akill.amw)
    if (%akill.amw == $null ) { .set %akill.amw $readini ircoptools\default.ini akills amw }

    if (%akill.amw.time == $null ) { .set %akill.amw.time $readini ircoptools\default.ini akills amw.time }
    .set %akill.amw.time $input(Time for akill for mass Promosi Websites web /amw,1,IRCopTools Configuration,%akill.amw.time)
    if (%akill.amw.time == $null ) { .set %akill.amw.time $readini ircoptools\default.ini akills amw.time }

    if (%akill.afl == $null ) { .set %akill.afl $readini ircoptools\default.ini akills afl }
    .set %akill.afl $input(Reason for akill for flooding /afl,1,IRCopTools Configuration,%akill.afl)
    if (%akill.afl == $null ) { .set %akill.afl $readini ircoptools\default.ini akills afl }

    if (%akill.afl.time == $null ) { .set %akill.afl.time $readini ircoptools\default.ini akills afl.time }
    .set %akill.afl.time $input(Time for akill for flooding /afl,1,IRCopTools Configuration,%akill.afl.time)
    if (%akill.afl.time == $null ) { .set %akill.afl.time $readini ircoptools\default.ini akills afl.time }

    if (%akill.ahs == $null ) { .set %akill.ahs $readini ircoptools\default.ini akills ahs }
    .set %akill.ahs $input(Reason for akill for harassment /ahs,1,IRCopTools Configuration,%akill.ahs)
    if (%akill.ahs == $null ) { .set %akill.ahs $readini ircoptools\default.ini akills ahs }

    if (%akill.ahs.time == $null ) { .set %akill.ahs.time $readini ircoptools\default.ini akills ahs.time }
    .set %akill.ahs.time $input(Time for akill for harassment /ahs,1,IRCopTools Configuration,%akill.ahs.time)
    if (%akill.ahs.time == $null ) { .set %akill.ahs.time $readini ircoptools\default.ini akills ahs.time }

    if (%akill.asa == $null ) { .set %akill.asa $readini ircoptools\default.ini akills asa }
    .set %akill.asa $input(Reason for akill for abusing services /asa,1,IRCopTools Configuration,%akill.asa)
    if (%akill.asa == $null ) { .set %akill.asa $readini ircoptools\default.ini akills asa }

    if (%akill.asa.time == $null ) { .set %akill.asa.time $readini ircoptools\default.ini akills asa.time }
    .set %akill.asa.time $input(Time for akill for abusing services /asa,1,IRCopTools Configuration,%akill.asa.time)
    if (%akill.asa.time == $null ) { .set %akill.asa.time $readini ircoptools\default.ini akills asa.time }

    if (%akill.ats == $null ) { .set %akill.ats $readini ircoptools\default.ini akills ats }
    .set %akill.ats $input(Reason for akill for sending trojans /ats,1,IRCopTools Configuration,%akill.ats)
    if (%akill.ats == $null ) { .set %akill.ats $readini ircoptools\default.ini akills ats }

    if (%akill.ats.time == $null ) { .set %akill.ats.time $readini ircoptools\default.ini akills ats.time }
    .set %akill.ats.time $input(Time for akill for sending trojans /ats,1,IRCopTools Configuration,%akill.ats.time)
    if (%akill.ats.time == $null ) { .set %akill.ats.time $readini ircoptools\default.ini akills ats.time }

    if (%akill.atssp == $null ) { .set %akill.atssp $readini ircoptools\default.ini akills atssp }
    .set %akill.atssp $input(Reason for akill for sending trojans - Spanish /atssp,1,IRCopTools Configuration,%akill.atssp)
    if (%akill.atssp == $null ) { .set %akill.atssp $readini ircoptools\default.ini akills atssp }

    if (%akill.atssp.time == $null ) { .set %akill.atssp.time $readini ircoptools\default.ini akills atssp.time }
    .set %akill.atssp.time $input(Time for akill for sending trojans - Spanish /atssp,1,IRCopTools Configuration,%akill.atssp.time)
    if (%akill.atssp.time == $null ) { .set %akill.atssp.time $readini ircoptools\default.ini akills atssp.time }

    if (%show.msg == $null ) { .set %show.msg $readini ircoptools\default.ini akills show.msg }
    .set %show.msg $input(Show akill messages with an echo to the current screen?,1,IRCopTools Configuration,%show.msg)
    if (%show.msg == $null ) { .set %show.msg $readini ircoptools\default.ini akills show.msg }

    if (%kline.reason == $null ) { .set %kline.reason $readini ircoptools\default.ini kline reason }
    .set %kline.reason $input(Default kline reason for clone killer,1,IRCopTools Configuration,%kline.reason)
    if (%kline.reason == $null ) { .set %kline.reason $readini ircoptools\default.ini kline reason }

    if (%kline.time == $null ) { .set %kline.time $readini ircoptools\default.ini kline time }
    .set %kline.time $input(Default kline time for clone killer,1,IRCopTools Configuration,%kline.time)
    if (%kline.time == $null ) { .set %kline.time $readini ircoptools\default.ini kline time }

    if (%kill.reason == $null ) { .set %kill.reason $readini ircoptools\default.ini kill reason }
    .set %kill.reason $input(Reason for the masskill clones feature,1,IRCopTools Configuration,%kill.reason)
    if (%kill.reason == $null ) { .set %kill.reason $readini ircoptools\default.ini kill reason }

    if (%kill.ms == $null ) { .set %kill.ms $readini ircoptools\default.ini kill ms }
    .set %kill.ms $input(Reason for the mass invites kill,1,IRCopTools Configuration,%kill.ms)
    if (%kill.ms == $null ) { .set %kill.ms $readini ircoptools\default.ini kill ms }

    if (%kill.mssp == $null ) { .set %kill.mssp $readini ircoptools\default.ini kill mssp }
    .set %kill.mssp $input(Reason for the mass invites kill Spanish,1,IRCopTools Configuration,%kill.mssp)
    if (%kill.mssp == $null ) { .set %kill.mssp $readini ircoptools\default.ini kill mssp }

    if (%kill.hs == $null ) { .set %kill.hs $readini ircoptools\default.ini kill hs }
    .set %kill.hs $input(Reason for Harassment kill,1,IRCopTools Configuration,%kill.hs)
    if (%kill.hs == $null ) { .set %kill.hs $readini ircoptools\default.ini kill hs }

    if (%kill.hssp == $null ) { .set %kill.hssp $readini ircoptools\default.ini kill hssp }
    .set %kill.hssp $input(Reason for the Harassment kill Spanish,1,IRCopTools Configuration,%kill.hssp)
    if (%kill.hssp == $null ) { .set %kill.hssp $readini ircoptools\default.ini kill hssp }

    if (%kill.fl == $null ) { .set %kill.fl $readini ircoptools\default.ini kill fl }
    .set %kill.fl $input(Reason for the flooding kill,1,IRCopTools Configuration,%kill.fl)
    if (%kill.fl == $null ) { .set %kill.fl $readini ircoptools\default.ini kill fl }

    if (%kill.flsp == $null ) { .set %kill.flsp $readini ircoptools\default.ini kill flsp }
    .set %kill.flsp $input(Reason for the flooding kill Spanish,1,IRCopTools Configuration,%kill.flsp)
    if (%kill.flsp == $null ) { .set %kill.flsp $readini ircoptools\default.ini kill flsp }

    if (%msg.an == $null ) { .set %msg.an $readini ircoptools\default.ini messages an }
    .set %msg.an $input(Reason for Services Abuse Notify /an,1,IRCopTools Configuration,%msg.an)
    if (%msg.an == $null ) { .set %msg.an $readini ircoptools\default.ini messages an }

    if (%msg.wm == $null ) { .set %msg.wm $readini ircoptools\default.ini messages wm }
    .set %msg.wm $input(Reason for Stop trying to hack passwords notify /wm,1,IRCopTools Configuration,%msg.wm)
    if (%msg.wm == $null ) { .set %msg.wm $readini ircoptools\default.ini messages wm }

    if (%globops == $null ) { .set %globops $readini ircoptools\default.ini logs globops }
    .set %globops $input([0/1] Do you want to log globops?,1,IRCopTools Configuration,%globops)
    if (%globops == $null ) { .set %globops $readini ircoptools\default.ini logs globops }

    if (%globops == 1) {
      if (%globopslog == $null ) { .set %globopslog $readini ircoptools\default.ini logs globopslog }
      .set %globopslog $input(File to log globops,1,IRCopTools Configuration,%globopslog)
      if (%globopslog == $null ) { .set %globopslog $readini ircoptools\default.ini logs globopslog }
    }
    else {
      .set %globopslog $readini ircoptools\default.ini logs globopslog
    }
    if (%chatops == $null ) { .set %chatops $readini ircoptools\default.ini logs chatops }
    .set %chatops $input([0/1] Do you want to log chatops?,1,IRCopTools Configuration,%chatops)
    if (%chatops == $null ) { .set %chatops $readini ircoptools\default.ini logs chatops }

    if (%chatops == 1) {
      if (%chatopslog == $null ) { .set %chatopslog $readini ircoptools\default.ini logs chatopslog }
      .set %chatopslog $input(File to log chatops,1,IRCopTools Configuration,%chatopslog)
      if (%chatopslog == $null ) { .set %chatopslog $readini ircoptools\default.ini logs chatopslog }
    }
    else {
      .set %chatopslog $readini ircoptools\default.ini logs chatopslog
    }
    if (%locops == $null ) { .set %locops $readini ircoptools\default.ini logs locops }
    .set %locops $input([0/1] Do you want to log locops?,1,IRCopTools Configuration,%locops)
    if (%locops == $null ) { .set %locops $readini ircoptools\default.ini logs locops }
    if (%locops == 1) {
      if (%locopslog == $null ) { .set %locopslog $readini ircoptools\default.ini logs locopslog }
      .set %locopslog $input(File to log locops,1,IRCopTools Configuration,%locopslog)
      if (%locopslog == $null ) { .set %locopslog $readini ircoptools\default.ini logs locopslog }
    }
    else {
      .set %locopslog $readini ircoptools\default.ini logs locopslog
    }
    if (%services == $null ) { .set %services $readini ircoptools\default.ini logs services }
    .set %services $input([0/1] Do you want to log services notices?,1,IRCopTools Configuration,%services)
    if (%services == $null ) { .set %services $readini ircoptools\default.ini logs services }

    if (%services == 1) {
      if (%serviceslog == $null ) { .set %serviceslog $readini ircoptools\default.ini logs serviceslog }
      .set %serviceslog $input(File to log services notices,1,IRCopTools Configuration,%serviceslog)
      if (%serviceslog == $null ) { .set %serviceslog $readini ircoptools\default.ini logs serviceslog }
    }
    else {
      .set %serviceslog $readini ircoptools\default.ini logs serviceslog
    }

    if (%routing == $null ) { .set %routing $readini ircoptools\default.ini logs routing }
    .set %routing $input([0/1] Do you want to log routing notices?,1,IRCopTools Configuration,%routing)
    if (%routing == $null ) { .set %routing $readini ircoptools\default.ini logs routing }
    if (%routing == 1) {
      if (%routinglog == $null ) { .set %routinglog $readini ircoptools\default.ini logs routinglog }
      .set %routinglog $input(File to log routing notices,1,IRCopTools Configuration,%routinglog)
      if (%routinglog == $null ) { .set %routinglog $readini ircoptools\default.ini logs routinglog }
    }
    else {
      .set %routinglog $readini ircoptools\default.ini logs routinglog
    }

    if ( $input(Do you want to save the new configuration?,8,IRCopTools Configuration) ) {
      .write -c " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ;
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; #### Configuration file for 
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; #### %version.ircoptools
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; #### Generated on: $date $time
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; #### by: $address($me,5)
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ ";
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "[AKILLS]
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; Akill Reason for clone killer
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "reason= $+ %akill.reason
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; Default akill time for clone killer and all akills
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "Time= $+ %akill.time
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; Command to issue an autokill for clone killer
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; DALnet,SquirrelsNET = autokill aIRCDnet and ArabChat = AKILL
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "Command= $+ %akill.cmd
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; Service to msg for the autokill
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "Service= $+ %akill.service
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; Default reason for akills with /akill
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "default= $+ %akill.default
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; Reason and time for /afs (Flooding Services by S3rV3xS)
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "afs= $+ %akill.afs
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "afs.time= $+ %akill.afs.time
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; Reason and time for /afs (Ping Flooding Services by S3rV3xS)
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "aps= $+ %akill.aps
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "aps.time= $+ %akill.aps.time
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; Reason and time for /ahp (Trying to hack passwords by S3rV3xS)
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "ahp= $+ %akill.ahp
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "ahp.time= $+ %akill.ahp.time
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; Reason and time for /ahp2 (Trying to hack password via email by S3rV3xS)
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "ahp2= $+ %akill.ahp2
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "ahp2.time= $+ %akill.ahp2.time
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; Reason and time for /asi (Broken Identify Script by S3rV3xS)
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "asi= $+ %akill.asi
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "asi.time= $+ %akill.asi.time
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; Reason and time for /ac (clones)
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "ac= $+ %akill.ac
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "ac.time= $+ %akill.ac.time
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; Reason and time for /ams (Mass Invites)
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "ams= $+ %akill.ams
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "ams.time= $+ %akill.ams.time
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; Reason and time for /amw (Mass Promosi Websites web)
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "amw= $+ %akill.amw
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "amw.time= $+ %akill.amw.time
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; Reason and time for /afl (Flood)
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "afl= $+ %akill.afl
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "afl.time= $+ %akill.afl.time
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; Reason and time for /ahs (Harassment)
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "ahs= $+ %akill.ahs
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "ahs.time= $+ %akill.ahs.time
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; Reason and time for /asa (Services Abuse)
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "asa= $+ %akill.asa
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "asa.time= $+ %akill.asa.time
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; Reason and time for /ats (Trojan Send)
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "ats= $+ %akill.ats
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "ats.time= $+ %akill.ats.time
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; Show the akills with an echo to the current screen ?
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "show.msg= $+ %show.msg
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ ";
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; Reason and time for /atssp - Spanish (Trojan Send)
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "atssp= $+ %akill.atssp
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "atssp.time= $+ %akill.atssp.time
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ ";
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "[KLINE]
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; Default kline reason for clone killer
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "reason= $+ %kline.reason
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; Default kline time for clone killer
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "time= $+ %kline.time
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ ";
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "[KILL]
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; Reason for the masskill clones feature
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "reason= $+ %kill.reason
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; Reason for the mass invites kill
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "ms= $+ %kill.ms
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; Reason for the Mass invites kill Spanish
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "mssp= $+ %kill.mssp
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; Reason for the Harassment kill
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "hs= $+ %kill.hs
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; Reason for the Harassment kill spanish
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "hssp= $+ %kill.hssp
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; Reason for the flooding kill
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "fl= $+ %kill.fl
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; Reason for the flooding kill (spanish)
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "flsp= $+ %kill.flsp
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ ";
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "[Messages]
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; Reason for /an (Services Abuse Notify)
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "an= $+ %msg.an
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; Reason for /mw (Stop trying to hack passwords notify)
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "wm= $+ %msg.wm
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ ";
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "[LOGS]
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; [0/1] Want to Log GlobOps?
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "globops= $+ %globops
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; File to log globops
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "globopslog= $+ %globopslog
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; [0/1] Want to Log ChatOps?
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "chatops= $+ %chatops
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; File to log chatops
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "chatopslog= $+ %chatopslog
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; [0/1] Want to Log LocOps?
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "locops= $+ %locops
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; File to log globops
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "locopslog= $+ %locopslog
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; [0/1] Want to Log Services Notices
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "services= $+ %services
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; File to log Services notices
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "serviceslog= $+ %serviceslog
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; [0/1] Want to Log Routing Notices?
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "routing= $+ %routing
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "; File to log routing
      .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ "routinglog= $+ %routinglog
    }
    else {
      .echo -q $input(%version.ircoptools $'s configuration was not saved. Changes will take effect just for this session.,4,IRCopTools Configuration)
    }

  }
}
alias createwindows {
  window -knem @Kill Messages
  titlebar @Kill Messages on $network
  ; #### Commented the Flood window
  ; window -knem @Flood
  ; titlebar @Flood on $server
  ; echo -ti2 @Flood 4[N] If you arent +f you can safelly close this window
  ; #### Commented the Exploits window
  ; window -knem @Exploits
  ; titlebar @Exploits - Forbidden Filetypes sends on $server
  ; echo -ti2 @Exploits 4[N] If you arent +e you can safelly close this window
  ; #### Commented the Clients window
  ; window -knem @Clients
  ; titlebar @Clients on $server
  ; echo -ti2 @Clients 4[N] If you arent +c you can safelly close this window
  ; #### Commented the user requests window
  ; window -knem @User
  ; titlebar @User Requests on $server
  ; echo -ti2 @User 4[N] If you arent +y you can safelly close this window
  ; #### commented the STATSL window
  ; window -knem @StatsL
  ; titlebar @StatsL on $network
  window -knem @Raw Network Messages
  window -knem @Network Stuff
  titlebar @Network Stuff on $network
  window -knem @Routing Stuff
  titlebar @Routing Stuff on $network
  window -knem @Clones
  titlebar @Clones on $network
  window -knem @Local Operator Notices
  titlebar @Local Operator Notices on $network
  window -knem @ChatOps
  titlebar @ChatOps on $network
  ; #### Commented the HelpOp Window
  ; window -kem @HelpOp
  ; titlebar @HelpOp on $network
  ; echo -ti2 @HelpOp 4[N] If you arent +h or in a network that supports helpops you can safelly close this window
  window -knem @Global Operator Notices
  titlebar @Global Operator Notices on $network
  window -knem @Services
  titlebar @Services on $network
}
alias infectado { /ban # $1- 2 | /kill $1- Tienes el virus $input(Nombre del virus,1,Virus) cargado en tu sistema, ve a http://www.nohack.net/ para deshacerte de él. }
alias infected { /ban # $1- 2 | /kill $1- You have the virus $input(Virus Name,1,Virus) loaded in your system, please go to http://www.nohack.net/ to get rid of it. }
alias kdms { /ban # $1- 2 | /kill $1- There is a new virus thats being offered on the IRC via DCC; its name is dmsetup.exe(or similar). DO NOT ACCEPT IT. DO NOT EXECUT IT. For more info please go to http://www.nohack.net/ and get rid of that virus }
alias kdmssp { /ban # $1- 2 | /kill $1- Hay un nuevo virus que esta siendo pasado via DCC; su nombre es dmsetup.exe(o similar). NO LO ACEPTES. NO LO EJECUTES. Para más información ve a  http://www.nohack.net/ y ve como debes hacer para deshacerte de este virus }
alias statsl { .enable #statsl | if ($1-) { set %servidor.stats.l $1 | .stats l $1 } | else { set %servidor.stats.l $server | .stats l $1 } }
alias statsl2 { .enable #statsl2 | if ($1-) { set %servidor.stats.l $1 | .stats l $1 } | else { set %servidor.stats.l $server | .stats l $1 } | dialog -m statsl statsl }
;
alias sping {
  .enable #sping
  .set %hora.envio.sping $ctime($asctime)
  if ($1) {
    .raw ping $server $1-
  }
  else {
    .echo -a 2[N] Usage: /sping <complete.server.name>
  }
}

#sping off
on ^*:PONG:{
  .set %tiempo.sping $calc(%hora.envio.sping - $ctime($asctime))
  if ( %tiempo.sping < 0 ) { .set %tiempo.sping 0 }
  .echo -a 8-12¤8- 14S15ekejap 14y15er 12¤8-
 6[2 $+ $1 SPING Reply6] $duration(%tiempo.sping)
  .unset %hora.envio.sping
  .unset %tiempo.sping
  .disable #sping
  haltdef
}
#sping end
;
; #### AntiClone module by Brandon ####
;
alias f8 { set %clone.add %clone.buscar | set %whoreply 1 | .enable #whoreply | dialog -m clonelist clonelist }
alias f9 { set %clone.add %clone.buscar2 | set %whoreply 1 | .enable #whoreply2 | dialog -m clonelist2 clonelist2 }

dialog clonelist {
  title "Clones"
  size -1 -1 500 230
  text "Clone List For:", 1, 10 30 140 140, left
  edit "", 2, 80 28 400 23, read autovs
  list 3, 110 60 370 150,extsel hsbar vsbar tab
  button "Refresh List", 10, 17 60 75 25, default
  button "Mass Kill", 11, 17 90 75 25, default
  button "Temp K:Line", 12, 17 120 75 25, default
  button "AKill", 13, 17 150 75 25, default
  button "Close", 14, 17 180 75 25, ok
}

dialog clonelist2 {
  title "Clones ident@host"
  size -1 -1 500 230
  text "Clone List For:", 1, 10 30 140 140, left
  edit "", 2, 80 28 400 23, read autovs
  list 3, 110 60 370 150,extsel hsbar vsbar tab
  button "Refresh List", 10, 17 60 75 25, default
  button "Mass Kill", 11, 17 90 75 25, default
  button "Temp K:Line", 12, 17 120 75 25, default
  button "AKill", 13, 17 150 75 25, default
  button "Close", 14, 17 180 75 25, ok
}

on *:dialog:clonelist:*:*:{

  if (@ isin %clone.add ) {
    set %posicion.arroba $pos( %clone.add,@,1)
    set %posicion.rescate $calc($len( %clone.add ) - %posicion.arroba ) 
    set %clone.add $right( %clone.add , %posicion.rescate )
  }
  ;
  if ($devent == init) {
    if (%clone.add) { raw -q who %clone.add | did -a clonelist 2 %clone.add }
    else { did -a clonelist 2 Error:  No Hostname }
  }
  if ( ($did == 10) && ($devent == sclick ) ) { set %whoreply 1 | .enable #whoreply | did -r clonelist 2 | did -a clonelist 2 %clone.add | did -r clonelist 3 | raw -q who %clone.add }
  if ( ($did == 11) && ($devent == sclick ) ) { set %whoreply 2 | .enable #whoreply | raw -q who %clone.add | did -ra clonelist 2 $did(2).text $chr(91) $+ MassKilled $+ $chr(93) | did -r clonelist 3 }
  if ( ($did == 12) && ($devent == sclick ) ) { .raw kline %kline.time *@ $+ %clone.add : $+ %kline.reason | did -ra clonelist 2 $did(2).text $chr(91) $+ k:lined $+ $chr(93) }
  if ( ($did == 13) && ($devent == sclick ) ) { .raw privmsg %akill.service : $+ %akill.cmd add %akill.time *@ $+ %clone.add %akill.reason | did -ra clonelist 2 $did(2).text $chr(91) $+ AKilled $+ $chr(93) }
  if ( ($did == 14) && ($devent == sclick ) ) { unset %clone.add | unset %posicion.arroba | unset %posicion.rescate }
}
;
on *:dialog:clonelist2:*:*:{

  if (@ isin %clone.add ) {
    set %posicion.arroba $pos( %clone.add,@,1)
    set %posicion.rescate $calc($len( %clone.add ) - %posicion.arroba ) 
    set %clone.ident $left( %clone.add , $calc( %posicion.arroba -1 ) )
    set %clone.add $right( %clone.add , %posicion.rescate )
  }

  if ( %clone.ident == $null ) { set %clone.ident * }
  ;
  if ($devent == init) {
    if (%clone.add) { raw -q who +ui %clone.ident %clone.add | did -a clonelist2 2 %clone.ident $+ @ $+ %clone.add }
    else { did -a clonelist2 2 Error:  No Hostname }
  }
  if ( ($did == 10) && ($devent == sclick ) ) { set %whoreply 1 | .enable #whoreply2 | did -r clonelist2 2 | did -a clonelist2 2 %clone.ident $+ @ $+ %clone.add | did -r clonelist2 3 | raw -q who +ui %clone.ident %clone.add }
  if ( ($did == 11) && ($devent == sclick ) ) { set %whoreply 2 | .enable #whoreply2 | raw -q who +ui %clone.ident %clone.add | did -ra clonelist2 2 $did(2).text $chr(91) $+ MassKilled $+ $chr(93) | did -r clonelist2 3 }
  if ( ($did == 12) && ($devent == sclick ) ) { .raw kline %kline.time %clone.ident $+ @ $+ %clone.add : $+ %kline.reason | did -ra clonelist2 2 $did(2).text $chr(91) $+ k:lined $+ $chr(93) }
  if ( ($did == 13) && ($devent == sclick ) ) { .raw privmsg %akill.service : $+ %akill.cmd time %akill.time *! $+ %clone.ident $+ @ $+ %clone.add %akill.reason | did -ra clonelist2 2 $did(2).text $chr(91) $+ AKilled $+ $chr(93) }
  if ( ($did == 14) && ($devent == sclick ) ) { unset %clone.ident | unset %clone.add | unset %posicion.arroba | unset %posicion.rescate }
}
;
#whoreply off
raw 352:*:{
  if (%whoreply == 1) { did -a clonelist 3 $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93) | halt }
  elseif (%whoreply == 2) { if (%clone.num) { goto next } | else { set %clone.num 0 } | :next | inc %clone.num | did -a clonelist 3 Killing $6 | kill $6 %kill.reason $chr(91) $+ %clone.num $+ $chr(93) | halt }
}
raw 315:*:{ did -a clonelist 3 End Of Search | unset %clone.num | unset %whoreply | .disable #whoreply | halt }
#whoreply end
;
#whoreply2 on
raw 352:*:{
  if (%whoreply == 1) { did -a clonelist2 3 $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93) | halt }
  elseif (%whoreply == 2) { if (%clone.num) { goto next } | else { set %clone.num 0 } | :next | inc %clone.num | did -a clonelist2 3 Killing $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93) | kill $6 %kill.reason $chr(91) $+ %clone.num $+ $chr(93) | halt }
}
raw 315:*:{ did -a clonelist2 3 End Of Search | unset %clone.num | unset %whoreply | .disable #whoreply2 | halt }
#whoreply2 end
;
; #### Answer to CLSCAN ####
;
#clscan off
raw 302:*:{
  if (@ isin $2 ) {
    set %posicion.arroba $pos( $2 ,@,1)
    set %posicion.rescate $calc($len( $2 ) - %posicion.arroba ) 
    set %clone.add $right( $2 , %posicion.rescate )
    set %whoreply 1
    .enable #whoreply
    dialog -m clonelist clonelist 
  }
  else {
    echo -a Could not scan Clones. User not present.
  }
  .disable #clscan
  haltdef
}
#clscan end
;
; #### STATSL ####
;
dialog statsl {
  title "Stats L"
  size -1 -1 500 190
  text "Stats L Report for:", 1, 10 10 140 140, left
  text "", 2, 110 10 200 23
  list 3, 110 30 380 150,hsbar vsbar
  button "Refresh", 10, 17 30 75 25, default
  button "Close", 14, 17 60 75 25, ok
}
on *:dialog:statsl:*:*:{
  did -a statsl 2 %servidor.stats.l
  if ( ($did == 10) && ($devent == sclick ) ) { .enable #statsl2 | did -r statsl 2 | did -a statsl 2 %servidor.stats.l | did -r statsl 3 | .stats l %servidor.stats.l }
  if ( ($did == 14) && ($devent == sclick ) ) { unset %servidor.stats.l }
}
;
#statsl off
raw 211:*:{ 
  if ( $3 == SendQ ) {
    if ( $active != @StatsL ) {
      window -kem @StatsL
      titlebar @StatsL on $network
    }
    echo -ti2 @StatsL 2[SL] SendQ and OpenSince Report on2 %servidor.stats.l 
  }
  else {
    set %posicion.punto $pos( $2, . ,1)
    set %slserver $left( $2 , %posicion.punto )
    if ( $active != @StatsL ) {
      window -kem @StatsL
      titlebar @StatsL on $network
    }
    echo -ti2 @StatsL %slserver $+ * SendQ:2 $3 ( $+ $duration( $8 ) $+ )
  }
  haltdef
}
raw 219:*:{
  if ( $active != @StatsL ) {
    window -kem @StatsL
    titlebar @StatsL on $network
  }
  echo -ti2 @StatsL 2[SL] $3-
  unset %servidor.stats.l
  unset %posicion.punto
  unset %slserver
  .disable #statsl
  haltdef
}
raw 402:*:{
  if ( $active != @StatsL ) {
    window -kem @StatsL
    titlebar @StatsL on $network
  }
  echo -ti2 @StatsL 2[SL] $3-
  unset %servidor.stats.l
  unset %posicion.punto
  unset %slserver
  .disable #statsl
  haltdef
}
#statsl end
;
#statsl2 off
raw 211:*:{ 
  if ( $3 == SendQ ) {
    did -a statsl 3 [SL] SendQ and OpenSince Report on %servidor.stats.l
  }
  else {
    set %posicion.punto $pos( $2, . ,1)
    set %slserver $left( $2 , %posicion.punto )
    did -a statsl 3 %slserver $+ * SendQ: $3 ( $+ $duration( $8 ) $+ )
  }
  haltdef
}
raw 219:*:{ did -a statsl 3 [SL] $3-
  unset %posicion.punto
  unset %slserver
  .disable #statsl2
  haltdef
}
raw 402:*:{ did -a statsl 3 [SL] $3-
  unset %posicion.punto
  unset %slserver
  .disable #statsl2
  haltdef
}
#statsl2 end
;
; #### Popups ####
;
menu status {
  IRCop
  .Oper:.oper $input(Oper Nick,1,Oper) $input(Oper Password,2,Oper)
  .SAmode:.samode $input(#channel +-modes [nick],1,SAmode)
  .Notices
  ..ChatOps:.chatops : $input(Your message,1)
  ..LocOps:.locops : $input(Your message,1)
  ..GlobOps:.globops : $input(Your message,1)
  ..HelpOps:.helpop : $input(Your message,1)
  ..WallOps:.wallops : $input(Your message,1)
  ..Server Notice:.notice $ $+ $input(Server Name,1,Sever Notice) [Server Wide Notice] $input(Message,1,Server Notice) [Please do NOT respond]
  ..Host Notice:.notice $chr(35) $+ $input(Host,1,Host Notice) [Host Notice] $input(Message,1,Host Notice) [Please do NOT respond]
  .Connects
  ..Connect:.connect $input(Server [<Port> [Source Server]],1,Sever Connect)
  ..Squit:.quote squit $input(Server name,1,Squit Server) : $+ $input(Message or reason,1,Squit Server)
  .Oper
  ..Rehash
  ...Rehash:rehash
  ...Rehash DNS:rehash DNS
  ...Rehash IP:rehash IP
  ...Rehash tklines:rehash tklines
  ...Rehash gc:rehash gc
  ...Rehash motd:rehash gc
  ..Restart:restart $input(Password for operation,1,Sever Operation)
  ..Die:die $input(Password for operation,1,Sever Operation)
  ..Close:quote close
  .Kill, k-Line,z-line
  ..Kill:kill $input(Enter Nick,1) $input(Enter reason,1)
  ..K-Line
  ...Add:kline $input(nick or ident@host,1,K-Line) $input(reason,1,K-Line)
  ...Add Timed:kline $input(Time,1,K-Line) $input(nick or ident@host,1,K-Line) $input(reason,1,K-Line)
  ...Del:unkline $input(ident@server,1,K-Line)
  ...List:stats k
  ..Z-Line
  ...Add:zline $input(nick or IP,1,Z-Line) $input(reason,1,Z-Line)
  ...Del:unzline $input(nick or IP,1,Z-Line)
  ...List:stats d
  .High Traffic Mode
  ..HTM:htm
  ..HTM TO:htm to $input(Value in Kps,1,High Traffic Mode HTM)
  ..HTM ON:htm on
  ..HTM OFF:htm off
  ..HTM Noisy:htm noisy
  ..HTM Quit:htm quiet
  .Set 
  ..MAX:.quote set max $input(Please enter value or press ENTER for current,1)
  ..FLUDNUM:.quote set fludnum $input(Please enter value or press ENTER for current,1)
  ..FLUDTIME:.quote set fludtime $input(Please enter value or press ENTER for current,1)
  ..FLUDBLOCK:.quote set fludblock $input(Please enter value or press ENTER for current,1)
  ..SPAMNUM:.quote set spamnum $input(Please enter value or press ENTER for current,1)
  ..SPAMTIME:.quote set spamtime $input(Please enter value or press ENTER for current,1)
  ..SPLITDELAY:.quote set splitdelay $input(Please enter value or press ENTER for current,1)
  .Lines
  ..b/B lines:stats b $input(Server name [Enter for current],1)
  ..C/N lines:stats c $input(Server name [Enter for current],1)
  ..d/D lines:stats d $input(Server name [Enter for current],1)
  ..e/E lines:stats e $input(Server name [Enter for current],1)
  ..f/F lines:stats f $input(Server name [Enter for current],1)
  ..g/G lines:stats g $input(Server name [Enter for current],1)
  ..h/L lines:stats h $input(Server name [Enter for current],1)
  ..i lines:stats i $input(Server name [Enter for current],1)
  ..K lines:stats K $input(Server name [Enter for current],1)
  ..k lines:stats k $input(Server name [Enter for current],1)
  ..l lines:stats l $input(Server name [Enter for current] or nick,1)
  ..L lines:stats L $input(Server name [Enter for current] or nick,1)
  ..m lines:stats m $input(Server name [Enter for current],1)
  ..o/O lines:stats o $input(Server name [Enter for current],1)
  ..p lines:stats p $input(Server name [Enter for current],1)
  ..q lines:stats q $input(Server name [Enter for current],1)
  ..Q lines:stats Q $input(Server name [Enter for current],1)
  ..r lines:stats r $input(Server name [Enter for current],1)
  ..t lines:stats t $input(Server name [Enter for current],1)
  ..u lines:stats u $input(Server name [Enter for current],1)
  ..U lines:stats U $input(Server name [Enter for current],1)
  ..v lines:stats v $input(Server name [Enter for current],1)
  ..w lines:stats w $input(Server name [Enter for current],1)
  ..x lines:stats x $input(Server name [Enter for current],1)
  ..y lines:stats y $input(Server name [Enter for current],1)
  ..z lines:stats z $input(Server name [Enter for current],1)
  ..? lines:stats ? $input(Server name [Enter for current],1)
  .OperServ
  ..Global:.operserv global $input(Message to Send,1)
  ..Uptime:.operserv uptime
  ..ListADM:.operserv listadm
  ..Stats:.operserv stats
  ..AutoKill
  ...Add:.operserv akill add $+ $input(Address,1,Akill) $+ $input(Reason,1,Akill)
  ...Add timed:.operserv akill add $+ $input(Time in minutes,1,Akill) $+ $input(Address,1,Akill) $+ $input(Reason,1,Akill)
  ...Del:.operserv akill del $+ $input(Address,1,Akill)
  ...List:.operserv akill list 
  ..SGLINE
  ...List:.operserv sgline list $input(Search Pattern,1,Akill)
  ...Add:.operserv sgline add $input(Mask to SGLINE,1,Akill) $+ , $+ $input(Reason,1,Akill)
  ...Del:.operserv sgline del $input(Mask to Un-SGLINE,1,Akill)
  ..SQLINE
  ...List:.operserv sqline list $input(Search Pattern,1,Akill)
  ...Add:.operserv sqline add $input(Nick to SQLINE,1,Akill) $input(Reason,1,Akill)
  ...Del:.operserv sqline del $input(Nick to Un-SQLINE,1,Akill)
  ..Trigger:.operserv trigger $input(user@host,1,Trigger) $input(Host Count [Enter for current],1,Trigger)
  ..MassDeop:.operserv massdeop $input(Channel name - including #,1)
  ..MassKick:.operserv masskick $input(Channel name - including #,1) $input(Message or reason,1,MassKick)
  ..ClearBans:.operserv clearbans $input(Channel name - including #,1)
  .RootServ
  ..Help:.msg rootserv help
  ..Adm List:.msg rootserv listadm
  ..Stats:.msg RootServ stats
  ..UpTime:.msg RootServ UPTIME
  ..Ignore:
  ...List:.msg rootserv ignore
  ...Add Timed:.msg rootserv ignore time $input(Time in minutes,1,Ignore) $input(Address to ignore,1,Ignore)
  ...Add:.msg rootserv ignore $input(Address to ignore,1,Ignore)
  ...Del:.msg rootserv ignore del $+ $input(Address to un ignore,1,Ignore)
  ..ListNicks:.msg RootServ listnicks $input(Enter Pattern,1)
  ..ListChans:.msg RootServ listchans $input(Enter Pattern,1)
  ..IdNicks:.msg RootServ Idnicks $input(Enter Nick,1)
  ..IdChans:.msg RootServ Idchans $input(Enter Nick,1)
  -
}

menu query,nicklist {
  IRCop Csop
  .Kill $snick(#,1)
  ..Reason:kill $$* $input(Enter reason,1)
  ..MassInvites:kill $$* 4Pengiklanan Web/Server secara besar-besaran dilarang sama sekali di MyICT. HENTIKAN!! Lawati ( http://www.myict.org ) untuk keterangan lanjut.
  ..Harassment:kill $$*4Harassment is not permitted. Please stop doing it.
  ..Flood:kill $$* 4"Flood" dilarang sama sekali di MyICT. HENTIKAN!! Lawati ( http://www.myict.org ) untuk keterangan lanjut.
  .Clone Search $snick(#,1):clscan $snick(#,1)
  .GetPass $snick(#,1):nickserv getpass $$1
  .Drop $snick(#,1):nickserv drop $$1
  .Freeze $snick(#,1):nickserv freeze $$1 on
  .UnFreeze $snick(#,1):nickserv freeze $+ $$1 off
  .Mark $snick(#,1):nickserv mark $$1 $input(ON or OFF,1)
}

menu channel {
  IRCop / CSop
  .SAmode # +o $me:samode # +o $me
  .GetPass #:chanserv getpass #
  .SendPass #:chanserv sendpass #
  .Forbid #:chanserv forbid # $input(ON or OFF,1)
  .Freeze #:chanserv freeze $+ # $input(ON or OFF,1)
  .Mark #:chanserv mark # $input(ON or OFF,1)
  .Close #:chanserv close # $input(Reason for this close,1)
  .ReOpen #:chanserv close $+ # off
  .MassDeop #:operserv massdeop #
  .MassKick #:operserv masskick # $input(Enter reason,1)
  .ClearBans #:chanserv clearbans #
  .#Help
  ..English:say This is a Help Channel. Please dont idle here, and neither make your self away. If you have a question please let us now on the channel, and don't use private messages. Thank you.
}

menu menubar {
  .Configure:/configure
  .IRCopTools Help:/run $mircdir $+ ircoptools\ircoptools.hlp
}
