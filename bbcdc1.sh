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

function ftest() {
echo "WORKS!"
}

functest=$(ftest);

echo '$functest'
#Tab title
echo '<title>BBC (0.5)</title>'

#start of head
echo '<head>'
echo '<link rel="icon" type="image/png" href="https://www.bigblackcactus.com/icon.png" />'
#simple calibri style for paragraphs
echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">'

cat <<EOS
<style>
p  {
    font-family: verdana;
    font-size: 85%;
}

h1 {font-family: verdana;
	font-size: 70%;

}


body {background-color:black;color:white


}

</style>

EOS

echo '<p> <a href="/cgi-bin/bbc.sh" > <--- Back ---<<<</a> </p>' 

#The BBC button
echo '<br/>'
echo '<br/>'
echo '<button onclick="copyClipboard()">BBC Copy</button>'

#end of head
echo '</head>'

#start of body
echo '<body>'

#specififies the PATHs needed by the bash script
PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/local/sbin/UvqqraYrns"
export $PATH

#stores the string from bbc.sh to a variable
qs0=$QUERY_STRING;
qs=$(echo $qs0 | awk '{print tolower($0)}');
shopt -s extglob
gtldlist='+(media|com|net|org|info|biz|space|ninja|club|college|codes|data|wiki|social|shop|radio|co|adult|academy|book|cafe|design|dev|dish)'

cctldlist='+(ac|ad|ae|af|ag|ai|al|am|ao|aq|ar|as|at|au|aw|ax|az|ba|bb|bd|be|bf|bg|bh|bi|bj|bm|bn|bo|br|bs|bt|bw|by|bz|ca|cc|cd|cf|cg|ch|ci|ck|cl|cm|cn|cr|cu|cv|cw|cx|cy|cz|de|dj|dk|dm|do|dz|ec|ee|eg|er|es|et|eu|fi|fj|fk|fm|fo|fr|ga|gd|ge|gf|gg|gh|gi|gl|gm|gn|gp|gq|gr|gs|gt|gu|gw|gy|hk|hm|hn|hr|ht|hu|id|ie|il|im|in|io|iq|ir|is|it|je|jm|jo|jp|ke|kg|kh|ki|km|kn|kp|kr|kw|ky|kz|la|lb|lc|li|lk|lr|ls|lt|lu|lv|ly|ma|mc|md|me|mg|mh|mk|ml|mm|mn|mo|mp|mq|mr|ms|mt|mu|mv|mw|mx|my|mz|na|nc|ne|nf|ng|ni|nl|no|np|nr|nu|nz|om|pa|pe|pf|pg|ph|pk|pl|pm|pn|pr|ps|pt|pw|py|qa|re|ro|rs|ru|rw|sa|sb|sc|sd|se|sg|sh|si|sk|sl|sm|sn|so|sr|ss|st|sv|sx|sy|sz|tc|td|tf|tg|th|tj|tk|tl|tm|tn|to|tr|tt|tv|tw|tz|ua|ug|uk|us|uy|uz|va|vc|ve|vg|vi|vn|vu|wf|ws|ye|yt|za|zm|zw)'

domain=$(grep -oP '(?<=domain=).*?(?=&)' <<< "$qs");

dcheck=$(echo $qs | sed 's/.*dcheck=//');
#removes domain= from the QUERY_STRING and store it in domain variable and converts all uppercase characters to lowercase


#checks if the domain enter is null  or they click the BBC button without placing anything - then throws a Taylor Swift error
echo '<br>'
if [[ -z "$domain" && "$dcheck" = "SSL" ]]; then

echo '<br/>'
echo '<br/>'
echo 'Blank Space.'
echo '<br/>'
echo '<br/>'
echo "Taylor Swift?!?"

else

#cuts and extracts the TLD
tld=$( echo $domain | rev | cut -d "." -f1 | rev );

#checks if the domain is a gtld
case $tld in
   $gtldlist)
echo '<div class="code-bg" id="divClipboard">'
echo '<p>'
   
IP=$(dig +short a $domain);
Issuer0=$(echo | openssl s_client -servername "$domain" -connect "$domain":443 2>/dev/null | openssl x509 -noout -issuer);
Target0=$(echo | openssl s_client -servername "$domain" -connect "$domain":443 2>/dev/null | openssl x509 -noout -subject);
Expiry0=$(echo | openssl s_client -servername "$domain" -connect "$domain":443 2>/dev/null | openssl x509 -noout -enddate);
   
zyxgd=$(dig +noall +answer $DNSR $domain $qns);
Issuer=${Issuer0#*CN=};
Target=${Target0#*CN=};
Expiry=$(echo "$Expiry0"| cut -d "=" -f 2 );
#Daysleft=$(echo $Expiry0 | cut -c 25- +%s) 

echo "<br>"
echo "Resolves to:      "$IP""
echo "<br>"
echo "Cert Issuer:      $Issuer"
echo "<br>"
echo "Domain/s   :      $Target"
echo "<br>"
echo "Expiration :      $Expiry"
echo "<br>"
#echo "Days Left        $Daysleft:"
echo "<br>"
echo '<pre>"$functest"</pre>'
;;

$cctldlist)
echo '<div class="code-bg" id="divClipboard">'
echo '<p>'
   
   
IP=$(dig +short a $domain);   
Issuer0=$(echo | openssl s_client -servername "$domain" -connect "$domain":443 2>/dev/null | openssl x509 -noout -issuer);
Target0=$(echo | openssl s_client -servername "$domain" -connect "$domain":443 2>/dev/null | openssl x509 -noout -subject);
Expiry0=$(echo | openssl s_client -servername "$domain" -connect "$domain":443 2>/dev/null | openssl x509 -noout -enddate);
   
zyxgd=$(dig +noall +answer $DNSR $domain $qns);
Issuer=${Issuer0#*CN=};
Target=${Target0#*CN=};
Expiry=$(echo "$Expiry0"| cut -d "=" -f 2 );
#Daysleft=$(echo $Expiry0 | cut -c 25- +%s) 

echo "<br>"
echo "Resolves to:      "$IP""
echo "<br>"
echo "Cert Issuer:      $Issuer"
echo "<br>"
echo "Domain/s   :      $Target"
echo "<br>"
echo "Expiration :      $Expiry"
echo "<br>"
#echo "Days Left        $Daysleft:"
echo "<br>"


;;

   *)

echo '<div class="code-bg" id="divClipboard">'
echo '<p>'
echo "TLD is currently not supported yet, or Not a valid domain!" 
echo '</p>'

;;

esac

echo '</p>'

echo '</div>'


echo '<p> <a href="/cgi-bin/bbc.sh" > <--- Back ---<<<</a> </p>' 

# the javascript for the lazy that copies the contents of div to clipboard
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

echo '</body>'
echo '</html>'
echo '$functest'
fi

