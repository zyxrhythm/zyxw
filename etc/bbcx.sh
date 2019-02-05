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
echo '<title>BBC Special</title>'

#start of head
echo '<head>'
echo '<link rel="icon" type="image/png" href="/icon.png" />'

cat <<EODHEAD0

<!-- Site Description -->
<meta name="description" content="BigBlackCactus.com (BBC) is a website that can look up the whois information of a domain, dig DNS records of domains and sub domains from name servers, etc...">
<meta name="keywords" content="DIG, DNS, WHOIS, SSL CHECK">
<meta name="author" content="Zyx Rhythm">

<!-- Auto Adjust -->
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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

<style>

a {text-decoration: none; }
a:link { color: red;  }
a:active { color: red;  }
a:hover { color: red;  }
a:visited { color: red;  }

div a:link { color: tomato;  font-size: 90%; }
div a:active { color: tomato;  font-size: 90%; }
div a:hover { color: tomato;  font-size: 90%; }
div a:visited { color: tomato;  font-size: 90%; }

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

table { font-family: verdana; border: 2px solid green; font-size: 90%;
}
th { border: 2px solid green;
}
td { vertical-align: top; text-align: left; border: 1px solid green;
}

</style>

<!-- 
The javascript that copies the contents of div to clipboard.
this is a snippet from http://edupala.com/copy-div-content-clipboard/
-->

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

<!-- 
The javascript that copies the contents of div to clipboard.
this is a snippet from http://edupala.com/copy-div-content-clipboard/
-->

EODHEAD0

echo '<link rel="icon" type="image/png" href="/icon.png" />'

cat  << EODHEAD1
<p> <a href="/cgi-bin/bbc.sh" ><small><<</small> back | track</a> </p>
<br/>
<hr>
<button onclick="copyClipboard()">BBC Copy</button>

</head>
EODHEAD1


#stores the QUERY_STRING from bbc.sh to a variable and converts all uppercase letters to lowercase
qs=$(echo $QUERY_STRING | awk '{print tolower($0)}' );

