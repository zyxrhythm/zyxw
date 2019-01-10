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
echo '<title>BBC (0.7)</title>'

#start of head
echo '<head>'
echo '<link rel="icon" type="image/png" href="/icon.png" />'


#meta for crawlers - and google analytics
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

<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<script>
  (adsbygoogle = window.adsbygoogle || []).push({
    google_ad_client: "ca-pub-3422469360028179",
    enable_page_level_ads: true
  });
</script>

EOX

#General CSS
cat <<EOS
<style>

a:link { color: red;  }
a:active { color: red;  }
a:hover { color: red;  }
a:visited { color: red;  }


div a:link { color: tomato;  }
div a:active { color: tomato;  }
div a:hover { color: tomato;  }
div a:visited { color: tomato;  }

strong {color: green;
}

p  { font-family: verdana; font-size: 85%;
}

h1 { font-family: verdana; font-size: 70%;
}

body { background-color:black; color:white;
}

pre{ white-space: pre-wrap; font-size: 85%; font-family: verdana;
}

hr {color:grey;
}

</style>

EOS

#The javascript that copies the contents of div to clipboard.
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

#back | track button
echo '<p> <a href="/cgi-bin/bbc.sh" ><< back | track</a> </p>' 

#The BBC copy button
echo '<br/>'
echo '<hr>'
echo '<button onclick="copyClipboard()">BBC Copy</button>'

#end of html head
echo '</head>'

#specififies the PATHs needed by the bash script
#PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
#export $PATH

#stores the QUERY_STRING from bbc.sh to a variable and converts all uppercase letters to lowercase
qs=$(echo $QUERY_STRING | awk '{print tolower($0)}' );

