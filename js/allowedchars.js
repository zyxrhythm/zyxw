//removes nasty white spaces on the text fields that causes alot of issue
//from https://www.mediacollege.com/internet/javascript/form/remove-spaces.html 
function removeSpaces(string) {
 return string.split(' ').join('');
}
//from https://www.mediacollege.com/internet/javascript/form/remove-spaces.html 


//limit the characters allowed in the input that prevents some errors on the sever side scripts
function removeSpecialCharacters(string) {
 return string.replace(/[^A-Za-z0-9.-]/g, '');
}
