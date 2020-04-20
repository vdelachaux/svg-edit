//%attributes = {"invisible":true}
  // ----------------------------------------------------
  // Method : svgEdit.close
  // Created 14/01/10 by Vincent de Lachaux
  // ----------------------------------------------------
  // Description
  //
  // ----------------------------------------------------
  // Declarations
C_TEXT:C284($1)

If (False:C215)
	C_TEXT:C284(svgEdit_close ;$1)
End if 

  // ----------------------------------------------------
  // Initialisations

  // ----------------------------------------------------

If (svgCanvas_modified ($1))
	
	CONFIRM:C162(Get localized string:C991("SaveChanges"))
	
	If (OK=1)
		
		svgEdit_save (svgCanvas_getSvgString ($1))
		
	End if 
	
End if 