#list of supported TLDs
shopt -s extglob
gtldlist='+(aarp|abarth|abb|abbott|abbvie|abc|able|abogado|abudhabi|academy|accenture|accountant|accountants|aco|active|actor|adac|ads|adult|aeg|aero|aetna|afamilycompany|afl|africa|agakhan|agency|aig|aigo|airbus|airforce|airtel|akdn|alfaromeo|alibaba|alipay|allfinanz|allstate|ally|alsace|alstom|americanexpress|americanfamily|amex|amfam|amica|amsterdam|analytics|android|anquan|anz|aol|apartments|app|apple|aquarelle|arab|aramco|archi|army|arpa|art|arte|asda|asia|associates|athleta|attorney|auction|audi|audible|audio|auspost|author|auto|autos|avianca|aws|axa|azure|baby|baidu|banamex|bananarepublic|band|bank|bar|barcelona|barclaycard|barclays|barefoot|bargains|baseball|basketball|bauhaus|bayern|bbc|bbt|bbva|bcg|bcn|beats|beauty|beer|bentley|berlin|best|bestbuy|bet|bharti|bible|bid|bike|bing|bingo|bio|biz|black|blackfriday|blanco|blockbuster|blog|bloomberg|blue|bms|bmw|bnl|bnpparibas|boats|boehringer|bofa|bom|bond|boo|book|booking|bosch|bostik|boston|bot|boutique|box|bradesco|bridgestone|broadway|broker|brother|brussels|budapest|bugatti|build|builders|business|buy|buzz|bzh|cab|cafe|cal|call|calvinklein|cam|camera|camp|cancerresearch|canon|capetown|capital|capitalone|car|caravan|cards|care|career|careers|cars|cartier|casa|case|caseih|cash|casino|cat|catering|catholic|cba|cbn|cbre|cbs|ceb|center|ceo|cern|cfa|cfd|chanel|channel|charity|chase|chat|cheap|chintai|christmas|chrome|chrysler|church|cipriani|circle|cisco|citadel|citi|citic|city|cityeats|claims|cleaning|click|clinic|clinique|clothing|cloud|club|clubmed|cocoach|codes|coffee|college|cologne|com|comcast|commbank|community|company|compare|computer|comsec|condos|construction|consulting|contact|contractors|cooking|cookingchannel|cool|coop|corsica|country|coupon|coupons|courses|credit|creditcard|creditunion|cricket|crown|crs|cruise|cruises|csc|cuisinella|cymru|cyou|dabur|dad|dance|data|date|dating|datsun|day|dclk|dds|deal|dealer|deals|degree|delivery|dell|deloitte|delta|democrat|dental|dentist|desi|design|dev|dhl|diamonds|diet|digital|direct|directory|discount|discover|dish|diy|dnp|docs|doctor|dodge|dog|doha|domains|dot|download|drive|dtv|dubai|duck|dunlop|duns|dupont|durban|dvag|dvr|earth|eat|eco|edeka|edu|education|email|emerck|energy|engineer|engineering|enterprises|epost|epson|equipment|ericsson|erni|esq|estate|esurance|etisalat|eurovision|eus|events|everbank|exchange|expert|exposed|express|extraspace|fage|fail|fairwinds|faith|family|fan|fans|farm|farmers|fashion|fast|fedex|feedback|ferrari|ferrero|fi|fiat|fidelity|fido|film|final|finance|financial|fire|firestone|firmdale|fish|fishing|fit|fitness|flickr|flights|flir|florist|flowers|fly|foo|food|foodnetwork|football|ford|forex|forsale|forum|foundation|fox|free|fresenius|frl|frogans|frontdoor|frontier|ftr|fujitsu|fujixerox|fun|fund|furniture|futbol|fyi|gal|gallery|gallo|gallup|game|games|gap|garden|gbiz|gdn|gea|gent|genting|george|ggee|gift|gifts|gives|giving|glade|glass|gle|global|globo|gmail|gmbh|gmo|gmx|godaddy|gold|goldpoint|golf|goo|goodyear|goog|google|gop|got|gov|grainger|graphics|gratis|green|gripe|grocery|group|guardian|gucci|guge|guide|guitars|guru|hair|hamburg|hangout|haus|hbo|hdfc|hdfcbank|health|healthcare|help|helsinki|here|hermes|hgtv|hiphop|hisamitsu|hitachi|hiv|hkt|hockey|holdings|holiday|homedepot|homegoods|homes|homesense|honda|honeywell|horse|hospital|host|hosting|hot|hoteles|hotels|hotmail|house|how|hsbc|hughes|hyatt|hyundai|ibm|icbc|ice|icu|ieee|ifm|ikano|imamat|imdb|immo|immobilien|in|inc|industries|infiniti|info|ing|ink|institute|insurance|insure|int|intel|international|intuit|investments|ipiranga|irish|iselect|ismaili|ist|istanbul|itau|itv|iveco|jaguar|java|jcb|jcp|jeep|jetzt|jewelry|jio|jll|jmp|jnj|jo|jobs|joburg|jot|joy|jpmorgan|jprs|juegos|juniper|kaufen|kddi|ke|kerryhotels|kerrylogistics|kerryproperties|kfh|kia|kim|kinder|kindle|kitchen|kiwi|koeln|komatsu|kosher|kpmg|kpn|krd|kred|kuokgroup|kyoto|lacaixa|ladbrokes|lamborghini|lamer|lancaster|lancia|lancome|land|landrover|lanxess|lasalle|lat|latino|latrobe|law|lawyer|lds|lease|leclerc|lefrak|legal|lego|lexus|lgbt|liaison|lidl|life|lifeinsurance|lifestyle|lighting|like|lilly|limited|limo|lincoln|linde|link|lipsy|live|living|lixil|llc|loan|loans|locker|locus|loft|lol|london|lotte|lotto|love|lpl|lplfinancial|ltd|ltda|lundbeck|lupin|luxe|luxury|macys|madrid|maif|maison|makeup|man|management|mango|map|market|marketing|markets|marriott|marshalls|maserati|mattel|mba|mckinsey|med|media|meet|melbourne|meme|memorial|men|menu|merckmsd|metlife|miami|microsoft|mil|mini|mint|mit|mitsubishi|mlb|mls|mma|mobi|mobile|mobily|moda|moe|moi|mom|monash|money|monster|mopar|mormon|mortgage|moscow|moto|motorcycles|mov|movie|movistar|msd|mtn|mtr|museum|mutual|nab|nadex|nagoya|name|nationwide|natura|navy|nba|nec|net|netbank|network|neustar|new|newholland|news|next|nextdirect|nexus|nfl|ngo|nhk|nico|nike|nikon|ninja|nissan|nissay|nokia|northwesternmutual|now|nowruz|nowtv|nra|nrw|ntt|nyc|obi|observer|off|office|okinawa|olayan|olayangroup|oldnavy|ollo|omega|one|ong|onl|online|onyourside|ooo|open|oracle|orange|org|organic|origins|osaka|otsuka|ott|ovh|page|panasonic|paris|pars|partners|parts|party|passagens|pay|pccw|pet|pfizer|pharmacy|phd|philips|phone|photo|photography|photos|physio|piaget|pics|pictet|pictures|pid|pin|ping|pink|pioneer|pizza|place|play|playstation|plumbing|plus|pnc|pohl|poker|politie|porn|post|pramerica|praxi|press|prime|pro|prod|productions|prof|progressive|promo|properties|property|protection|pru|prudential|pub|pwc|qpon|quebec|quest|qvc|racing|radio|raid|read|realestate|realtor|realty|recipes|red|redstone|redumbrella|rehab|reise|reisen|reit|reliance|ren|rent|rentals|repair|report|republican|rest|restaurant|review|reviews|rexroth|rich|richardli|ricoh|rightathome|ril|rio|rip|rmit|rocher|rocks|rodeo|rogers|room|rsvp|rugby|ruhr|run|rwe|ryukyu|saarland|safe|safety|sakura|sale|salon|samsclub|samsung|sandvik|sandvikcoromant|sanofi|sap|sarl|sas|save|saxo|sbi|sbs|sca|scb|schaeffler|schmidt|scholarships|school|schule|schwarz|science|scjohnson|scor|scot|search|seat|secure|security|seek|select|sener|services|ses|seven|sew|sex|sexy|sfr|shangrila|sharp|shaw|shell|shia|shiksha|shoes|shop|shopping|shouji|show|showtime|shriram|silk|sina|singles|site|ski|skin|sky|skype|sling|smart|smile|sncf|soccer|social|softbank|software|sohu|solar|solutions|song|sony|soy|space|spiegel|sport|spot|spreadbetting|srl|srt|stada|staples|star|starhub|statebank|statefarm|stc|stcgroup|stockholm|storage|store|stream|studio|study|style|sucks|supplies|supply|support|surf|surgery|suzuki|swatch|swiftcover|swiss|sydney|symantec|systems|tab|taipei|talk|taobao|target|tatamotors|tatar|tattoo|tax|taxi|tci|tdk|team|tech|technology|tel|telefonica|temasek|tennis|teva|thd|theater|theatre|tiaa|tickets|tienda|tiffany|tips|tires|tirol|tjmaxx|tjx|tkmaxx|tmall|today|tokyo|tools|top|toray|toshiba|total|tours|town|toyota|toys|trade|trading|training|travel|travelchannel|travelers|travelersinsurance|trust|trv|tube|tui|tunes|tushu|tvs|ubank|ubs|uconnect|unicom|university|uno|uol|ups|vacations|vana|vanguard|vegas|ventures|verisign|versicherung|vet|viajes|video|vig|viking|villas|vin|vip|virgin|visa|vision|vistaprint|viva|vivo|vlaanderen|vodka|volkswagen|volvo|vote|voting|voto|voyage|vuelos|wales|walmart|walter|wang|wanggou|warman|watch|watches|weather|weatherchannel|webcam|weber|website|wed|wedding|weibo|weir|whoswho|wien|wiki|williamhill|win|windows|wine|winners|wme|wolterskluwer|woodside|work|works|world|wow|wtc|wtf|xbox|xerox|xfinity|xihuan|xin|xyz|yachts|yamaxun|yodobashi|yoga|yokohama|you|youtube|yun|zappos|zara|zero|zip|zippo|zone|zuerich)'

