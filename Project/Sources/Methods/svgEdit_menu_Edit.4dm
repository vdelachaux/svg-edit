//%attributes = {"invisible":true}
  // ----------------------------------------------------
  // Method : svgEdit.Menu.Edit
  // Created 14/01/10 by Vincent de Lachaux
  // ----------------------------------------------------
  // Description
  //
  // ----------------------------------------------------
  // Declarations
C_BOOLEAN:C305($Boo_selected)
C_LONGINT:C283($Lon_unused;$Lon_x;$Lon_y)
C_TEXT:C284($kTxt_webArea;$Mnu_choice;$Mnu_edit;$Txt_buffer)

  // ----------------------------------------------------
  // Initialisations
$kTxt_webArea:="WebArea"
$Boo_selected:=True:C214  //I don't find how to know if an object is selected
$Mnu_edit:=Create menu:C408

  // ----------------------------------------------------


  //Si (Num(WA Executer JavaScript(*;$kTxt_webArea;"svgCanvas.getUndoStackSize()"))>0)
  //2.4 > 1
If (Num:C11(WA Evaluate JavaScript:C1029(*;$kTxt_webArea;"svgCanvas.getUndoStackSize()"))>1)
	$Txt_buffer:=WA Evaluate JavaScript:C1029(*;$kTxt_webArea;"svgCanvas.getNextUndoCommandText()")
	APPEND MENU ITEM:C411($Mnu_edit;Get localized string:C991("undo")+" '"+$Txt_buffer+"'")
Else 
	APPEND MENU ITEM:C411($Mnu_edit;Get localized string:C991("undo"))
	DISABLE MENU ITEM:C150($Mnu_edit;-1)
End if 
SET MENU ITEM PARAMETER:C1004($Mnu_edit;-1;"undo")

If (Num:C11(WA Evaluate JavaScript:C1029(*;$kTxt_webArea;"svgCanvas.getRedoStackSize()"))>0)
	$Txt_buffer:=WA Evaluate JavaScript:C1029(*;$kTxt_webArea;"svgCanvas.getNextRedoCommandText()")
	APPEND MENU ITEM:C411($Mnu_edit;Get localized string:C991("redo")+" '"+$Txt_buffer+"'")
Else 
	APPEND MENU ITEM:C411($Mnu_edit;Get localized string:C991("redo"))
	DISABLE MENU ITEM:C150($Mnu_edit;-1)
End if 
SET MENU ITEM PARAMETER:C1004($Mnu_edit;-1;"redo")

APPEND MENU ITEM:C411($Mnu_edit;"-")

APPEND MENU ITEM:C411($Mnu_edit;Get localized string:C991("cut"))
SET MENU ITEM PARAMETER:C1004($Mnu_edit;-1;"cut")
DISABLE MENU ITEM:C150($Mnu_edit;-1)  //Not available yet

APPEND MENU ITEM:C411($Mnu_edit;Get localized string:C991("copy"))
SET MENU ITEM PARAMETER:C1004($Mnu_edit;-1;"copy")
DISABLE MENU ITEM:C150($Mnu_edit;-1)  //Not available yet

APPEND MENU ITEM:C411($Mnu_edit;Get localized string:C991("past"))
SET MENU ITEM PARAMETER:C1004($Mnu_edit;-1;"paste")
DISABLE MENU ITEM:C150($Mnu_edit;-1)  //Not available yet

APPEND MENU ITEM:C411($Mnu_edit;Get localized string:C991("erase"))
SET MENU ITEM PARAMETER:C1004($Mnu_edit;-1;"erase")
If (Not:C34($Boo_selected))
	DISABLE MENU ITEM:C150($Mnu_edit;-1)
End if 

APPEND MENU ITEM:C411($Mnu_edit;Get localized string:C991("selectAll"))
SET MENU ITEM PARAMETER:C1004($Mnu_edit;-1;"selectAll")
DISABLE MENU ITEM:C150($Mnu_edit;-1)

APPEND MENU ITEM:C411($Mnu_edit;Get localized string:C991("duplicate"))
SET MENU ITEM PARAMETER:C1004($Mnu_edit;-1;"clone")
If (Not:C34($Boo_selected))
	DISABLE MENU ITEM:C150($Mnu_edit;-1)
End if 

OBJECT GET COORDINATES:C663(Self:C308->;$Lon_x;$Lon_unused;$Lon_unused;$Lon_y)
$Mnu_choice:=Dynamic pop up menu:C1006($Mnu_edit;"";$Lon_x;$Lon_y)

RELEASE MENU:C978($Mnu_edit)

Case of 
		  //______________________________________________________
	: (Length:C16($Mnu_choice)=0)
		
		  //nothing to do
		
		  //______________________________________________________
	: ($Mnu_choice="undo")
		
		svgCanvas_undo ($kTxt_webArea)
		
		  //______________________________________________________
	: ($Mnu_choice="redo")
		
		svgCanvas_redo ($kTxt_webArea)
		
		  //______________________________________________________
	: ($Mnu_choice="cut")  //Not available yet
		
		  //______________________________________________________
	: ($Mnu_choice="copy")  //Not available yet
		
		  //______________________________________________________
	: ($Mnu_choice="paste")  //Not available yet
		
		  //______________________________________________________
	: ($Mnu_choice="erase")  //Not available yet
		
		svgCanvas_deleteSelected ($kTxt_webArea)
		  //______________________________________________________
	: ($Mnu_choice="selectAll")
		
		
		  //______________________________________________________
	: ($Mnu_choice="clone")
		
		svgCanvas_cloneSelected ($kTxt_webArea)
		
		  //______________________________________________________
	Else 
		
		TRACE:C157
		
		  //______________________________________________________
End case 
