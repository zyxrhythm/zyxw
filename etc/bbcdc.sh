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

#stores the string from bbc.sh to a variable converts all uppercase to lowercase
qs=$(echo "$QUERY_STRING" | awk '{print tolower($0)}');

#get the domain from qs
domain=$(echo "$qs" | cut -f2 -d"=" );

echo "<!DOCTYPE html>
<html>
<title>SSL Cert Checker</title>"


cat <<EOHTMLHEAD
<head>
<link rel="icon" type="image/png" href="/icon.png" />

<meta name="description" content="BigBlackCactus.com (BBC) is a website that can look up the whois information of a domain from whois servers, dig DNS records of domains and sub domains from name servers, etc...">
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
<!-- Global site tag (gtag.js) - Google Analytics -->

<!-- from http://edupala.com/copy-div-content-clipboard -->
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

<!-- from http://edupala.com/copy-div-content-clipboard -->

<!--from https://www.mediacollege.com/internet/javascript/form/remove-spaces.html - removes nasty white spaces on the text fields that causes alot of issue-->

<script>
function removeSpaces(string) {
 return string.split(' ').join('');
}
</script>

<!-- from https://www.mediacollege.com/internet/javascript/form/remove-spaces.html - removes nasty white spaces on the text fields that causes alot of issue-->