#list of supported ccTLDs
cctldlist='+(ac|ad|ae|af|ag|ai|al|am|ao|aq|ar|as|at|aw|ax|az|ba|bb|bd|be|bf|bg|bh|bi|bj|bm|bn|bo|br|bs|bt|bw|by|bz|cc|cd|cf|cg|ch|ci|ck|cl|cm|cn|co|cr|cu|cv|cw|cx|cy|cz|de|dj|dk|dm|do|dz|ec|ee|eg|er|es|et|eu|fi|fj|fk|fm|fo|fr|ga|gd|ge|gf|gg|gh|gi|gl|gm|gn|gp|gq|gr|gs|gt|gu|gw|gy|hk|hm|hn|hr|ht|hu|id|ie|il|im|in|io|iq|ir|is|it|je|jm|jo|jp|ke|kg|kh|ki|km|kn|kp|kr|kw|ky|kz|la|lb|lc|li|lk|lr|ls|lt|lu|lv|ly|ma|mc|md|me|mg|mh|mk|ml|mm|mn|mo|mp|mq|mr|ms|mt|mu|mv|mw|mx|my|mz|na|nc|ne|nf|ng|ni|nl|no|np|nr|nu|om|pa|pe|pf|pg|pk|pl|pm|pn|pr|ps|pt|pw|py|qa|re|ro|rs|ru|rw|sa|sb|sc|sd|se|sh|si|sk|sl|sm|sn|so|sr|ss|st|sv|sx|sy|sz|tc|td|tf|tg|th|tj|tk|tl|tm|tn|to|tr|tt|tv|tw|tz|ua|ug|uk|us|uy|uz|va|vc|ve|vg|vi|vn|vu|wf|ws|ye|yt|za|zm|zw)'

