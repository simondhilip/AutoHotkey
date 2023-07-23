#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force
;Gui, +AlwaysOnTop +Ex8000000
my_picturefile = %A_Temp%\wind.png
FileInstall, wind.png, %my_picturefile%, 1
;Gui, Add, Picture,x720 y254 w80 h50, %my_picturefile%
Gui Add, Picture, gdummy4   x720 y254 w80 h50 BackgroundTrans AltSubmit,%my_picturefile%

Gui, Add, TEXT,x5 y285 , © Powered By Support Team

Gui, Font, S12  ,  Comic Sans MS

Gosub,currentTime
Gosub,guiupdator
SetTimer,currentTime,500
Gui, Add, Text,x300 y260, OS_TIME =
Gui, Add, Text, x400 y260 w100 h120 vsimpletime



Gui, Color, CC0C0C0
Gui, Margin, 10 , 10
Gui, Font, S9  , Courier New



Gui, Add, Tab3,x0 y0, Utility|Server_URL|Settings
SoundPlay *-1 

Gui, Tab, Utility

Gui, Add, GroupBox, x5 y35 w790 h90 Center c000080, Restart Utility
Gui, Add, Radio, x30 y70 vSta, Start
Gui, Add, Radio, x100 y70  vSto, Stop
Gui, Add, DropDownList,x200 y68 w130 r10 vDDLS ,SERVER LIST||SYSPROD|DEVPROD|UATPROD|ODD|EVEN|ELITE|PRIME|DEVMAJOR|TRAINPROD|
Gui, Add, DropDownList,x400 y68 w130 r10 vDDL ,INSTANCE||BROADBAND|ALL_SERVERS|
Gui, Add, Button, x600 y68 w70 h23 gServerbutton,GO
;Gui Add, Picture,  gButtonAnswer  x600 y65 w70 h35 BackgroundTrans AltSubmit,go.png


Gui, Add, GroupBox, x5 y150 w790 h90 Center c000080, Ticket Assignment
Gui, Add, Text, x10 y190 w400 h20 ,Enter The File Path to Assign Tickets ::
Gui, Add, Edit, x325 y190 w400 h20 vPath r1,
Gui, Add, Button, gTicketbutton x730 y190 w25 h23  , GO


Gui, Show, x375 y245 h300 w800, Utility Tool
Return



currentTime:
FormatTime,Time,T12,hh:mm:ss
Gosub,guiupdator
Return

guiupdator:
GuiControl, text, simpletime , %Time%
return


