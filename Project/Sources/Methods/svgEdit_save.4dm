//%attributes = {"invisible":true}
  // ----------------------------------------------------
  // Method : svgEdit.save
  // Created 14/01/10 by Vincent de Lachaux
  // ----------------------------------------------------
  // Description
  //
  // ----------------------------------------------------
  // Declarations
C_TEXT:C284($1)

C_TIME:C306($Gmt_docRef)
C_TEXT:C284($Dom_root;$Txt_path)

If (False:C215)
	C_TEXT:C284(svgEdit_save ;$1)
End if 

  // ----------------------------------------------------
  // Initialisations

  // ----------------------------------------------------
$Txt_path:=svgEdit_Txt_path

If (Test path name:C476($Txt_path)#Is a document:K24:1)
	
	$Gmt_docRef:=Create document:C266("";".svg")
	
	If (OK=1)
		
		CLOSE DOCUMENT:C267($Gmt_docRef)
		
		$Txt_path:=DOCUMENT
		
	End if 
	
End if 

If (Test path name:C476($Txt_path)=Is a document:K24:1)
	
	$Dom_root:=DOM Parse XML variable:C720($1)
	
	If (OK=1)
		
		DOM EXPORT TO FILE:C862($Dom_root;$Txt_path)
		
		DOM CLOSE XML:C722($Dom_root)
		
		svgEdit_Txt_path:=$Txt_path
		
	End if 
	
End if 