#removes "domain=" from the QUERY_STRING and store it in domain variable
domain=$(echo $qs | cut -f2 -d"=" );

#checks if the domain entered is null  or the BBC Special is cliked without placing anything on the Domain box - then throws a Taylor Swift error
if [[ -z "$domain" ]]; then

#start of html body
echo '<body>'

echo '<div class="code-bg" id="divClipboard">'
echo '<p>'

cat <<EOTS

Blank Space?!? . . .
<br> <br>
Is that you Taylor Swift?!?
<br>
OMG! - I love you! Will you marry me!
<br> <br>
If not - Please input a domain name. Sorna.

EOTS

else

# query whois about the domain and store the raw output to a variable
zyx=$(whois $domain);

#domain validity check -if  a domain does not exist or has beed deleted the usual raw whois result starts with "no" if no is not on the contect of the the above variable the script continues
dvcheck=$(echo "${zyx:0:2}" | awk '{print tolower($0)}' );
if [[ "$dvcheck" = "no" ]]; then

#start of html body
echo '<body>'

#the error that pops up when a domain is not valid/ does not exist
echo '<p>'
echo '<br/>'
echo '<div class="code-bg" id="divClipboard">'
echo '<p>'
echo 'Not a valid domain! Sorna.'
echo '</div>'
echo '</p>'

exit 0;
else

#once the domainis validated the TLD is extracted for verification
tld=$( echo $domain | rev | cut -d "." -f1 | rev );

#checks if the TLD is a gtld if it is the script will start to butcher the raw result and get the juicy details
case $tld in
   $gtldlist)

#stores the registrar name on a variable
registrar=$(echo "$zyx" | grep -i -e "registrar name:" -e "registrar:");

#stores the domain status on a variable
dstat=$(echo "$zyx" | grep -i -e "status:" );

#stores the domain's expiration date
expd=$(echo "$zyx" | grep -i -e "registry expiry date:");

#stores the domain's creation date
creationdate=$(echo "$zyx" | grep -i -e "creation date:");

#stores the name servers under the domain on a variable
nameservers=$(echo "$zyx" | grep -i -e "name server:");

#dig A and MX with minimal essential output from the dig command
ar=$(dig +short $domain @8.8.8.8);
mxr=$(dig mx +short $domain @8.8.8.8);

#start of html body
echo '<body>'

#the BBC copy button
echo '<div class="code-bg" id="divClipboard">'
echo '<p>'

#prints the domain name and the registrar
echo "__________________________"
echo "<br/>"
echo "<br/>"
echo "<strong>Domain Name:</strong> $domain";
echo "<br/>"
echo "<br/>"
echo "<strong>Registrar: </strong>${registrar#*:} ";
echo "<br/>"
echo "__________________________"

echo "<br/> <br/>"

#link to the EPP status codes on [Domain Status:]
echo "<a href="/cgi-bin/eppstatuscodes.sh" rel="noopener noreferrer" target="_blank">[!]</a><strong> [Domain Status:]</strong>"

#cycles through the status codes and create a link the status to what it means on eppstatus.sh
echo "<br/>"
while IFS= read -r line
do
   echo  "</br> <a href=/cgi-bin/eppstatuscodes.sh#${line#*#} target=_blank style="color:tomato"> [?]</a> ${line#*#}";
done < <(printf '%s\n' "$dstat");

#print the domain creation and expiration dates
echo "<br/>"
echo "--------------------------"
echo "<br/>"
echo "$creationdate";
echo "<br/>"
echo "$expd" ;
echo "<br/>"
echo "__________________________"
echo "<br/> <br/>"

#link to the name servers history on [Domain Status:] - from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/ns' rel="noopener noreferrer" target="_blank">[!]</a><strong> [Name Servers:]</strong>"


#cycles thorough the name server lines on the raw whois result and removes "name server" before the ":" and prints just the actual servers
echo "<br/>"
while IFS= read -r line
do
   echo  "<br/>   ${line#*:}";
done < <(printf '%s\n' "$nameservers");

echo "<br/>"

echo "__________________________"
echo "<br/> <br/>"

#link to the A record/s history on [A records:] - from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/a' rel="noopener noreferrer" target="_blank" >[!]</a><strong> [A records:]</strong>"

#cycles through multiple A record/s and will get the company/individual that is liable for the IP address
echo "<br/>"
while IFS= read -r line
do
   ar0=$(whois $line | grep -i -e 'person' -e 'orgname' -e 'org-name'| sort -u );
   echo "<br/>   $line   ---" "${ar0#*:}";