<script>
function removeSpecialCharacters(string) {
 return string.replace(/[^A-Za-z0-9.-]/g, '');
</script>

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
strong {color: green;}
p  { font-family: verdana; font-size: 85%; word-wrap: break-word;}
h1 { font-family: verdana; font-size: 70%;}
body { background-color:black; color:white;}
pre{ white-space: pre-wrap; font-size: 85%; font-family: verdana;}
table { font-family: verdana; border: 2px solid green; font-size: 90%;}
th { border: 2px solid green;}
td { vertical-align: top; text-align: left; border: 1px solid green;}

.tooltip {
  position: relative;
  display: inline-block;
  border-bottom: 1px dotted black;
}

.tooltip .tooltiptext {
  font-size:85%;
  visibility: hidden;
  display: none;
  width: 167px;
  background-color: black;
  color: white;
  text-align: center;
  border-radius: 6px;
  padding: 5px 0;
  border: 3px dotted green;
  /* Position the tooltip */
  position: absolute;
  z-index: 1;
}

.tooltip:hover .tooltiptext {
  display: inline;
  visibility: visible;
}
#navlinkz { color:tomato; float:right;}
</style>

<script> 
function jsxtable() { var x = document.getElementById('xtable'); 
if (x.style.display === 'none') 
{ x.style.display = 'inline'; } 
else { x.style.display = 'none'; } } 
</script>

<script> 
function jsx2table() { var x = document.getElementById('navtable'); 
if (x.style.display === 'none') 
{ x.style.display = 'inline'; } 
else { x.style.display = 'none'; } } 
</script>

<script> 
function jsxmenu() { var x = document.getElementById('navmenu'); 
if (x.style.display === 'none') 
{ x.style.display = 'inline'; } 
else { x.style.display = 'none'; } } 
</script>

<p><a href="/cgi-bin/bbc.sh" style='float:left'>[ &#127968;Home ]</a>

<div id='navtable' style='display:none; float:right;' >

<a style='font-size: 126%; cursor: pointer; float:right; ' onclick='jsxtable(); jsx2table(); jsxmenu()' > &#9776;</a>
<br><br>

<table id='navlinkz'> <tbody>
<tr><td><a href='/cgi-bin/bbcx.sh?domain=' >&#8625;BBC Special&#127797;&#8626;</a></td></tr>
</tbody></table><br>

<table id='navlinkz'> <tbody>
<tr><td><a href='/cgi-bin/bbcws.sh?domain=' >&#8625;Who You&#128269;&#8626;</a></td></tr>
</tbody></table><br>

<table id='navlinkz'> <tbody>
<tr><td><a href='/cgi-bin/bbcdc.sh?domain=' >&#8625;SCC&#128195;&#8626;</a></td></tr>
</tbody></table><br>

<table id='navlinkz'> <tbody>
<tr><td><a href='/cgi-bin/bbcd.sh?domain=&record=ANY&nameserver=' >&#8625;BND&#9935&#8626;</a></td></tr>
</tbody></table><br>
</div>

<div id='navmenu' >
<a style='color:tomato; cursor: pointer; font-size:126%; float:right;' onclick='jsxtable(); jsx2table(); jsxmenu();'> &#9776; </a>
</div>

<br><br>

<div id='xtable' ><table> <tbody> <td>
<form action="bbcdc.sh" method="get">
<input placeholder="Domain / sub domain"  type="text" onblur="this.value=removeSpaces(this.value); this.value=removeSpecialCharacters(this.value);" onKeyDown="if(event.keyCode==13) this.value=removeSpaces(this.value); if(event.keyCode==13) this.value=removeSpecialCharacters(this.value);" onKeyUp="if(event.keyCode==13) this.value=removeSpecialCharacters(this.value);"name="domain">
<button type="submit" >Go 2</button>
</form>
</td> </tbody> </table> </div></p>

<button onclick="copyClipboard()" >Copy Results</button> <label class="tooltip"> &#128072; &nbsp; &nbsp;<span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '> <br> Click the button to copy the results - then simply do a "paste" on your text editor or note taking app.<br><br></span></label> 
&nbsp;
<a style='color:tomato; cursor: pointer; font-size: 116%; font-family:verdana;' value="Refresh Page" onClick="window.location.href=window.location.href">&#8635;<span style="font-size: 77%;">Refresh Results</span></a>

<hr>
</head>
EOHTMLHEAD

#list of supported gtlds
shopt -s extglob
tldlist0='+(aarp|abarth|abb|abbott|abbvie|abc|able|abogado|abudhabi|academy|accenture|accountant|accountants|aco|active|actor|adac|ads|adult|aeg|aero|aetna|afamilycompany|afl|africa|agakhan|agency|aig|aigo|airbus|airforce|airtel|akdn|alfaromeo|alibaba|alipay|allfinanz|allstate|ally|alsace|alstom|americanexpress|americanfamily|amex|amfam|amica|amsterdam|analytics|android|anquan|anz|aol|apartments|app|apple|aquarelle|arab|aramco|archi|army|arpa|art|arte|asda|asia|associates|athleta|attorney|auction|audi|audible|audio|auspost|author|auto|autos|avianca|aws|axa|azure|baby|baidu|banamex|bananarepublic|band|bank|bar|barcelona|barclaycard|barclays|barefoot|bargains|baseball|basketball|bauhaus|bayern|bbc|bbt|bbva|bcg|bcn|beats|beauty|beer|bentley|berlin|best|bestbuy|bet|bharti|bible|bid|bike|bing|bingo|bio|biz|black|blackfriday|blanco|blockbuster|blog|bloomberg|blue|bms|bmw|bnl|bnpparibas|boats|boehringer|bofa|bom|bond|boo|book|booking|bosch|bostik|boston|bot|boutique|box|bradesco|bridgestone|broadway|broker|brother|brussels|budapest|bugatti|build|builders|business|buy|buzz|bzh|cab|cafe|cal|call|calvinklein|cam|camera|camp|cancerresearch|canon|capetown|capital|capitalone|car|caravan|cards|care|career|careers|cars|cartier|casa|case|caseih|cash|casino|cat|catering|catholic|cba|cbn|cbre|cbs|ceb|center|ceo|cern|cfa|cfd|chanel|channel|charity|chase|chat|cheap|chintai|christmas|chrome|chrysler|church|cipriani|circle|cisco|citadel|citi|citic|city|cityeats|claims|cleaning|click|clinic|clinique|clothing|cloud|club|clubmed|coach|codes|coffee|college|cologne|com|comcast|commbank|community|company|compare|computer|comsec|condos|construction|consulting|contact|contractors|cooking|cookingchannel|cool|coop|corsica|country|coupon|coupons|courses|credit|creditcard|creditunion|cricket|crown|crs|cruise|cruises|csc|cuisinella|cymru|cyou|dabur|dad|dance|data|date|dating|datsun|day|dclk|dds|deal|dealer|deals|degree|delivery|dell|deloitte|delta|democrat|dental|dentist|desi|design|dev|dhl|diamonds|diet|digital|direct|directory|discount|discover|dish|diy|dnp|docs|doctor|dodge|dog|doha|domains|dot|download|drive|dtv|dubai|duck|dunlop|duns|dupont|durban|dvag|dvr|earth|eat|eco|edeka|edu|education|email|emerck|energy|engineer|engineering|enterprises|epost|epson|equipment|ericsson|erni|esq|estate|esurance|etisalat|eurovision|eus|events|everbank|exchange|expert|exposed|express|extraspace|fage|fail|fairwinds|faith|family|fan|fans|farm|farmers|fashion|fast|fedex|feedback|ferrari|ferrero|fi|fiat|fidelity|fido|film|final|finance|financial|fire|firestone|firmdale|fish|fishing|fit|fitness|flickr|flights|flir|florist|flowers|fly|foo|food|foodnetwork|football|ford|forex|forsale|forum|foundation|fox|free|fresenius|frl|frogans|frontdoor|frontier|ftr|fujitsu|fujixerox|fun|fund|furniture|futbol|fyi|gal|gallery|gallo|gallup|game|games|gap|garden|gbiz|gdn|gea|gent|genting|george|ggee|gift|gifts|gives|giving|glade|glass|gle|global|globo|gmail|gmbh|gmo|gmx|godaddy|gold|goldpoint|golf|goo|goodyear|goog|google|gop|got|gov|grainger|graphics|gratis|green|gripe|grocery|group|guardian|gucci|guge|guide|guitars|guru|hair|hamburg|hangout|haus|hbo|hdfc|hdfcbank|health|healthcare|help|helsinki|here|hermes|hgtv|hiphop|hisamitsu|hitachi|hiv|hkt|hockey|holdings|holiday|homedepot|homegoods|homes|homesense|honda|honeywell|horse|hospital|host|hosting|hot|hoteles|hotels|hotmail|house|how|hsbc|hughes|hyatt|hyundai|ibm|icbc|ice|icu|ieee|ifm|ikano|imamat|imdb|immo|immobilien|in|inc|industries|infiniti|info|ing|ink|institute|insurance|insure|int|intel|international|intuit|investments|ipiranga|irish|iselect|ismaili|ist|istanbul|itau|itv|iveco|jaguar|java|jcb|jcp|jeep|jetzt|jewelry|jio|jll|jmp|jnj|jo|jobs|joburg|jot|joy|jpmorgan|jprs|juegos|juniper|kaufen|kddi|ke|kerryhotels|kerrylogistics|kerryproperties|kfh|kia|kim|kinder|kindle|kitchen|kiwi|koeln|komatsu|kosher|kpmg|kpn|krd|kred|kuokgroup|kyoto|lacaixa|ladbrokes|lamborghini|lamer|lancaster|lancia|lancome|land|landrover|lanxess|lasalle|lat|latino|latrobe|law|lawyer|lds|lease|leclerc|lefrak|legal|lego|lexus|lgbt|liaison|lidl|life|lifeinsurance|lifestyle|lighting|like|lilly|limited|limo|lincoln|linde|link|lipsy|live|living|lixil|llc|loan|loans|locker|locus|loft|lol|london|lotte|lotto|love|lpl|lplfinancial|ltd|ltda|lundbeck|lupin|luxe|luxury|macys|madrid|maif|maison|makeup|man|management|mango|map|market|marketing|markets|marriott|marshalls|maserati|mattel|mba|mckinsey|med|media|meet|melbourne|meme|memorial|men|menu|merckmsd|metlife|miami|microsoft|mil|mini|mint|mit|mitsubishi|mlb|mls|mma|mobi|mobile|mobily|moda|moe|moi|mom|monash|money|monster|mopar|mormon|mortgage|moscow|moto|motorcycles|mov|movie|movistar|msd|mtn|mtr|museum|mutual|nab|nadex|nagoya|name|nationwide|natura|navy|nba|nec|net|netbank|network|neustar|new|newholland|news|next|nextdirect|nexus|nfl|ngo|nhk|nico|nike|nikon|ninja|nissan|nissay|nokia|northwesternmutual|now|nowruz|nowtv|nra|nrw|ntt|nyc|obi|observer|off|office|okinawa|olayan|olayangroup|oldnavy|ollo|omega|one|ong|onl|online|onyourside|ooo|open|oracle|orange|org|organic|origins|osaka|otsuka|ott|ovh|page|panasonic|paris|pars|partners|parts|party|passagens|pay|pccw|pet|pfizer|pharmacy|phd|philips|phone|photo|photography|photos|physio|piaget|pics|pictet|pictures|pid|pin|ping|pink|pioneer|pizza|place|play|playstation|plumbing|plus|pnc|pohl|poker|politie|porn|post|pramerica|praxi|press|prime|pro|prod|productions|prof|progressive|promo|properties|property|protection|pru|prudential|pub|pwc|qpon|quebec|quest|qvc|racing|radio|raid|read|realestate|realtor|realty|recipes|red|redstone|redumbrella|rehab|reise|reisen|reit|reliance|ren|rent|rentals|repair|report|republican|rest|restaurant|review|reviews|rexroth|rich|richardli|ricoh|rightathome|ril|rio|rip|rmit|rocher|rocks|rodeo|rogers|room|rsvp|rugby|ruhr|run|rwe|ryukyu|saarland|safe|safety|sakura|sale|salon|samsclub|samsung|sandvik|sandvikcoromant|sanofi|sap|sarl|sas|save|saxo|sbi|sbs|sca|scb|schaeffler|schmidt|scholarships|school|schule|schwarz|science|scjohnson|scor|scot|search|seat|secure|security|seek|select|sener|services|ses|seven|sew|sex|sexy|sfr|shangrila|sharp|shaw|shell|shia|shiksha|shoes|shop|shopping|shouji|show|showtime|shriram|silk|sina|singles|site|ski|skin|sky|skype|sling|smart|smile|sncf|soccer|social|softbank|software|sohu|solar|solutions|song|sony|soy|space|spiegel|sport|spot|spreadbetting|srl|srt|stada|staples|star|starhub|statebank|statefarm|stc|stcgroup|stockholm|storage|store|stream|studio|study|style|sucks|supplies|supply|support|surf|surgery|suzuki|swatch|swiftcover|swiss|sydney|symantec|systems|tab|taipei|talk|taobao|target|tatamotors|tatar|tattoo|tax|taxi|tci|tdk|team|tech|technology|tel|telefonica|temasek|tennis|teva|thd|theater|theatre|tiaa|tickets|tienda|tiffany|tips|tires|tirol|tjmaxx|tjx|tkmaxx|tmall|today|tokyo|tools|top|toray|toshiba|total|tours|town|toyota|toys|trade|trading|training|travel|travelchannel|travelers|travelersinsurance|trust|trv|tube|tui|tunes|tushu|tvs|ubank|ubs|uconnect|unicom|university|uno|uol|ups|vacations|vana|vanguard|vegas|ventures|verisign|versicherung|vet|viajes|video|vig|viking|villas|vin|vip|virgin|visa|vision|vistaprint|viva|vivo|vlaanderen|vodka|volkswagen|volvo|vote|voting|voto|voyage|vuelos|wales|walmart|walter|wang|wanggou|warman|watch|watches|weather|weatherchannel|webcam|weber|website|wed|wedding|weibo|weir|whoswho|wien|wiki|williamhill|win|windows|wine|winners|wme|wolterskluwer|woodside|work|works|world|wow|wtc|wtf|xbox|xerox|xfinity|xihuan|xin|xyz|yachts|yamaxun|yodobashi|yoga|yokohama|you|youtube|yun|zappos|zara|zero|zip|zippo|zone|zuerich)'

#list of supported ccTLDs
tldlist1='+(ac|ad|ae|af|ag|ai|al|am|ao|aq|ar|as|at|au|aw|ax|az|ba|bb|bd|be|bf|bg|bh|bi|bj|bm|bn|bo|br|bs|bt|bw|by|bz|ca|cc|cd|cf|cg|ch|ci|ck|cl|cm|cn|co|cr|cu|cv|cw|cx|cy|cz|de|dj|dk|dm|do|dz|ec|ee|eg|er|es|et|eu|fi|fj|fk|fm|fo|fr|ga|gd|ge|gf|gg|gh|gi|gl|gm|gn|gp|gq|gr|gs|gt|gu|gw|gy|hk|hm|hn|hr|ht|hu|id|ie|il|im|in|io|iq|ir|is|it|je|jm|jo|jp|ke|kg|kh|ki|km|kn|kp|kr|kw|ky|kz|la|lb|lc|li|lk|lr|ls|lt|lu|lv|ly|ma|mc|md|me|mg|mh|mk|ml|mm|mn|mo|mp|mq|mr|ms|mt|mu|mv|mw|mx|my|mz|na|nc|ne|nf|ng|ni|nl|no|np|nr|nu|om|pa|pe|pf|pg|ph|pk|pl|pm|pn|pr|ps|pt|pw|py|qa|re|ro|rs|ru|rw|sa|sb|sc|sd|se|sg|sh|si|sk|sl|sm|sn|so|sr|ss|st|sv|sx|sy|sz|tc|td|tf|tg|th|tj|tk|tl|tm|tn|to|tr|tt|tv|tw|tz|ua|ug|uk|us|uy|uz|va|vc|ve|vg|vi|vn|vu|wf|ws|ye|yt|za|zm|zw)'

#===================
#FUNCTION HALL
#===================

#uses openssl to determine the issuer of SSL the target domain and the expiration for gtlds
errcfunc () {
err=$(nmap "$1" -oX - -p 443 --script=ssl-cert | grep -i -e 'commonname' );
echo "$err";
}

issuerfunc () {
issuer0=$(echo "$1" | grep -i 'issuer=' );
issuer=$( grep -oP '(?<=/O=).*?(?=/)' <<< "$issuer0");
echo "$issuer";
}

targetfunc () {
target0=$( echo "$1" | grep -i 'subject=' );
target=${target0#*CN=};
echo "$target";
}

expiryfunc () {
expiry0=$(echo "$1" | grep -i 'notafter=');
expiry=${expiry0#*After=};
echo "$expiry";
}

validstartfunc () {
validstart0=$(echo "$1" | grep -i 'notbefore=');
validstart=${validstart0#*Before=};
echo "$validstart";
}

daysleftfunc () {
Expiryx="$1"
#year
dlyear0="${Expiryx:13:10}";
dlyear=$(grep -oP '(?<= ).*?(?= )' <<< "$dlyear0")
#month alpha
dlmonth=$( echo "${Expiryx:0:3}" | awk '{print tolower($0)}' );
#month num
case $dlmonth in jan) dlmono='1';; feb) dlmono='2';; mar) dlmono='3';; apr) dlmono='4';; may) dlmono='5';; jun) dlmono='6';; jul) dlmono='7';; aug) dlmono='8';; sep) dlmono='9';; oct) dlmono='10';; nov) dlmono='11';; dec) dlmono='12';; *) dlmono='0';;
esac;
#day
dlday0="${Expiryx:0:9}";
dlday=$(grep -oP '(?<= ).*?(?= )' <<< "$dlday0");
#full date
fulldate="$dlyear-$dlmono-$dlday";

