//%attributes = {"invisible":true}
  // ----------------------------------------------------
  // Method : svgCanvas.cloneSelected
  // Created 15/01/10 by Vincent de Lachaux
  // ----------------------------------------------------
  // Description
  //
  // ----------------------------------------------------
  // Declarations
C_TEXT:C284($1)

If (False:C215)
	C_TEXT:C284(svgCanvas_cloneSelected ;$1)
End if 

  // ----------------------------------------------------
  // Initialisations

  // ----------------------------------------------------

WA EXECUTE JAVASCRIPT FUNCTION:C1043(*;$1;"svgCanvas.cloneSelected")