#list of supported TLDs
shopt -s extglob
gtldlist='+(aarp|abarth|abb|abbott|abbvie|abc|able|abogado|abudhabi|academy|accenture|accountant|accountants|aco|active|actor|adac|ads|adult|aeg|aero|aetna|afamilycompany|afl|africa|agakhan|agency|aig|aigo|airbus|airforce|airtel|akdn|alfaromeo|alibaba|alipay|allfinanz|allstate|ally|alsace|alstom|americanexpress|americanfamily|amex|amfam|amica|amsterdam|analytics|android|anquan|anz|aol|apartments|app|apple|aquarelle|arab|aramco|archi|army|arpa|art|arte|asda|asia|associates|athleta|attorney|auction|audi|audible|audio|auspost|author|auto|autos|avianca|aws|axa|azure|baby|baidu|banamex|bananarepublic|band|bank|bar|barcelona|barclaycard|barclays|barefoot|bargains|baseball|basketball|bauhaus|bayern|bbc|bbt|bbva|bcg|bcn|beats|beauty|beer|bentley|berlin|best|bestbuy|bet|bharti|bible|bid|bike|bing|bingo|bio|biz|black|blackfriday|blanco|blockbuster|blog|bloomberg|blue|bms|bmw|bnl|bnpparibas|boats|boehringer|bofa|bom|bond|boo|book|booking|bosch|bostik|boston|bot|boutique|box|bradesco|bridgestone|broadway|broker|brother|brussels|budapest|bugatti|build|builders|business|buy|buzz|bzh|cab|cafe|cal|call|calvinklein|cam|camera|camp|cancerresearch|canon|capetown|capital|capitalone|car|caravan|cards|care|career|careers|cars|cartier|casa|case|caseih|cash|casino|cat|catering|catholic|cba|cbn|cbre|cbs|ceb|center|ceo|cern|cfa|cfd|chanel|channel|charity|chase|chat|cheap|chintai|christmas|chrome|chrysler|church|cipriani|circle|cisco|citadel|citi|citic|city|cityeats|claims|cleaning|click|clinic|clinique|clothing|cloud|club|clubmed|cocoach|codes|coffee|college|cologne|com|comcast|commbank|community|company|compare|computer|comsec|condos|construction|consulting|contact|contractors|cooking|cookingchannel|cool|coop|corsica|country|coupon|coupons|courses|credit|creditcard|creditunion|cricket|crown|crs|cruise|cruises|csc|cuisinella|cymru|cyou|dabur|dad|dance|data|date|dating|datsun|day|dclk|dds|deal|dealer|deals|degree|delivery|dell|deloitte|delta|democrat|dental|dentist|desi|design|dev|dhl|diamonds|diet|digital|direct|directory|discount|discover|dish|diy|dnp|docs|doctor|dodge|dog|doha|domains|dot|download|drive|dtv|dubai|duck|dunlop|duns|dupont|durban|dvag|dvr|earth|eat|eco|edeka|edu|education|email|emerck|energy|engineer|engineering|enterprises|epost|epson|equipment|ericsson|erni|esq|estate|esurance|etisalat|eurovision|eus|events|everbank|exchange|expert|exposed|express|extraspace|fage|fail|fairwinds|faith|family|fan|fans|farm|farmers|fashion|fast|fedex|feedback|ferrari|ferrero|fi|fiat|fidelity|fido|film|final|finance|financial|fire|firestone|firmdale|fish|fishing|fit|fitness|flickr|flights|flir|florist|flowers|fly|foo|food|foodnetwork|football|ford|forex|forsale|forum|foundation|fox|free|fresenius|frl|frogans|frontdoor|frontier|ftr|fujitsu|fujixerox|fun|fund|furniture|futbol|fyi|gal|gallery|gallo|gallup|game|games|gap|garden|gbiz|gdn|gea|gent|genting|george|ggee|gift|gifts|gives|giving|glade|glass|gle|global|globo|gmail|gmbh|gmo|gmx|godaddy|gold|goldpoint|golf|goo|goodyear|goog|google|gop|got|gov|grainger|graphics|gratis|green|gripe|grocery|group|guardian|gucci|guge|guide|guitars|guru|hair|hamburg|hangout|haus|hbo|hdfc|hdfcbank|health|healthcare|help|helsinki|here|hermes|hgtv|hiphop|hisamitsu|hitachi|hiv|hkt|hockey|holdings|holiday|homedepot|homegoods|homes|homesense|honda|honeywell|horse|hospital|host|hosting|hot|hoteles|hotels|hotmail|house|how|hsbc|hughes|hyatt|hyundai|ibm|icbc|ice|icu|ieee|ifm|ikano|imamat|imdb|immo|immobilien|in|inc|industries|infiniti|info|ing|ink|institute|insurance|insure|int|intel|international|intuit|investments|ipiranga|irish|iselect|ismaili|ist|istanbul|itau|itv|iveco|jaguar|java|jcb|jcp|jeep|jetzt|jewelry|jio|jll|jmp|jnj|jo|jobs|joburg|jot|joy|jpmorgan|jprs|juegos|juniper|kaufen|kddi|ke|kerryhotels|kerrylogistics|kerryproperties|kfh|kia|kim|kinder|kindle|kitchen|kiwi|koeln|komatsu|kosher|kpmg|kpn|krd|kred|kuokgroup|kyoto|lacaixa|ladbrokes|lamborghini|lamer|lancaster|lancia|lancome|land|landrover|lanxess|lasalle|lat|latino|latrobe|law|lawyer|lds|lease|leclerc|lefrak|legal|lego|lexus|lgbt|liaison|lidl|life|lifeinsurance|lifestyle|lighting|like|lilly|limited|limo|lincoln|linde|link|lipsy|live|living|lixil|llc|loan|loans|locker|locus|loft|lol|london|lotte|lotto|love|lpl|lplfinancial|ltd|ltda|lundbeck|lupin|luxe|luxury|macys|madrid|maif|maison|makeup|man|management|mango|map|market|marketing|markets|marriott|marshalls|maserati|mattel|mba|mckinsey|med|media|meet|melbourne|meme|memorial|men|menu|merckmsd|metlife|miami|microsoft|mil|mini|mint|mit|mitsubishi|mlb|mls|mma|mobi|mobile|mobily|moda|moe|moi|mom|monash|money|monster|mopar|mormon|mortgage|moscow|moto|motorcycles|mov|movie|movistar|msd|mtn|mtr|museum|mutual|nab|nadex|nagoya|name|nationwide|natura|navy|nba|nec|net|netbank|network|neustar|new|newholland|news|next|nextdirect|nexus|nfl|ngo|nhk|nico|nike|nikon|ninja|nissan|nissay|nokia|northwesternmutual|now|nowruz|nowtv|nra|nrw|ntt|nyc|obi|observer|off|office|okinawa|olayan|olayangroup|oldnavy|ollo|omega|one|ong|onl|online|onyourside|ooo|open|oracle|orange|org|organic|origins|osaka|otsuka|ott|ovh|page|panasonic|paris|pars|partners|parts|party|passagens|pay|pccw|pet|pfizer|pharmacy|phd|philips|phone|photo|photography|photos|physio|piaget|pics|pictet|pictures|pid|pin|ping|pink|pioneer|pizza|place|play|playstation|plumbing|plus|pnc|pohl|poker|politie|porn|post|pramerica|praxi|press|prime|pro|prod|productions|prof|progressive|promo|properties|property|protection|pru|prudential|pub|pwc|qpon|quebec|quest|qvc|racing|radio|raid|read|realestate|realtor|realty|recipes|red|redstone|redumbrella|rehab|reise|reisen|reit|reliance|ren|rent|rentals|repair|report|republican|rest|restaurant|review|reviews|rexroth|rich|richardli|ricoh|rightathome|ril|rio|rip|rmit|rocher|rocks|rodeo|rogers|room|rsvp|rugby|ruhr|run|rwe|ryukyu|saarland|safe|safety|sakura|sale|salon|samsclub|samsung|sandvik|sandvikcoromant|sanofi|sap|sarl|sas|save|saxo|sbi|sbs|sca|scb|schaeffler|schmidt|scholarships|school|schule|schwarz|science|scjohnson|scor|scot|search|seat|secure|security|seek|select|sener|services|ses|seven|sew|sex|sexy|sfr|shangrila|sharp|shaw|shell|shia|shiksha|shoes|shop|shopping|shouji|show|showtime|shriram|silk|sina|singles|site|ski|skin|sky|skype|sling|smart|smile|sncf|soccer|social|softbank|software|sohu|solar|solutions|song|sony|soy|space|spiegel|sport|spot|spreadbetting|srl|srt|stada|staples|star|starhub|statebank|statefarm|stc|stcgroup|stockholm|storage|store|stream|studio|study|style|sucks|supplies|supply|support|surf|surgery|suzuki|swatch|swiftcover|swiss|sydney|symantec|systems|tab|taipei|talk|taobao|target|tatamotors|tatar|tattoo|tax|taxi|tci|tdk|team|tech|technology|tel|telefonica|temasek|tennis|teva|thd|theater|theatre|tiaa|tickets|tienda|tiffany|tips|tires|tirol|tjmaxx|tjx|tkmaxx|tmall|today|tokyo|tools|top|toray|toshiba|total|tours|town|toyota|toys|trade|trading|training|travel|travelchannel|travelers|travelersinsurance|trust|trv|tube|tui|tunes|tushu|tvs|ubank|ubs|uconnect|unicom|university|uno|uol|ups|vacations|vana|vanguard|vegas|ventures|verisign|versicherung|vet|viajes|video|vig|viking|villas|vin|vip|virgin|visa|vision|vistaprint|viva|vivo|vlaanderen|vodka|volkswagen|volvo|vote|voting|voto|voyage|vuelos|wales|walmart|walter|wang|wanggou|warman|watch|watches|weather|weatherchannel|webcam|weber|website|wed|wedding|weibo|weir|whoswho|wien|wiki|williamhill|win|windows|wine|winners|wme|wolterskluwer|woodside|work|works|world|wow|wtc|wtf|xbox|xerox|xfinity|xihuan|xin|xyz|yachts|yamaxun|yodobashi|yoga|yokohama|you|youtube|yun|zappos|zara|zero|zip|zippo|zone|zuerich)'