Serverbutton:
{
   Gui, Submit,NoHide
   
   
   if (Sta) 
      
	 {
	 
	 if DDLS = SYSPROD
		 {
	 
		if DDL = BROADBAND
			
		 Run, plinkx64.exe -ssh xxx161.xxx.xxx.com -l mss00t1 -pw T0d@y101 serverpath/start_bb_sysprod.sh
	     ;MsgBox, Requested to Start the SYSPROD BROADBAND servers
		
		else if DDL = ALL_SERVERS
		
		
		MsgBox, Requested to start the sysprod alllll servers
		
		}
		
	  else if 	DDLS = DEVPROD
	     {
	 
		if DDL = BROADBAND
			
		Run, plinkx64.exe -ssh xxx184.xxx.xxx.com -l typeusername -pw typepassword serverpath/start_bb_devprod.sh
		 ;MsgBox, Requested to start the DEVPROD BROADBAND servers
	 
		
		else if DDL = ALL_SERVERS
		
		
		MsgBox, Requested to start the DEVPROD alllll servers
		
		}
		
		else if 	DDLS = UATPROD
	     {
	 
		if DDL = BROADBAND
		 
         Run, plinkx64.exe -ssh xxx394.xxx.xxx.com -l typeusername -pw typepassword serverpath/start_bb_uatprod.sh		 
		 ;MsgBox, Requested to start the UATPROD BROADBAND servers
	 
		
		else if DDL = ALL_SERVERS
		
		
		MsgBox, Requested to start the UATPROD alllll servers
		
		}
		
		else if 	DDLS = ODD
	     {
	 
		if DDL = BROADBAND
			
		 MsgBox, Requested to start the ODD BROADBAND servers
	 
		
		else if DDL = ALL_SERVERS
		
		
		MsgBox, Requested to start the ODD alllll servers
		
		}
		
		else if 	DDLS = EVEN
	     {
	 
		if DDL = BROADBAND
			
		 MsgBox, Requested to start the EVEN BROADBAND servers
	 
		
		else if DDL = ALL_SERVERS
		
		
		MsgBox, Requested to start the EVEN alllll servers
		
		}
		
		else if 	DDLS = ELITE
	     {
	 
		if DDL = BROADBAND
			
		 MsgBox, Requested to start the ELITE BROADBAND servers
	 
		
		else if DDL = ALL_SERVERS
		
		
		MsgBox, Requested to start the ELITE alllll servers
		
		}
		
		else if 	DDLS = PRIME
	     {
	 
		if DDL = BROADBAND
			
		 MsgBox, Requested to start the PRIME BROADBAND servers
	 
		
		else if DDL = ALL_SERVERS
		
		
		MsgBox, Requested to start the PRIME alllll servers
		
		}
		
		else if 	DDLS = DEVMAJOR
	     {
	 
		if DDL = BROADBAND
			
		 MsgBox, Requested to start the DEVMAJOR BROADBAND servers
	 
		
		else if DDL = ALL_SERVERS
		
		
		MsgBox, Requested to start the DEVMAJOR alllll servers
		
		}
		
		else if 	DDLS = TRAINPROD
	     {
	 
		if DDL = BROADBAND
			
		 MsgBox, Requested to start the TRAINPROD BROADBAND servers
	 
		
		else if DDL = ALL_SERVERS
		
		
		MsgBox, Requested to start the TRAINPROD alllll servers
		
		}
		
		
		
	 }
	  
   else if (Sto)

       {
	 
	 if DDLS = SYSPROD
		 {
	 
		if DDL = BROADBAND
			
		  Run, plinkx64.exe -ssh xxx161.xxx.xxx.com -l typeusername -pw typepassword serverpath/stop_bb_sysprod.sh
		  ;MsgBox, Requested to stop the SYSPROD BROADBAND servers
	 
		
		else if DDL = ALL_SERVERS
		
		
		MsgBox, Requested to stop the sysprod alllll servers
		
		}
		else if 	DDLS = DEVPROD
	     {
	 
		if DDL = BROADBAND
			
		 Run, plinkx64.exe -ssh xxx184.xxx.xxx.com -l typeusername -pw typepassword serverpath/stop_bb_devprod.sh	
		 ;MsgBox, Requested to stop the DEVPROD BROADBAND servers
	 
		
		else if DDL = ALL_SERVERS
		
		
		MsgBox, Requested to stop the DEVPROD alllll servers
		
		}
		
		
		else if 	DDLS = UATPROD
	     {
	 
		if DDL = BROADBAND
			
		Run, plinkx64.exe -ssh xxx394.xxx.xxx.com -l typeusername -pw typepassword serverpath/stop_bb_uatprod.sh	
		 ;MsgBox, Requested to start the UATPROD BROADBAND servers
	 
		
		else if DDL = ALL_SERVERS
		
		
		MsgBox, Requested to start the UATPROD alllll servers
		
		}
		
		else if 	DDLS = ODD
	     {
	 
		if DDL = BROADBAND
			
		 MsgBox, Requested to start the ODD BROADBAND servers
	 
		
		else if DDL = ALL_SERVERS
		
		
		MsgBox, Requested to start the ODD alllll servers
		
		}
		
		else if 	DDLS = EVEN
	     {
	 
		if DDL = BROADBAND
			
		 MsgBox, Requested to start the EVEN BROADBAND servers
	 
		
		else if DDL = ALL_SERVERS
		
		
		MsgBox, Requested to start the EVEN alllll servers
		
		}
		
		else if 	DDLS = ELITE
	     {
	 
		if DDL = BROADBAND
			
		 MsgBox, Requested to start the ELITE BROADBAND servers
	 
		
		else if DDL = ALL_SERVERS
		
		
		MsgBox, Requested to start the ELITE alllll servers
		
		}
		
		else if 	DDLS = PRIME
	     {
	 
		if DDL = BROADBAND
			
		 MsgBox, Requested to start the PRIME BROADBAND servers
	 
		
		else if DDL = ALL_SERVERS
		
		
		MsgBox, Requested to start the PRIME alllll servers
		
		}
		
		else if 	DDLS = DEVMAJOR
	     {
	 
		if DDL = BROADBAND
			
		 MsgBox, Requested to start the DEVMAJOR BROADBAND servers
	 
		
		else if DDL = ALL_SERVERS
		
		
		MsgBox, Requested to start the DEVMAJOR alllll servers
		
		}
		
		else if 	DDLS = TRAINPROD
	     {
	 
		if DDL = BROADBAND
			
		 MsgBox, Requested to start the TRAINPROD BROADBAND servers
	 
		
		else if DDL = ALL_SERVERS
		
		
		MsgBox, Requested to start the TRAINPROD alllll servers
		
		}
		
		
		
		
		
		
	 
	 }
	 
	 
 }
	return
   

Ticketbutton:
Gui, Submit, NoHide
run, chrome.exe http://itcsm.xxx.com
sleep,12000
Read_file(Path)
Send ^w 
MsgBox, Hey Buddy Ticket Assignment Completed...
return

dummy4:
  Run, chrome.exe https://www.xxxxx.com/high-speed-internet
  return

;Functions


Read_file(Path)
	{
		;MsgBox, 'started calling'
		Array := []
		Loop, Read,%Path%
		{
			Array.Push(A_LoopReadLine) 
		}
		for index, element in Array 
		{
			FirstPos := InStr(element, "," , CaseSensitive := false, StartingPos := 1, Occurrence := 1)
			SecondPos := InStr(element, "," , CaseSensitive := false, StartingPos := 1, Occurrence := 2)
			
			;MsgBox, %FirstPos%
			Ticket_number := SubStr(element, 1 , FirstPos-1)
			;MsgBox, %Ticket_number%
			Assigned_person := Substr(element,FirstPos+1,SecondPos-FirstPos-1)
			;MsgBox, %Assigned_person%
			
			;MsgBox Name is %Name%
			;MsgBox Email_id is %Email_id%
			;MsgBox Designation is %Designation%
			send_email(Ticket_number,Assigned_person)
		}
		return
	}
	
	
send_email(Ticket_number,Assigned_person)
{
Sleep, 1000
MouseClick, left,1122,153
sleep,1000
Send ^a {Del}
sleep,1000
Send, %Ticket_number%
sleep,1000
Send, {ENTER}
sleep,4000
MouseClick, left,133,431
sleep,7500
Send {WheelDown}
sleep, 200
Send {WheelDown}
sleep, 200
Send {WheelDown}
sleep, 200
Send {WheelDown}
sleep, 200
Send {WheelDown}
sleep, 200
Send {WheelDown}
Sleep, 200
MouseClick, left,60,654
Sleep, 1000
Send %Assigned_person%
Sleep, 500
Send {Enter}
Sleep, 3000
MouseClick, left,34,196
Sleep, 3000

;MsgBox, 'Script Ran completed'
return
}



esc::ExitApp       