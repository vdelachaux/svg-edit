
svgEdit 

  //Run 4DPop
  //This code is available even if the component is not present like in the final application.
If (Not:C34(Is compiled mode:C492))
	ARRAY TEXT:C222($tTxt_Components;0)
	COMPONENT LIST:C1001($tTxt_Components)
	If (Find in array:C230($tTxt_Components;"4DPop")>0)
		EXECUTE METHOD:C1007("4DPop_Palette")
	End if 
End if 