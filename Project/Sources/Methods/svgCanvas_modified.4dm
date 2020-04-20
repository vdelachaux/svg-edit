//%attributes = {"invisible":true}
  // ----------------------------------------------------
  // Method : svgCanvas.modified
  // Created 14/01/10 by Vincent de Lachaux
  // ----------------------------------------------------
  // Description
  //
  // ----------------------------------------------------
  // Declarations
C_BOOLEAN:C305($0)
C_TEXT:C284($1)

If (False:C215)
	C_BOOLEAN:C305(svgCanvas_modified ;$0)
	C_TEXT:C284(svgCanvas_modified ;$1)
End if 

  // ----------------------------------------------------
  // Initialisations


  // ----------------------------------------------------

  //$0:=(Num(WA Executer JavaScript(*;$1;"svgCanvas.getUndoStackSize();"))>0)
  //2.4 > 1 The first is a rename layer action at the creation of the image
$0:=(Num:C11(WA Evaluate JavaScript:C1029(*;$1;"svgCanvas.getUndoStackSize();"))>1)