daysleft=$( echo $((($(date +%s --date "$fulldate")-$(date +%s))/(3600*24))) );

echo "$daysleft";
}
#===================
#END OF FUNCTION HALL
#===================

echo '<br>'

#checks if input is null 
if [[ -z "$domain" ]]; then

cat <<EOTSE
<body>
<div id="divClipboard">
<p><strong>Current Input</strong> : none <br> <br>
Enter a valid domain name <a href='https://en.wikipedia.org/wiki/Fully_qualified_domain_name' target='_blank'>(FQDN)<a/> / sub domain.<br><br></p>
</div>
</body>
</html>
EOTSE
exit 0;

else

IP0=$(dig +short a $domain );

iponlyfunc () {
while IFS= read -r line
do
if [[ "$line" =~ ^(([1-9]?[0-9]|1[0-9][0-9]|2([0-4][0-9]|5[0-5]))\.){3}([1-9]?[0-9]|1[0-9][0-9]|2([0-4][0-9]|5[0-5]))$ ]]; 
then ipop="$line";
else 
linex=$(dig a +short "$line" ); 
ipop="$line (CNAME) <br> <br>The CNAME resolves to $linex"; 
fi;
echo "$ipop";
done < <(printf '%s\n' "$1");
}

IP=$( iponlyfunc "$IP0" | head -n 1);

