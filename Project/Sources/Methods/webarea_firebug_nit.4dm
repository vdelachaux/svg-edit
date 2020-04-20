//%attributes = {"invisible":true}
  // ----------------------------------------------------
  // Method : web.area.firebug.init
  // Created 15/01/10 by Vincent de Lachaux
  // ----------------------------------------------------
  // Description
  //
  // ----------------------------------------------------
  // Declarations
C_TEXT:C284($1)

C_TEXT:C284($Txt_buffer;$Txt_code_js)

If (False:C215)
	C_TEXT:C284(webarea_firebug_nit ;$1)
End if 

  // ----------------------------------------------------
  // Initialisations
$Txt_code_js:="var firebug=document.createElement('script');"
$Txt_code_js:=$Txt_code_js+"firebug.setAttribute('src','http://getfirebug.com/releases/lite/1.2/firebug-lite-compressed.js');"
$Txt_code_js:=$Txt_code_js+"document.body.appendChild(firebug);"
$Txt_code_js:=$Txt_code_js+"(function(){if(window.firebug.version){firebug.init();}else{setTimeout(arguments.callee);}})();void(firebug);"

  // ----------------------------------------------------

$Txt_buffer:=WA Evaluate JavaScript:C1029(*;$1;$Txt_code_js)