done < <(printf '%s\n' "$ar");
echo "<br/>"
echo "__________________________"
echo "<br/> <br/>"

#link to the MX record/s history on [MX records:] - from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/mx' rel="noopener noreferrer" target="_blank" >[!]</a><strong> [MX records:]</strong>"

#cycles through the A record/s under the MX record/s and will get the company/individual that is liable for the IP address
echo "<br/> <br/>"
while IFS= read -r line
do
   echo "$line <br/> ";
   mxr1=$(echo  $line | cut -f2 -d" ");
   mxr2=$(dig a +short "$mxr1" @8.8.8.8 2>/dev/null);
if (( $(grep -c . <<<"$mxr2") > 1)); then
while IFS= read -r line
do
   mxa0=$(whois $line | grep -i -e 'person' -e 'orgname' -e 'org-name' | sort -u );
   echo "<br/> &nbsp; &nbsp; $line   ---" "${mxa0#*:}";

done < <(printf '%s\n' "$mxr2")

echo "<br/>"
else
   mxa1=$(whois $mxr2 | grep -i -e 'person' -e 'orgname' -e 'org-name' | sort -u );
   mxr3="${mxa1#*:}";
   
   echo "&nbsp; &nbsp;$mxr2" "--- $mxr3"
fi
   echo "<br/> <br>"
done < <(printf '%s\n' "$mxr");
echo "__________________________"

;;

$cctldlist)

zyx=$(whois $domain);

#dig A and MX with minimal essential output from Google DNS servers
ar=$(dig +short $domain @8.8.8.8);
mxr=$(dig mx +short $domain @8.8.8.8);

#start of html body
echo '<body>'

echo '<br>'
echo '<h1>ccTLD does not have any configured string manipulation, falling back to raw whois result </h1>'
echo '<br>'

#the BBC copy button
echo '<div class="code-bg" id="divClipboard">'

#displays the raw whois result of ccTLDs
echo "<pre>$zyx</pre>";
echo '<p>'
echo "<br/>"
echo "__________________________"
echo '<br/> <br>'

#link to the A record/s history on [A records:] - from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/a' rel="noopener noreferrer" target="_blank" >[!]</a><strong> [A records:]</strong>"
echo "<br/>"

#cycles through multiple A record/s and will get the company/individual that is liable for the IP address
while IFS= read -r line
do
   ar0=$(whois $line | grep -i -e 'person' -e 'orgname' -e 'org-name'| sort -u );
   echo "<br/>   $line   ---" "${ar0#*:}";
done < <(printf '%s\n' "$ar");

echo "<br/>"
echo "__________________________"
echo "<br/> <br>"

#link to the MX record/s history on [MX records:] - from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/mx' rel="noopener noreferrer" target="_blank" style="color: tomato">[!]</a><strong> [MX records:]</strong>"
echo "<br/> <br/>"

#cycles through the A record/s under the MX record/s and will get the company/individual that is liable for the IP address
while IFS= read -r line
do
   echo "$line <br/> ";
   mxr1=$(echo  $line | cut -f2 -d" ");
   mxr2=$(dig a +short "$mxr1" @8.8.8.8 2>/dev/null);
if (( $(grep -c . <<<"$mxr2") > 1)); then
while IFS= read -r line
do
   mxa0=$(whois $line | grep -i -e 'person' -e 'orgname' -e 'org-name' | sort -u );
   echo "<br/> &nbsp; &nbsp; $line   ---" "${mxa0#*:}";

done < <(printf '%s\n' "$mxr2")
echo "<br/>"
else
   mxa1=$(whois $mxr2 | grep -i -e 'person' -e 'orgname' -e 'org-name' | sort -u );
   mxr3="${mxa1#*:}";
   
   echo "&nbsp; &nbsp;$mxr2" "--- $mxr3"
fi

   echo "<br/> <br>"
done < <(printf '%s\n' "$mxr");
echo "<br/>"
echo "__________________________"

echo '</p>'

echo '</div>'

echo '<br>'
echo '<p> <a href="/cgi-bin/bbc.sh" ><< back | track</a> </p>' 
exit 0;

;;

#special result for .ph ccTLD - by providing a link to whois.dot.ph with the domain submitted for query
ph)
#start of html body
echo '<body>'
cat <<EOQPH
<p>
<br>
<a href='https://whois.dot.ph/?utf8=%E2%9C%93&search=$domain' target="_blank">> Click Here <</a>To get the whois info of this .ph domain.
</p>
</body>
</html>
EOQPH
exit 0;

;;

