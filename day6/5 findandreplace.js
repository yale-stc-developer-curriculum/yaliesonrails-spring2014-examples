//explain regular expressions in general

//document.body is the <body> tag
//innerHTML is a way to select everything inside a node as text (good for find and replace)
//replace uses a regular expression, like find-and-replace
//.replace(/FIND/g, "REPLACE")
//
// /FIND/g
// the /.../ part outlines the regex
// the g means "global" - not just the first one but find and replace all

document.body.innerHTML = document.body.innerHTML.replace(/cloud/g, "butt");
