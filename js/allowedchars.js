//from https://www.mediacollege.com/internet/javascript/form/remove-spaces.html 
//removes nasty white spaces on the text fields that causes alot of issue

function removeSpaces(string) {
 return string.split(' ').join('');
}

//limit the characters allowed in the input that prevents some errors on the sever side scripts
function removeSpecialCharacters(string) {
 return string.replace(/[^A-Za-z0-9.-]/g, '');
}