#list of supported ccTLDs
cctldlist='+(ac|ad|ae|af|ag|ai|al|am|ao|aq|ar|as|at|aw|ax|az|ba|bb|bd|be|bf|bg|bh|bi|bj|bm|bn|bo|br|bs|bt|bw|by|bz|cc|cd|cf|cg|ch|ci|ck|cl|cm|cn|co|cr|cu|cv|cw|cx|cy|cz|de|dj|dk|dm|do|dz|ec|ee|eg|er|es|et|eu|fi|fj|fk|fm|fo|fr|ga|gd|ge|gf|gg|gh|gi|gl|gm|gn|gp|gq|gr|gs|gt|gu|gw|gy|hk|hm|hn|hr|ht|hu|id|ie|il|im|in|io|iq|ir|is|it|je|jm|jo|jp|ke|kg|kh|ki|km|kn|kp|kr|kw|ky|kz|la|lb|lc|li|lk|lr|ls|lt|lu|lv|ly|ma|mc|md|me|mg|mh|mk|ml|mm|mn|mo|mp|mq|mr|ms|mt|mu|mv|mw|mx|my|mz|na|nc|ne|nf|ng|ni|nl|no|np|nr|nu|om|pa|pe|pf|pg|pk|pl|pm|pn|pr|ps|pt|pw|py|qa|re|ro|rs|ru|rw|sa|sb|sc|sd|se|sh|si|sk|sl|sm|sn|so|sr|ss|st|sv|sx|sy|sz|tc|td|tf|tg|th|tj|tk|tl|tm|tn|to|tr|tt|tv|tw|tz|ua|ug|uk|uy|uz|va|vc|ve|vg|vi|vn|vu|wf|ws|ye|yt|za|zm|zw)'