#special result for .sg ccTLD - by providing a link to www.sgnic.sg with the domain submitted for query
sg)
#start of html body
echo '<body>'

cat <<EOQSG
<p>
<br>
<a href='https://www.sgnic.sg/domain-search.html?SearchKey=$domain' target="_blank">> Click Here <</a>To get the whois info of this .sg domain.
</p>
</body>
</html>
EOQSG
exit 0;

;;

#special whois result trim for CA ccTLDs basically remove everything after "%" on the raw whois result
ca)

zyxca=$(echo "$zyx" | cut -f1 -d"%");

#dig A and MX with minimal essential output
ar=$(dig +short $domain @8.8.8.8);
mxr=$(dig mx +short $domain @8.8.8.8);

#start of html body
echo '<body>'

#the BBC copy button
echo '<div class="code-bg" id="divClipboard">'

#prints the whois result with the the trimming
echo "<pre>$zyxca</pre>";

echo '<p>'

echo "<br/>"
echo "__________________________"
echo '<br/> <br>'

#link to the A record/s history on [A records:] - from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/a' rel="noopener noreferrer" target="_blank" >[!]</a><strong> [A records:]</strong>"
echo "<br/>"

#cycles through multiple A record/s and will get the company/individual that is liable for the IP address
while IFS= read -r line
do
   ar0=$(whois $line | grep -i -e 'person' -e 'orgname' -e 'org-name'| sort -u );
   echo "<br/>   $line   ---" "${ar0#*:}";
done < <(printf '%s\n' "$ar");

echo "<br/>"
echo "__________________________"
echo "<br/> <br>"
#link to the MX record/s history on [MX records:] - from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/mx' rel="noopener noreferrer" target="_blank" >[!]</a><strong> [MX records:]</strong>"
echo "<br/> <br/>"

#cycles through the A record/s under the MX record/s and will get the company/individual that is liable for the IP address
while IFS= read -r line
do
   echo "$line <br/> ";
   mxr1=$(echo  $line | cut -f2 -d" ");
   mxr2=$(dig a +short "$mxr1" @8.8.8.8 2>/dev/null);
if (( $(grep -c . <<<"$mxr2") > 1)); then
while IFS= read -r line
do
   mxa0=$(whois $line | grep -i -e 'person' -e 'orgname' -e 'org-name' | sort -u );
   echo "<br/> &nbsp; &nbsp; $line   ---" "${mxa0#*:}";

done < <(printf '%s\n' "$mxr2")
echo "<br/>"
else
   mxa1=$(whois $mxr2 | grep -i -e 'person' -e 'orgname' -e 'org-name' | sort -u );
   mxr3="${mxa1#*:}";
   
   echo "&nbsp; &nbsp;$mxr2" "--- $mxr3"
fi

   echo "<br/> <br>"
done < <(printf '%s\n' "$mxr");
echo "__________________________"
echo "<br/>"

echo '</p>'

echo '</div>'

echo '<br>'

#the back | track button on the button
echo '<p> <a href="/cgi-bin/bbc.sh" ><< back | track</a> </p>' 
exit 0;

;;

#special trimming for AU ccTLDs
au)

zyx=$(whois $domain );

#stores the registrar name on a variable
registrar=$(echo "$zyx" | grep -i -e "registrar name:" -e "registrar:");

#stores the domain status on a variable
dstat=$(echo "$zyx" | grep -i -e "status:" );

#stores the name servers on a variable
nameservers=$(echo "$zyx" | grep -i -e "name server:");

#stores the registrant contact
regcontact=$(echo "$zyx" | grep -i -e "Registrant Contact Name:");

#stores the tech contact
techcontact=$(echo "$zyx" | grep -i -e "Tech Contact Name:");

#dig A and MX with minimal essential output
ar=$(dig +short $domain @8.8.8.8);
mxr=$(dig mx +short $domain @8.8.8.8);

#start of html body
echo '<body>'

#the BBC copy button
echo '<div class="code-bg" id="divClipboard">'
echo '<p>'

#print the domain and the registrar
echo '<br/>'
echo "__________________________"
echo "<br/> <br>"
echo "<strong>Domain Name:</strong> $domain";"
echo "<br/>"
echo "<br/>"
echo "<strong>Registrar: </strong>${registrar#*:}";
echo "<br/>"
echo "__________________________"
echo "<br/> <br/>"
#link to the EPP status codes on [Domain Status:]
echo "<a href="/cgi-bin/eppstatuscodes.sh" rel="noopener noreferrer" target="_blank" >[!]</a><strong> [Domain Status:]</strong>"

