//%attributes = {"invisible":true}
  // ----------------------------------------------------
  // Method : svgEdit.menu.file
  // Created 14/01/10 by Vincent de Lachaux
  // ----------------------------------------------------
  // Description
  //
  // ----------------------------------------------------
  // Declarations
C_BOOLEAN:C305($Boo_modified)
C_LONGINT:C283($Lon_unused;$Lon_x;$Lon_y)
C_TEXT:C284($Mnu_choice;$Mnu_file;$kTxt_webArea)

  // ----------------------------------------------------
  // Initialisations
$kTxt_webArea:="WebArea"
$Boo_modified:=svgCanvas_modified ($kTxt_webArea)
$Mnu_file:=Create menu:C408

  // ----------------------------------------------------

APPEND MENU ITEM:C411($Mnu_file;Get localized string:C991("new"))
SET MENU ITEM PARAMETER:C1004($Mnu_file;-1;"new")

APPEND MENU ITEM:C411($Mnu_file;Get localized string:C991("open"))
SET MENU ITEM PARAMETER:C1004($Mnu_file;-1;"open")

APPEND MENU ITEM:C411($Mnu_file;"-")

APPEND MENU ITEM:C411($Mnu_file;Get localized string:C991("save"))
SET MENU ITEM PARAMETER:C1004($Mnu_file;-1;"save")
If (Not:C34($Boo_modified))
	DISABLE MENU ITEM:C150($Mnu_file;-1)
End if 

APPEND MENU ITEM:C411($Mnu_file;Get localized string:C991("saveAs"))
SET MENU ITEM PARAMETER:C1004($Mnu_file;-1;"saveAs")
If (Not:C34($Boo_modified))
	DISABLE MENU ITEM:C150($Mnu_file;-1)
End if 

OBJECT GET COORDINATES:C663(Self:C308->;$Lon_x;$Lon_unused;$Lon_unused;$Lon_y)
$Mnu_choice:=Dynamic pop up menu:C1006($Mnu_file;"";$Lon_x;$Lon_y)

RELEASE MENU:C978($Mnu_file)

Case of 
		  //______________________________________________________
	: (Length:C16($Mnu_choice)=0)
		
		  //nothing to do
		
		  //______________________________________________________
	: ($Mnu_choice="new")
		
		svgEdit_close ($kTxt_webArea)
		svgEdit_new ($kTxt_webArea)
		
		  //______________________________________________________
	: ($Mnu_choice="open")
		
		svgEdit_close ($kTxt_webArea)
		svgEdit_open ($kTxt_webArea)
		
		  //______________________________________________________
	: ($Mnu_choice="save")
		
		svgEdit_save (svgCanvas_getSvgString ($kTxt_webArea))
		
		  //______________________________________________________
	: ($Mnu_choice="saveAsFile")
		
		svgEdit_saveAs (svgCanvas_getSvgString ($kTxt_webArea))
		
		  //______________________________________________________
	Else 
		
		TRACE:C157
		
		  //______________________________________________________
End case 