if [[ -z "$IP" ]] || [[ "$IP" = " " ]]; 

then cat << ZXCVBNM
<body>
<div id='divClipboard'>
<p><strong>Input:</strong> $domain <br> <br>
<span style="font-size: 120%; font-family: verdana; color: red; ">Error!!</span><br><br>
Input does not resolve to an IP address (check the input syntax / check the DNS).<br></p>
</div>
<hr><br>
<p style='color: red; text-decoration: none; font-family: calibri'><small><<</small><input type='button' style='background:none; border:none; font-size:95%; color: red;' value='back | track' onClick='history.go(-1);'></p>
</body>
</html>
ZXCVBNM

exit 0; 

else true; fi;

#cuts and extracts the TLD
tld=$( echo "$domain" | rev | cut -d "." -f1 | rev );

#checks if the domain is a gtld
case $tld in
 $tldlist0)
   
#check if the input is domain or sub domain.
if [[ $( echo "$domain" | grep -o "\." | wc -l) -gt "1" ]]; then domvar="Sub Domain"; else domvar="Domain"; fi;

errc=$( errcfunc "$domain" );

if [[ -z "$errc" ]];
then cat << ZXCVBNM
<body>
<div id='divClipboard'>
<p><strong>Input:</strong> $domain <br> 
<strong>Resolves to</strong> : $IP <br><br>
No certificate found on port 443. <br>
-https might be configured to use another port. <br>
-an S.S.L. certificate is not/not yet issued for the $domvar.<br></p>
</div>
<hr><br>
<p style='color: red; text-decoration: none; font-family: calibri'><small><<</small><input type='button' style='background:none; border:none; font-size:95%; color: red;' value='back | track' onClick='history.go(-1);'></p>
</body>
</html>
ZXCVBNM
exit 0; 