#removes "domain=" from the QUERY_STRING and store it in domain variable
domain=$(echo "$qs" | cut -f2 -d"=" );

#=================
# FUNCTION HALL
#=================

#Domain Status Function function that cycles through the status codes and create a link the status to what it means on eppstatus.sh
dsfunction () {
while IFS= read -r line
do
   eppstat=$( echo "${line#*#}" | tr -d '\040\011\012\015' | awk '{print tolower($0)}' );  
   
   echo  "<br/> <a style='cursor: pointer; color:tomato;' class='button' onclick='js$eppstat()'> [?] </a> ${line#*#}";
   
   echo "<script> function js$eppstat() { var x = document.getElementById('jsf$eppstat'); 
   if (x.style.display === 'none') { x.style.display = 'block'; } 
   else { x.style.display = 'none'; } } </script>"

parsedtable="$( cat ./eppstatuscodes.sh | sed -n '/^<!--tag'"$eppstat"'0-->/,/^<!--tag'"$eppstat"'1-->/p;/^<!--tag'"$eppstat"'1-->/q;' )";
eventhorizon=$( echo "$parsedtable" | awk '{gsub("</p>", "");print}' | awk '{gsub("/p", "");print}' );

echo "<div id='jsf$eppstat' style='display:none'> $eventhorizon </div>";

done < <(printf '%s\n' "$1");
}

#Name Servers Function
#cycles thorough the name server lines on the raw whois result and removes "name server" before the ":" and prints just the actual servers
nsfunction () {

while IFS= read -r line
do
   echo "${line#*:} <br/> ";
   nsr1=$( echo "${line#*:}" | tr -d '\040\011\012\015' | awk '{print tolower($0)}' );
   nsr2=$(dig a +short "$nsr1" @8.8.8.8 2>/dev/null );
if (( $(grep -c . <<<"$nsr2") > 1)); then

while IFS= read -r line
do
   nsa0=$(whois $line );
   nsa1=$( echo "$nsa0" | grep -i -e 'orgname' );
   if [[ -z "$nsa1" ]]; then nsa2=$( echo "$nsa0" | grep -i -e 'netname' ); else nsa2="$nsa1"; fi;
   nsax=$( echo "$nsa2" | sort -u );
   echo "<br/> &nbsp; &nbsp; $line   --- <a href='/cgi-bin/bbcws.sh?doi=$line' target='_blank' style='color:tomato' >[+]</a> ${nsax##*:}";
done < <(printf '%s\n' "$nsr2");

echo "<br/>"
else
   nsa20=$(whois "$nsr2" );
   nsa21=$( echo "$nsa20" | grep -i -e 'orgname' );
   if [[ -z "$nsa21" ]]; then nsa22=$( echo "$nsa20" | grep -i -e 'netname' ); else nsa22="$nsa21"; fi;
   nsax2=$( echo "$nsa22" | sort -u | head -1 );
   echo "&nbsp; &nbsp;$nsr2 --- <a href='/cgi-bin/bbcws.sh?doi=$nsr2' target='_blank' style='color:tomato' >[+]</a> ${nsax2#*:}"
fi
   echo "<br/> <br>"
done < <(printf '%s\n' "$1");
}

