//%attributes = {"invisible":true}
  // ----------------------------------------------------
  // Method : svgCanvas.getSvgString
  // Created 14/01/10 by Vincent de Lachaux
  // ----------------------------------------------------
  // Description
  //
  // ----------------------------------------------------
  // Declarations
C_BOOLEAN:C305($0)
C_TEXT:C284($1)
C_TEXT:C284($2)

C_TEXT:C284($Txt_buffer)

If (False:C215)
	C_BOOLEAN:C305(svgCanvas_setSvgString ;$0)
	C_TEXT:C284(svgCanvas_setSvgString ;$1)
	C_TEXT:C284(svgCanvas_setSvgString ;$2)
End if 

  // ----------------------------------------------------
  // Initialisations

$Txt_buffer:=Replace string:C233($2;"\r";"")
$Txt_buffer:=Replace string:C233($Txt_buffer;"\n";"")
$Txt_buffer:=Replace string:C233($Txt_buffer;"\t";"")

  // ----------------------------------------------------

$0:=(WA Evaluate JavaScript:C1029(*;$1;"svgCanvas.clearSelection();svgCanvas.setSvgString('"+$Txt_buffer+"')")="true")