#cycles through the status codes and create a link the status to what it means on eppstatus.sh
echo "<br/>"
while IFS= read -r line
do
   echo  "</br> <a href=/cgi-bin/eppstatuscodes.sh#${line#*#} target=_blank style="color: tomato">[?]</a> ${line#*#}";
done < <(printf '%s\n' "$dstat");

echo "<br/>"
echo "__________________________"
echo "<br/> <br>"

#link to the name servers history on [Name Server:] - from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/ns' rel="noopener noreferrer" target="_blank" >[!]</a><strong> [Name Servers:]</strong>"
echo "<br/>"

#cycles through multiple A record/s and will get the company/individual that is liable for the IP address
while IFS= read -r line
do
   echo  "<br/>   ${line#*:}";
done < <(printf '%s\n' "$nameservers");

echo "<br/>"
echo "__________________________"
echo "<br/> <br>"
echo "$regcontact";
echo "<br/>"
echo "$techcontact";
echo "<br/>"
echo "__________________________"
echo "<br/> <br>"

#link to the MX record/s history on [A records:] - from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/a' rel="noopener noreferrer" target="_blank" >[!]</a><strong> [A records:]</strong>"

#cycles through multiple A record/s and will get the company/individual that is liable for the IP address
while IFS= read -r line
do
   ar0=$(whois $line | grep -i -e 'person' -e 'orgname' -e 'org-name'| sort -u );
   echo "<br/>   $line   ---" "${ar0#*:}";
done < <(printf '%s\n' "$ar");

echo "<br/>"
echo "__________________________"
echo "<br/> <br>"

#link to the MX record/s history on [MX records:] - from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/mx' rel="noopener noreferrer" target="_blank" >[!]</a><strong> [MX records:]</strong>"
echo "<br/> <br/>"

#cycles through the A record/s under the MX record/s and will get the company/individual that is liable for the IP address
while IFS= read -r line
do
   echo "$line <br/> ";
   mxr1=$(echo  $line | cut -f2 -d" ");
   mxr2=$(dig a +short "$mxr1" @8.8.8.8 2>/dev/null);
if (( $(grep -c . <<<"$mxr2") > 1)); then
while IFS= read -r line
do
   mxa0=$(whois $line | grep -i -e 'person' -e 'orgname' -e 'org-name' | sort -u );
   echo "<br/> &nbsp; &nbsp; $line   ---" "${mxa0#*:}";

done < <(printf '%s\n' "$mxr2")
echo "<br/>"
else
   mxa1=$(whois $mxr2 | grep -i -e 'person' -e 'orgname' -e 'org-name' | sort -u );
   mxr3="${mxa1#*:}";
   
   echo "&nbsp; &nbsp;$mxr2" "--- $mxr3"
fi

   echo "<br/> <br>"
done < <(printf '%s\n' "$mxr");
echo "<br/>"
echo "__________________________"
echo '</p>'

;;

#special trimming for NZ ccTLDs
nz)

# query whois about the domain and store the raw output to a variable
zyx=$(whois $domain);

#stores the registrar name on a variable
registrar=$(echo "$zyx" | grep -i -e "registrar_name:");

#stores the domain status on a variable
dstat=$(echo "$zyx" | grep -i -e "query_status:" );

#stores the domain expiration date on a variable
lastmod=$(echo "$zyx" | grep -i -e "domain_datelastmodified:");

#stores the name servers on a variable
nameservers=$(echo "$zyx" | grep -i -e "ns_name_.*");

#dig A and MX with minimal essential output
ar=$(dig +short $domain @8.8.8.8);
mxr=$(dig mx +short $domain @8.8.8.8);

#start of html body
echo '<body>'

#the BBC copy button
echo '<div class="code-bg" id="divClipboard">'
echo '<p>'

#print the domain and the registrar
echo "__________________________"
echo "<br/>"
echo "<br/>"
echo "<strong>Domain Name:</strong> $domain";
echo "<br/>"
echo "<br/>"
echo "Registrar: ${registrar#*:}";
echo "<br/>"
echo "__________________________"
echo "<br/> <br>"

#link to the EPP status codes on [Domain Status:]
echo "<a href="/cgi-bin/eppstatuscodes.sh" rel="noopener noreferrer" target="_blank" >[!]</a><strong> [Domain Status:]</strong>"


while IFS= read -r line
do
   echo  "</br> ${line#*#} ";
done < <(printf '%s\n' "$dstat");
echo '<br>'
echo "--------------------------"

echo "<br/>"
echo "Last Modified: ${lastmod#*:}";
echo "<br/>"
echo "__________________________"
echo "<br/> <br>"

