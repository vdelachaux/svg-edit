//%attributes = {"invisible":true}
  // ----------------------------------------------------
  // Method : svgCanvas.getSvgString
  // Created 14/01/10 by Vincent de Lachaux
  // ----------------------------------------------------
  // Description
  //
  // ----------------------------------------------------
  // Declarations
C_TEXT:C284($0)
C_TEXT:C284($1)

If (False:C215)
	C_TEXT:C284(svgCanvas_getSvgString ;$0)
	C_TEXT:C284(svgCanvas_getSvgString ;$1)
End if 

  // ----------------------------------------------------
  // Initialisations

  // ----------------------------------------------------

$0:=WA Evaluate JavaScript:C1029(*;$1;"svgCanvas.clearSelection();svgCanvas.getSvgString()")
