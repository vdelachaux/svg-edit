//%attributes = {"invisible":true}
  // ----------------------------------------------------
  // Method : Compiler_svgEdit
  // Created 15/01/10 by Vincent de Lachaux
  // ----------------------------------------------------

C_TEXT:C284(svgEdit_Txt_path)
C_LONGINT:C283(menuFile;menuEdit)
C_TEXT:C284(WebArea)

If (False:C215)
	
	C_TEXT:C284(svgCanvas_cloneSelected ;$1)
	
	C_TEXT:C284(svgCanvas_clearSelection ;$1)
	
	C_TEXT:C284(svgCanvas_deleteSelected ;$1)
	
	C_TEXT:C284(svgCanvas_getSvgString ;$0)
	C_TEXT:C284(svgCanvas_getSvgString ;$1)
	
	C_BOOLEAN:C305(svgCanvas_modified ;$0)
	C_TEXT:C284(svgCanvas_modified ;$1)
	
	C_TEXT:C284(svgCanvas_redo ;$1)
	
	C_BOOLEAN:C305(svgCanvas_setSvgString ;$0)
	C_TEXT:C284(svgCanvas_setSvgString ;$1)
	C_TEXT:C284(svgCanvas_setSvgString ;$2)
	
	C_TEXT:C284(svgCanvas_undo ;$1)
	
End if 

If (False:C215)
	
	C_TEXT:C284(svgEdit_close ;$1)
	
	C_TEXT:C284(svgEdit_init ;$1)
	
	C_TEXT:C284(svgEdit_new ;$1)
	
	C_TEXT:C284(svgEdit_open ;$1)
	
	C_TEXT:C284(svgEdit_save ;$1)
	
	C_TEXT:C284(svgEdit_saveAs ;$1)
	
End if 

If (False:C215)
	
	C_TEXT:C284(webarea_firebug_nit ;$1)
	
End if 