C_TEXT:C284($kTxt_webArea;$Txt_buffer;$Txt_dummy)

$kTxt_webArea:="WebArea"


WA EXECUTE JAVASCRIPT FUNCTION:C1043(*;$kTxt_webArea;"svgCanvas.setLang";*;Get database localization:C1009)

  //$kTxt_webArea:="WebArea"
  //
  //
  //$Txt_buffer:="svgCanvas.selectedElement != null;"
  //$Txt_dummy:=WA Executer JavaScript(*;$kTxt_webArea;$Txt_buffer)
  //
  //$Txt_dummy:=WA Executer JavaScript(*;$kTxt_webArea;"svgCanvas.getImageTitle();")


  //$Txt_dummy:=WA Executer JavaScript(*;$kTxt_webArea;"svgCanvas.open();")

  //$Txt_HTML:=""
  //$Txt_HTML:=$Txt_HTML+"function() {if (selectedElements[0] == null) { return; }return(true);};"
  //$Txt_dummy:=WA Executer JavaScript(*;$Txt_webArea;$Txt_HTML)
