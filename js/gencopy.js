//The javascript that copies the contents of a div to clipboard.
//this is a snippet from http://edupala.com/copy-div-content-clipboard/
function copyClipboard() {
  var elm = document.getElementById("divClipboard");
  // for Internet Explorer
  if(document.body.createTextRange) {
    var range = document.body.createTextRange();
    range.moveToElementText(elm);
    range.select();
    document.execCommand("Copy");
    alert("Copied div content to clipboard");
  }
  else if(window.getSelection) {
    // other browsers
    var selection = window.getSelection();
    var range = document.createRange();
    range.selectNodeContents(elm);
    selection.removeAllRanges();
    selection.addRange(range);
    document.execCommand("Copy");
  }
}
//this is a snippet from http://edupala.com/copy-div-content-clipboard/
