//%attributes = {"invisible":true}
  // ----------------------------------------------------
  // Method : svgEdit.init
  // Created 15/01/10 by Vincent de Lachaux
  // ----------------------------------------------------
  // Description
  //
  // ----------------------------------------------------
  // Declarations
C_TEXT:C284($1)

C_TEXT:C284($kTxt_librayFolder;$Txt_path;$Txt_webArea)

ARRAY BOOLEAN:C223($tBoo_allowed;0)
ARRAY TEXT:C222($tTxt_urls;0)

If (False:C215)
	C_TEXT:C284(svgEdit_init ;$1)
End if 

  // ----------------------------------------------------
  // Initialisations
$Txt_webArea:=$1
$kTxt_librayFolder:="svg-edit-2.4"  //"svg-edit-2.3"
  // ----------------------------------------------------


$Txt_path:=Get 4D folder:C485(Current resources folder:K5:16)+$kTxt_librayFolder+Folder separator:K24:12+"svg-editor.html"
WA OPEN URL:C1020(*;$Txt_webArea;$Txt_path)

APPEND TO ARRAY:C911($tTxt_urls;"*")
APPEND TO ARRAY:C911($tTxt_urls;"about:blank")
APPEND TO ARRAY:C911($tTxt_urls;"file://*")

APPEND TO ARRAY:C911($tBoo_allowed;False:C215)
APPEND TO ARRAY:C911($tBoo_allowed;True:C214)
APPEND TO ARRAY:C911($tBoo_allowed;True:C214)

WA SET URL FILTERS:C1030(*;$Txt_webArea;$tTxt_urls;$tBoo_allowed)