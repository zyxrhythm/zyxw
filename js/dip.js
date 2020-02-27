//a customized version of the snippet from http://edupala.com/copy-div-content-clipboard/
//this js script will cut the text to be copied into 2 sections - by default the first section of the text can be copied - and in order for the first and second section to be copied, the check box called 'chicbox' needs to be checked

function copyv2(){
var element =  document.getElementById('chicbox');
if (typeof(element) != 'undefined' && element != null)
{
  var checkBox = document.getElementById('chicbox');
  if (checkBox.checked == true)
  { copyClipboard0(); } 
  else 
  { copyClipboard(); }
}
	else 
	{ copyClipboard(); }
}

function copyClipboard() {
  var elm = document.getElementById('divClipboard');
  // for Internet Explorer
  if(document.body.createTextRange) {
    var range = document.body.createTextRange();
    range.moveToElementText(elm);
    range.select();
    document.execCommand('Copy');
    alert('Copied div content to clipboard');
  }
  else if(window.getSelection) {
    // other browsers
    var selection = window.getSelection();
    var range = document.createRange();
    range.selectNodeContents(elm);
    selection.removeAllRanges();
    selection.addRange(range);
    document.execCommand('Copy');
  }
}

function copyClipboard0() {
  var elm = document.getElementById('divClipboardx');
  // for Internet Explorer
  if(document.body.createTextRange) {
    var range = document.body.createTextRange();
    range.moveToElementText(elm);
    range.select();
    document.execCommand('Copy');
    alert('Copied div content to clipboard');
  }
  else if(window.getSelection) {
    // other browsers
    var selection = window.getSelection();
    var range = document.createRange();
    range.selectNodeContents(elm);
    selection.removeAllRanges();
    selection.addRange(range);
    document.execCommand('Copy');
  }
}