#A Record Function
#cycles through the A record/s and will get the company/individual that is liable for the IP address
arfunction () {

if [[ -z "$1" ]]; then echo " <br/> No A record/s found! <br/>"; 

else

while IFS= read -r line
do
   ar0=$(whois $line );
   ar1=$( echo "$ar0" | grep -i -e 'orgname' );
   if [[ -z "$ar1" ]]; then ar2=$( echo "$ar0" | grep -i -e 'netname' ); else ar2="$ar1"; fi;
   arx=$( echo "$ar2" | sort -u | head -1 );
   echo "<br/>   $line --- <a href='/cgi-bin/bbcws.sh?doi=$line' target='_blank' style='color:tomato' >[+]</a> ${arx#*:}";
done < <(printf '%s\n' "$1");

fi
}

#MX Record/s Function
#cycles through the A record/s under the MX record/s and will get the company/individual that is liable for the IP address
mrfunction () {

if [[ -z "$1" ]]; then echo "No MX record/s found! <br/>"; 

else

while IFS= read -r line
do
   echo "$line <br/> ";
   mxr1=$(echo  $line | cut -f2 -d" ");
   mxr2=$(dig a +short "$mxr1" @8.8.8.8 2>/dev/null);
if (( $(grep -c . <<<"$mxr2") > 1)); then

while IFS= read -r line
do
   mxa0=$(whois $line );
   mxa1=$( echo "$mxa0" | grep -i -e 'orgname' );
   if [[ -z "$mxa1" ]]; then mxa2=$( echo "$mxa0" | grep -i -e 'netname' ); else mxa2="$mxa1"; fi;
   mxax=$( echo "$mxa2" | sort -u | head -1 );
   echo "<br/> &nbsp; &nbsp; $line   --- <a href='/cgi-bin/bbcws.sh?doi=$line' target='_blank' style='color:tomato' >[+]</a> ${mxax#*:}";
done < <(printf '%s\n' "$mxr2");

echo "<br/>"
else
   mxa20=$(whois "$mxr2" );
   mxa21=$( echo "$mxa20" | grep -i -e 'orgname' );
   if [[ -z "$mxa21" ]]; then mxa22=$( echo "$mxa20" | grep -i -e 'netname' ); else mxa22="$mxa21"; fi;
   mxax2=$( echo "$mxa22" | sort -u | head -1 );
   echo "&nbsp; &nbsp;$mxr2 --- <a href='/cgi-bin/bbcws.sh?doi=$mxr2' target='_blank' style='color:tomato' >[+]</a> ${mxax2#*:}"
fi
   echo "<br/> <br>"
done < <(printf '%s\n' "$1");

fi
}

#=====================
# END OF FUNCTION HALL
#=====================

#checks - if the domain variable  entered is null  / the BBC Special button is clicked without placing anything on the Domain box - then throws a Taylor Swift error
if [[ -z "$domain" ]]; then

cat <<EOTSE

<body>
<di id="divClipboard">
<p>
Blank Space. . . ?!?
<br> <br>
Is that you Taylor Swift?!?
<br>
OMG! - I love you! - Will you marry me!
<br> <br>
If not! - Please input a domain name. Sorna.
</p>
</div>
</body>
</html>

EOTSE
exit 0;

else

# query whois about the domain and store the raw output to a variable
zyx=$(whois $domain);

#domain validity check -if  a domain does not exist or has beed deleted the usual raw whois result starts with "no" if no is not on the contect of the the above variable the script continues
dvcheck=$(echo "${zyx:0:2}" | awk '{print tolower($0)}' );
  if [[ "$dvcheck" = "no" ]]; then

#the error that pops up when a domain is not valid/ does not exist
cat <<EONVDE

<body>
<p>
<br/>
<div id="divClipboard">
<p>
Not a valid domain! Sorna.
</p>
</div>
</body>
</html>

EONVDE

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

