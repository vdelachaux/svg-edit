//%attributes = {"invisible":true}
  // ----------------------------------------------------
  // Method : svgEdit.open
  // Created 14/01/10 by Vincent de Lachaux
  // ----------------------------------------------------
  // Description
  //
  // ----------------------------------------------------
  // Declarations
C_TEXT:C284($1)

C_BLOB:C604($Blb_buffer)
C_TIME:C306($Gmt_doc)
C_TEXT:C284($Dom_root;$Txt_buffer)

If (False:C215)
	C_TEXT:C284(svgEdit_open ;$1)
End if 

  // ----------------------------------------------------
  // Initialisations

  // ----------------------------------------------------

$Gmt_doc:=Open document:C264("";".svg";Read mode:K24:5)

If (OK=1)
	
	DOCUMENT TO BLOB:C525(DOCUMENT;$Blb_buffer)
	
	If (OK=1)
		
		$Dom_root:=DOM Parse XML variable:C720($Blb_buffer)
		
		If (OK=1)
			
			DOM EXPORT TO VAR:C863($Dom_root;$Txt_buffer)
			
			If (OK=1)
				
				If (svgCanvas_setSvgString ($1;$Txt_buffer))
					
					CLEAR VARIABLE:C89(svgEdit_Txt_path)
					
				Else 
					
					TRACE:C157
					
				End if 
				
			End if 
			
			DOM CLOSE XML:C722($Dom_root)
			
		End if 
		
	End if 
	
End if 