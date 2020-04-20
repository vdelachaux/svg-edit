C_LONGINT:C283($Lon_formEvent)
C_TEXT:C284($kTxt_webArea;$Txt_dummy;$Txt_url)

$Lon_formEvent:=Form event code:C388
$kTxt_webArea:="WebArea"

Case of 
		  //______________________________________________________
	: ($Lon_formEvent=On Load:K2:1)
		
		svgEdit_init ($kTxt_webArea)
		
		  //______________________________________________________
	: ($Lon_formEvent=On Begin URL Loading:K2:45)
		
		  //______________________________________________________
	: ($Lon_formEvent=On URL Resource Loading:K2:46)
		
		  //______________________________________________________
	: ($Lon_formEvent=On End URL Loading:K2:47)
		
		  //Set the language
		WA EXECUTE JAVASCRIPT FUNCTION:C1043(*;$kTxt_webArea;"svgCanvas.setLang";*;Get database localization:C1009)
		
		  //Set the window title
		SET WINDOW TITLE:C213("SVG-edit - "+WA Evaluate JavaScript:C1029(*;$kTxt_webArea;"svgCanvas.getVersion();");Current form window:C827)
		
		If (Shift down:C543)  // Firebug Installation
			
			webarea_firebug_nit ($kTxt_webArea)
			
		End if 
		
		  //______________________________________________________
	: ($Lon_formEvent=On URL Loading Error:K2:48)
		
		TRACE:C157
		
		$Txt_url:=WA Get current URL:C1025(*;$kTxt_webArea)
		
		  //______________________________________________________
	: ($Lon_formEvent=On URL Filtering:K2:49)
		
		TRACE:C157
		
		$Txt_url:=WA Get last filtered URL:C1035(*;$kTxt_webArea)
		
		  //______________________________________________________
	: ($Lon_formEvent=On Open External Link:K2:50)
		
		TRACE:C157
		
		  //______________________________________________________
	: ($Lon_formEvent=On Window Opening Denied:K2:51)
		
		OPEN URL:C673(WA Get last filtered URL:C1035(*;$kTxt_webArea))
		
	Else 
		
		TRACE:C157
		
		  //______________________________________________________
End case 