#prints the domain name and the registrar
cat << EODNARGT
<body>
<div id="divClipboard">
<p>
__________________________
<br/>
<br/>
<strong>Domain Name:</strong> $domain
<br/>
<br/>
<strong>Registrar: </strong>${registrar#*:}
<br/>
__________________________
<br/> <br/>
EODNARGT

#link to the EPP status codes on "[+]" before "[Domain Status:]"
echo "<a href='/cgi-bin/eppstatuscodes.sh' rel='noopener noreferrer' target='_blank'><strong> [Domain Status:]</strong></a>"

echo "<br/> <br/>"

dsfrgt=$( dsfunction "$dstat" );
echo "$dsfrgt";

#print the domain creation and expiration dates
cat <<EODEDCDGT
<br/>
--------------------------
<br/>
$creationdate
<br/>
$expd
<br/>
__________________________
<br/> <br/>

EODEDCDGT

#name servrers history
echo "<a href='https://securitytrails.com/domain/$domain/history/ns' rel="noopener noreferrer" target="_blank">[+]</a><strong> [Name Servers:]</strong>"

echo '<br/>'

nsfrgt=$( nsfunction "$nameservers");
echo "$nsfrgt"

echo '<br/>'
echo "__________________________"
echo '<br/> <br/>'


#link to the A record/s history on [A records:] - from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/a' rel="noopener noreferrer" target="_blank" >[+]</a><strong> [A records:]</strong>"

#cycles through multiple A record/s and will get the company/individual that is liable for the IP address
echo "<br/>"

arfrgt=$( arfunction "$ar" );
echo "$arfrgt"

echo "<br/>"
echo "__________________________"
echo "<br/> <br/>"

#link to the MX record/s history on [MX records:] - from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/mx' rel="noopener noreferrer" target="_blank" >[+]</a><strong> [MX records:]</strong>"

echo "<br/> <br/>"

mrfrgt=$( mrfunction "$mxr");
echo "$mrfrgt"

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
echo '<div id="divClipboard">'

#displays the raw whois result of ccTLDs
echo "<pre>$zyx</pre>";
echo '<p>'
echo "<br/>"
echo "__________________________"
echo '<br/> <br>'

#link to the A record/s history on [A records:] - from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/a' rel="noopener noreferrer" target="_blank" >[+]</a><strong> [A records:]</strong>"
echo "<br/>"

#A RECORD/S CT
arfrct=$( arecf "$ar" );
echo "$arfrct"

echo "<br/>"
echo "__________________________"
echo "<br/> <br>"

#link to the MX record/s history on [MX records:] - from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/mx' rel="noopener noreferrer" target="_blank" style="color: tomato">[+]</a><strong> [MX records:]</strong>"

echo "<br/> <br/>"

#A RECORD/S FOT CT
mrfrct=$( mrfuntion "$mxr");
echo "$mrfrct"

echo "<br/>"
echo "__________________________"

echo '</p>'

echo '</div>'

echo '<br>'
echo '<p> <a href="/cgi-bin/bbc.sh" ><<</small> back | track</a> </p>' 
exit 0;

;;

us)

zyx=$(whois $domain);

#dig A and MX with minimal essential output from the dig command
ar=$(dig +short $domain @8.8.8.8);
mxr=$(dig mx +short $domain @8.8.8.8);

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

#the BBC copy button
echo '<div id="divClipboard">'
echo '<p>'

#prints the domain name and the registrar
cat << EODNARCTUS
<body>
<div id="divClipboard">
<p>
__________________________
<br/>
<br/>
<strong>Domain Name:</strong> $domain
<br/>
<br/>
<strong>Registrar: </strong>${registrar#*:}
<br/>
__________________________
<br/> <br/>
EODNARCTUS

#link to the EPP status codes on [Domain Status:]
echo "<a href='/cgi-bin/eppstatuscodes.sh' rel='noopener noreferrer' target='_blank'><strong> [Domain Status:]</strong></a>"

echo "<br/> <br/>"

#DOMAIN STATUS CT US
dsfrctus=$( dsfunction "$dstat" );
echo "$dsfrctus"

#print the domain creation and expiration dates
cat <<EODEDCDCTUS
<br/>
--------------------------
<br/>
$creationdate
<br/>
$expd
<br/>
__________________________
<br/> <br/>

EODEDCDCTUS

#link to the name servers history on [Domain Status:] - from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/ns' rel="noopener noreferrer" target="_blank">[+]</a><strong> [Name Servers:]</strong>"


#NAME SERVERS CT US

nsfrctus=$( nsfunction "$nameservers");
echo "$nsfrctus"

#link to the A record/s history on [A records:] - from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/a' rel="noopener noreferrer" target="_blank" >[+]</a><strong> [A records:]</strong>"

#A RECORD CT US
echo "<br/>"

arfrctus=$( arfunction "$ar");
echo "$arfrctus"

echo "<br/> <br/>"

#link to the MX record/s history on [MX records:] - from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/mx' rel="noopener noreferrer" target="_blank" >[+]</a><strong> [MX records:]</strong>"

#MX RECORD/S - AND IP/S CT US
echo "<br/> <br/>"

mrfrctus=$( mrfunction "$mxr");
echo "$mrfrctus"

echo "__________________________"

;;


#special result for .ph ccTLD - by providing a link to whois.dot.ph with the domain submitted for query
ph)
cat <<EOQPH
<body>
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