#link to the name servers history on [Name Server:] - from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/ns' rel="noopener noreferrer" target="_blank" >[!]</a><strong> [Name Servers:]</strong>"
echo "<br/>"

#cycles thorough the name server lines on the raw whois result and removes "name server" before the ":" and prints just the actual servers
while IFS= read -r line
do
   echo  "<br/>   ${line#*:}";
done < <(printf '%s\n' "$nameservers");

echo "<br/>"
echo "__________________________"
echo "<br/> <br>"

#link to the A record/s history on [A records:] - from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/a' rel="noopener noreferrer" target="_blank" >[!]</a><strong> [A records:]</strong>"

#cycles through multiple A record/s and will get the company/individual that is liable for the IP address
while IFS= read -r line
do
   ar0=$(whois $line | grep -i -e 'person' -e 'orgname' -e 'org-name'| sort -u );
   echo "<br/>   $line   ---" "${ar0#*:}";
done < <(printf '%s\n' "$ar");

echo "<br/>"
echo "__________________________"
echo "<br/> <br>"

#link to the MX record/s history on [MX records:] - from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/mx' rel="noopener noreferrer" target="_blank" >[!]</a><strong> [MX records:]</strong>"
echo "<br/> <br/>"

#cycles through the A record/s under the MX record/s and will get the company/individual that is liable for the IP address
while IFS= read -r line
do
   echo "$line <br/> ";
   mxr1=$(echo  $line | cut -f2 -d" ");
   mxr2=$(dig a +short "$mxr1" @8.8.8.8 2>/dev/null);
if (( $(grep -c . <<<"$mxr2") > 1)); then
while IFS= read -r line
do
   mxa0=$(whois $line | grep -i -e 'person' -e 'orgname' -e 'org-name' | sort -u );
   echo "<br/> &nbsp; &nbsp; $line   ---" "${mxa0#*:}";

done < <(printf '%s\n' "$mxr2")
echo "<br/>"
else
   mxa1=$(whois $mxr2 | grep -i -e 'person' -e 'orgname' -e 'org-name' | sort -u );
   mxr3="${mxa1#*:}";
   
   echo "&nbsp; &nbsp;$mxr2" "--- $mxr3"
fi

   echo "<br/> <br>"
done < <(printf '%s\n' "$mxr");

echo "<br/>"
echo "__________________________"

echo '</p>'

echo '</div>'

echo '<br>'

#the back | track button
echo '<p> <a href="/cgi-bin/bbc.sh" ><< back | track</a> </p>' 
exit 0;

;;

#throw an error for anything else
   *)

#start of html body
echo '<body>'

#if the domain is not on the list of TLDs throws an error
echo '<div class="code-bg" id="divClipboard">'
echo '<p>'
echo " Not a valid domain!" 
exit 0;
echo '</p>'

;;
esac

echo '</p>'

echo '</div>'

#extracts then queries the whois server of the registar then prints the result with string manipulations
typicalwhoisresult=$(whois $domain);
whoisservergrep=$(echo "$typicalwhoisresult" | grep -i -e "WHOIS Server" | sort -u );
whoisserver=$(echo "$whoisservergrep" | cut -f2 -d":" | tr -d '\040\011\012\015' );

#if [[ "$whoisserver" !== "http://api.fastdomain.com/cgi/whois" ]]; then

semifinale=$(whois $domain -h "$whoisserver" );
rese=$(echo "$semifinale" | grep -i -e "reseller");
registrant=$(echo "$semifinale" | grep -i -e 'registrant\s')
admin=$(echo "$semifinale" | grep -i -e 'admin')
tech=$(echo "$semifinale" | grep -i -e 'tech')

echo "<hr>"
echo "<br>"

echo "$rese"

echo "<br>"
echo "<br>"
echo "[ REGISTRANT: ]"
echo "<br>"
echo "<pre>$registrant</pre>"
echo "<br>"

echo "[ ADMIN: ]"
echo "<br>"
echo "<pre>$admin</pre>"
echo "<br>"

echo "[ TECH: ] "
echo "<br>"
echo "<pre>$tech</pre>"

echo "<hr>"
echo " $whoisservergrep"
echo "<br>"
echo '<hr>'
echo '<p> <a href="/cgi-bin/bbc.sh" ><< back | track</a> </p>'

#else
#echo "<br> click <a href='http://api.fastdomain.com/cgi/whois?domain=$domain' target='_blank'>here</a> for the raw whois info from the registrar.<br>"


#the end of body
echo '</body>'

#the end of html
echo '</html>'

fi

fi

exit 0;