else 
rawdata0=$(echo | openssl s_client -servername "$domain" -connect "$domain":443 2>/dev/null | openssl x509 -noout -issuer -subject -dates);

Issuer=$( issuerfunc "$rawdata0" );
Target=$( targetfunc "$rawdata0" );
Expiry=$( expiryfunc "$rawdata0" );
Validstart=$( validstartfunc "$rawdata0" );
Daysleft0=$( daysleftfunc "$Expiry" ); fi;
;;

 $tldlist1)
#check if the input is domain or sub domain.
if [[ $( echo "${domain#*.}" | grep -o "\." | wc -l) -gt "1" ]]; then domvar="Sub Domain"; else domvar="Domain"; fi;

errc=$( errcfunc "$domain" );

if [[ -z "$errc" ]];
then cat << ZXCVBNM2
<body>
<div id='divClipboard'>
<p><strong>Input:</strong> $domain <br> 
<strong>Resolves to</strong> : $IP <br><br>
No certificate found on port 443. <br>
-https might be configured to use another port. <br>
-S.S.L. certificate is not/not yet issued for the $domvar.<br></p>
</div>
<hr><br>
<p style='color: red; text-decoration: none; font-family: calibri'><small><<</small><input type='button' style='background:none; border:none; font-size:95%; color: red;' value='back | track' onClick='history.go(-1);'></p>
</body>
</html>
ZXCVBNM2
exit 0; 