cat <<EOQSG
<body>
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
echo '<div id="divClipboard">'

#prints the whois result with the the trimming
echo "<pre>$zyxca</pre>";

echo '<p>'

echo "<br/>"
echo "__________________________"
echo '<br/> <br>'

#link to the A record/s history on [A records:] - from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/a' rel="noopener noreferrer" target="_blank" >[+]</a><strong> [A records:]</strong>"
echo "<br/>"

#A RECORD/S CT CA

arfrctca=$( arfunction "$ar");
echo "$arfrctca"

echo "<br/>"
echo "__________________________"
echo "<br/> <br>"
#link to the MX record/s history on [MX records:] - from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/mx' rel="noopener noreferrer" target="_blank" >[+]</a><strong> [MX records:]</strong>"

echo "<br/> <br/>"

#MX RECORD/S -AND IP/S CT CA

mrfrctca=$( arfunction "$ar");
echo "$mrfrctca"

echo "__________________________"
echo "<br/>"
echo '</p>'
echo '</div>'
echo '<br>'

#the back | track button on the button
echo '<p> <a href="/cgi-bin/bbc.sh" ><<</small> back | track</a> </p>' 
exit 0;

;;

#special trimming for AU ccTLDs
au)

zyx=$(whois $domain );

#dig A and MX with minimal essential output
ar=$(dig +short $domain @8.8.8.8);
mxr=$(dig mx +short $domain @8.8.8.8);

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

#the BBC copy button
echo '<div id="divClipboard">'
echo '<p>'

#print the domain and the registrar
cat << EODNARCTAU
<body>
<div id="divClipboard">
<p>
__________________________
<br/>
<br/>
<strong>Domain Name:</strong> $domain
<br/>
<br/>
<strong>Registrar: </strong>${registrar#*:}
<br/>
__________________________
<br/> <br/>
EODNARCTAU

#link to the EPP status codes on [Domain Status:]
echo "<a href='/cgi-bin/eppstatuscodes.sh' rel='noopener noreferrer' target='_blank'><strong> [Domain Status:]</strong></a>"

echo "<br/> <br/>"

#DOMAIN STATUS CT AU
dsfrctau=$( dsfunction "$dstat" );

echo "<br/>"
echo "__________________________"
echo "<br/> <br>"

#link to the name servers history on [Name Server:] - from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/ns' rel="noopener noreferrer" target="_blank" >[+]</a><strong> [Name Servers:]</strong>"
echo "<br/>"

#NAME SERVERS CT AU

nsfrctau=$( nsfunction "$nameservers");
echo "$nsfrctau"

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
echo "<a href='https://securitytrails.com/domain/$domain/history/a' rel="noopener noreferrer" target="_blank" >[+]</a><strong> [A records:]</strong>"

#A RECORD/S CT AU

arfrctau=$( arfunction "$ar" );
echo "$arfrctau"

echo "<br/>"
echo "__________________________"
echo "<br/> <br>"

#link to the MX record/s history on [MX records:] - from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/mx' rel="noopener noreferrer" target="_blank" >[+]</a><strong> [MX records:]</strong>"
echo "<br/> <br/>"

#MX RECORD/S - AND IP/S CT AU

mrfrctau=$( mrfunction "$mxr" );
echo "$mrfrctau"

echo "<br/>"
echo "__________________________"
echo '</p>'

;;

#special trimming for NZ ccTLDs
nz)

# query whois about the domain and store the raw output to a variable
zyx=$(whois $domain);

#dig A and MX with minimal essential output
ar=$(dig +short $domain @8.8.8.8);
mxr=$(dig mx +short $domain @8.8.8.8);

#stores the registrar name on a variable
registrar=$(echo "$zyx" | grep -i -e "registrar_name:");

#stores the domain status on a variable
dstat=$(echo "$zyx" | grep -i -e "query_status:" );

#stores the domain expiration date on a variable
lastmod=$(echo "$zyx" | grep -i -e "domain_datelastmodified:");

#stores the name servers on a variable
nameservers=$(echo "$zyx" | grep -i -e "ns_name_.*");

