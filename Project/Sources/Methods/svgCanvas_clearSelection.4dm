//%attributes = {"invisible":true}
  // ----------------------------------------------------
  // Method : svgCanvas.clearSelection
  // Created 14/01/10 by Vincent de Lachaux
  // ----------------------------------------------------
  // Description
  //
  // ----------------------------------------------------
  // Declarations
C_TEXT:C284($1)

If (False:C215)
	C_TEXT:C284(svgCanvas_clearSelection ;$1)
End if 

  // ----------------------------------------------------
  // Initialisations

  // ----------------------------------------------------

WA EXECUTE JAVASCRIPT FUNCTION:C1043(*;$1;"svgCanvas.clearSelection")