else 
rawdata0=$(echo | openssl s_client -servername "$domain" -connect "$domain":443 2>/dev/null | openssl x509 -noout -issuer -subject -dates);

Issuer=$( issuerfunc "$rawdata0" );
Target=$( targetfunc "$rawdata0" );
Expiry=$( expiryfunc "$rawdata0" );
Validstart=$( validstartfunc "$rawdata0" );
Daysleft0=$( daysleftfunc "$Expiry" ); fi;
;;

#throws in errors for non domain input
   *)
cat << EOIDNE
<body>
<div class="code-bg" id="divClipboard">
<p><strong>Input</strong> : $domain<br> <br>
Not a valid domain (<a href='https://en.wikipedia.org/wiki/Fully_qualified_domain_name' target='_blank'> FQDN<a/>) / <a href='https://en.wikipedia.org/wiki/Subdomain' target='_blank'>sub domain</a>!</p>
</div><br><hr><br>
<p style='color: red; text-decoration: none; font-family: calibri'><small><<</small><input type='button' style='background:none; border:none; font-size:95%; color: red;' value='back | track' onClick='history.go(-1);'></p>
</body>
</html>
EOIDNE
exit 0;
;;

esac

if [[ ${Daysleft0:0:1} = "-" ]]; 
then 
leftvar="Cert Expired";
Daysleft="${Daysleft0#*-} days ago."; 
else 
leftvar="Daysleft";
Daysleft="$Daysleft0";
fi;

cat << EOSSLCCR
<body>
<div class="code-bg" id="divClipboard">
<p><strong>$domvar</strong> : $domain <br>
<strong>Resolves to</strong> : $IP <br><br>
<strong>Cert Issuer</strong> : $Issuer <br>
<strong>Issued For</strong> : $Target <br>
<strong>Validity Start:</strong> : $Validstart <br>
<strong>Expiration</strong> : $Expiry <br>
<strong>$leftvar</strong> : $Daysleft</p></div>
<hr><p style='color: red; text-decoration: none; font-family: calibri'><small><<</small><input type='button' style='background:none; border:none; font-size:95%; color: red;' value='back | track' onClick='history.go(-1);'></p>
</body>
</html>
EOSSLCCR
fi;

exit 0;