#print the domain and the registrar
cat << EODNARCTNZ
<body>
<div id="divClipboard">
<p>
__________________________
<br/>
<br/>
<strong>Domain Name:</strong> $domain
<br/>
<br/>
<strong>Registrar: </strong>${registrar#*:}
<br/>
__________________________
<br/> <br/>
EODNARCTNZ

#link to the EPP status codes on [Domain Status:]
echo "<a href='/cgi-bin/eppstatuscodes.sh' rel='noopener noreferrer' target='_blank'><strong> [Domain Status:]</strong></a>"

echo "<br/> <br/>"

#DOMAIN STATUS CT NZ
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
echo "<a href='https://securitytrails.com/domain/$domain/history/ns' rel="noopener noreferrer" target="_blank" >[+]</a><strong> [Name Servers:]</strong>"
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
echo "<a href='https://securitytrails.com/domain/$domain/history/a' rel="noopener noreferrer" target="_blank" >[+]</a><strong> [A records:]</strong>"

#A RECORD/S CT NZ

arfrctnz=$( arfunction "$ar");
echo "$arfrctnz"

echo "<br/>"
echo "__________________________"
echo "<br/> <br>"

#link to the MX record/s history on [MX records:] - from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/mx' rel="noopener noreferrer" target="_blank" >[+]</a><strong> [MX records:]</strong>"
echo "<br/> <br/>"

#MX RECORD/S - AND IP/S CT NZ

mrfrctnz=$( mrfunction "$mxr");
echo "$mrfrctnz"

echo "<br/>"
echo "__________________________"
echo '</p>'
echo '</div>'
echo '<br>'

#the back | track button
echo '<p> <a href="/cgi-bin/bbc.sh" ><<</small> back | track</a> </p>' 
exit 0;

;;

#throw an error for anything else
   *)

#if the domain is not on the list of TLDs throws an error
echo '<body>'
echo '<div id="divClipboard">'
echo '<p>'
echo " Not a valid domain!" 
exit 0;
echo '</p>'

;;
esac

echo '</p>'

echo '</div>'

#the end of body
echo '</body>'

fi

fi

echo "<footer>"

#extracts then queries the whois server of the registar then prints the result with string manipulations
typicalwhoisresult=$(whois $domain);
whoisservergrep=$(echo "$typicalwhoisresult" | grep -i -e "WHOIS Server" | sort -u );
whoisserver=$(echo "$whoisservergrep" | cut -f2 -d":" | tr -d '\040\011\012\015' );
semifinale=$(whois $domain -h "$whoisserver" );

rese=$(echo "$semifinale" | grep -i -e "reseller");
registrant=$(echo "$semifinale" | grep -i -e 'registrant\s')
admin=$(echo "$semifinale" | grep -i -e 'admin')
tech=$(echo "$semifinale" | grep -i -e 'tech')

reseller="${rese#*:}"

if [[ -z "$registrant" ]]; then

regwis="$(echo $whoisservergrep | tr -d '\040\011\012\015')"

case "$regwis" in
   "RegistrarWHOISServer:http://api.fastdomain.com/cgi/whois")

echo "<hr>"
echo "<br> click <a href='http://api.fastdomain.com/cgi/whois?domain=$domain' target='_blank'>here</a> for the raw whois info from the registrar.<br>"
echo "<br>"
echo '<hr>'
echo '<p> <a href="/cgi-bin/bbc.sh" ><small><<</small> back | track</a> </p>'

echo '</footer>'
echo '</html>'

exit 0;

;;

 *)

echo "<hr>"
echo " $whoisservergrep"
echo "<br>"
echo '<hr>'
echo '<p> <a href="/cgi-bin/bbc.sh" ><small><<</small> back | track</a> </p>'

echo '</footer>'
echo '</html>'

;;

esac

else

echo "<hr>"
echo "<br>"

if [[ -z $reseller ]]; then
echo "<strong>Reseller:</strong> None"
else
echo "<strong>Reseller:</strong> $reseller"
fi

cat << EOHF

<br>
<br>
<strong>[ REGISTRANT: ]</strong>
<br>
<pre>$registrant</pre>
<br>

<strong>[ ADMIN: ]</strong>
<br>
<pre>$admin</pre>
<br>

<strong>[ TECH: ]</strong>
<br>
<pre>$tech</pre>

<hr>
$whoisservergrep
<br>
<hr>
<p> <a href="/cgi-bin/bbc.sh" ><small><<</small> back | track</a> </p>

EOHF

echo "</footer>"

#the end of html
echo '</html>'

fi

exit 0;
