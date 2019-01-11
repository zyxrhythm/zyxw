#!/bin/bash
#This script was created by Zyx Rhythm (email:zyxrhythm@gmail.com)
#You can download, copy and use it as you see fit.
#If ever you need to post or show the code to people
#Though you are not required to, crediting the the author will be much appreciated.
################################################
#https://github.com/zyxrhythm
#############################################

#start the html header
echo "Content-type: text/html"
echo ""

echo '<!DOCTYPE html>'

echo '<html>'

#Tab title
echo '<title>BBC (0.06)</title>'

#start of head
echo '<head>'
echo '<link rel="icon" type="image/png" href="/icon.png" />'

cat <<EOX
<meta name="description" content="BigBlackCactus.com (BBC) is a website that can fetch the whois information of a domain, dig DNS records of domains and sub domains from name servers, can also do a simple check to identify about the SSL certificate issued for a domain/sub domain name.">
<meta name="keywords" content="DIG, DNS, WHOIS, SSL CHECK">
<meta name="author" content="Zyx Rhythm">
 
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-32625644-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-32625644-1');
</script>
EOX

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

#start of body
echo '<body>'

#specififies the PATHs needed by the bash script
#PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
#export $PATH

#stores the string from bbc.sh to a variable
qs0=$QUERY_STRING;

#converts all uppercasr form qs to lowercase
qs=$(echo $qs0 | awk '{print tolower($0)}');



echo '<br/>'
echo '<br/>'
echo 'Blank Space.'
echo '<br/>'
echo '<br/>'
echo "Taylor Swift?!?"


#butchers the qs string and gets the domain and to whois
domain=$(grep -oP '(?<=domain=).*?(?=&)' <<< "$qs");
whoyou=$(echo $qs | sed 's/.*whoisip=//');

#ARIN WHOIS

if [[ "$whoyou" == "whoisip" && $domain =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$]]; then

	IPadd=$(echo $domain | tr -d '\040\011\012\015' );
	zyxip=$(whois $IPadd -h whois.arin.net);
	echo '<div class="code-bg" id="divClipboard">'
	echo '<p>'

	echo "<pre>$zyxip</pre>";

else

echo '<div class="code-bg" id="divClipboard">'
echo '<p>'
echo " Not a valid domain!" 
echo '</p>'

;;

esac

echo '</p>'

echo '</div>'


echo '<p> <a href="/cgi-bin/bbc.sh" > << back | track</a> </p>' 

fi
fi

#fi

#end of body and html
echo '</body>'
echo '</html>'

exit 0;

