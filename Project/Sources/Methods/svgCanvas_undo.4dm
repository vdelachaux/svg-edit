//%attributes = {"invisible":true}
  // ----------------------------------------------------
  // Method : svgCanvas.undo
  // Created 15/01/10 by Vincent de Lachaux
  // ----------------------------------------------------
  // Description
  //
  // ----------------------------------------------------
  // Declarations
C_TEXT:C284($1)

C_TEXT:C284($Txt_dummy)

If (False:C215)
	C_TEXT:C284(svgCanvas_undo ;$1)
End if 

  // ----------------------------------------------------
  // Initialisations

  // ----------------------------------------------------

$Txt_dummy:=WA Evaluate JavaScript:C1029(*;$1;"svgCanvas.undo();populateLayers();")