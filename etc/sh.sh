#!/bin/bash
#This script was created by Zyx Rhythm (email:zyxrhythm@gmail.com)
#You can download, copy and use it as you see fit.
#If ever you need to post or show the code to people
#Though you are not required to, crediting the the author will be much appreciated.
################################################
#https://github.com/zyxrhythm
#############################################
# TEST SH - 
####################################
#start the html header
echo "Content-type: text/html"
echo ""

echo '<!DOCTYPE html>'

echo '<html>'

#Tab title
echo '<title>Whoi IP</title>'

#start of head
echo '<head>'
echo '<link rel="icon" type="image/png" href="/icon.png" />'

echo '<meta name="viewport" content="width=device-width, initial-scale=1.0">'

# the javascript that copies the contents of div to clipboard
#this is a snippet from http://edupala.com/copy-div-content-clipboard/
cat <<EOS2

<script>
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
</script>
EOS2

#CSS
cat <<EOS
<style>

a:link { color: red;  }
a:active { color: red;  }
a:hover { color: red;  }
a:visited { color: red;  }

p  {
    font-family: verdana;
    font-size: 85%;
}

h1 {font-family: verdana;
	font-size: 70%;
}


body {background-color:black;color:white;
}

pre{
    white-space: pre-wrap;font-size: 110%;
}

</style>

EOS

#the back button
echo '<p> <a href="/cgi-bin/bbc.sh" > << back | track</a> </p>' 

#The BBC button
echo '<br/>'
echo '<br/>'
echo '<button onclick="copyClipboard()">BBC Copy</button>'

#end of head
echo '</head>'

qs=$(echo $QUERY_STRING | awk '{print tolower($0)}'| tr -d '\040\011\012\015');

domain="$qs";

zyx=$(whois $domain);

deeg=$(dig +short a $domain @8.8.8.8 );

while IFS= read -r line
do
   ar0=$(whois $line | grep -i -e 'person' -e 'orgname' -e 'org-name'| sort -u );
   echo "<br/>   $line   ---" "${ar0#*:}";
done < <(printf '%s\n' "$ar");


echo '<body>'

cat << EOHF

</body>
</html>

EOHF

exit 0;

