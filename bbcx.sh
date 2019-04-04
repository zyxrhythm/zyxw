#!/bin/bash
#This script was created by Zyx Rhythm (email:zyxrhythm@gmail.com)
#You can download, copy and use it as you see fit.
#If ever you need to post or show the code to people
#Though you are not required to, crediting the the author will be much appreciated.
################################################
#https://github.com/zyxrhythm
#############################################

echo "Content-type: text/html"
echo ""

#start the html header
echo "<!DOCTYPE html>
<html>
<title>BBC Special</title>
<head>
<link rel="icon" type="image/png" href="/icon.png" />"

#stores the QUERY_STRING from bbc.sh to a variable and converts all uppercase letters to lowercase
qs=$(echo $QUERY_STRING | awk '{print tolower($0)}' );

#removes "domain=" from the QUERY_STRING and store it in domain variable
domain=$(echo "$qs" | cut -f2 -d"=" );

cat <<EODHHEAD
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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

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
}
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
strong {color: green;
}
p  { font-family: verdana; font-size: 85%; word-wrap: break-word;
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

#domaintimes { color:green;
}
</style>

<p> <a href="/cgi-bin/bbc.sh" style='float:left'>[ &#127968;Home ]</a>
<script> 
function jsxtable() { var x = document.getElementById('xtable'); 
if (x.style.display === 'none') 
{ x.style.display = 'block'; } 
else { x.style.display = 'none'; } } 
</script>

<script> 
function jsx2table() { var x = document.getElementById('navtable'); 
if (x.style.display === 'none') 
{ x.style.display = 'block'; } 
else { x.style.display = 'none'; } } 
</script>

<div id='navtable' style='display:none; float:right;' ><table> <tbody><td>
<a href='/cgi-bin/bbcws.sh?domain='>[ &#128269; Who You ]</a> 
<a href='/cgi-bin/bbcdc.sh?domain='>[ &#128195; S.C.C. ]</a>
<a href='/cgi-bin/bbcd.sh?domain=&record=ANY&nameserver='>[ &#9935; B.N.D. ]</a>
</td> </tbody> </table></div>

&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

<a  style='color:tomato; cursor: pointer; font-size:126%; float:right;' onclick='jsxtable(); jsx2table()'> &#9776; </a>
</p>
<p><div id='xtable' ><table> <tbody> <td>
<form action="bbcx.sh" method="get">
<input placeholder="Enter a Domain(FQDN)"  type="text" onblur="this.value=removeSpaces(this.value); this.value=removeSpecialCharacters(this.value);" onKeyDown="if(event.keyCode==13) this.value=removeSpaces(this.value); if(event.keyCode==13) this.value=removeSpecialCharacters(this.value);" onKeyUp="if(event.keyCode==13) this.value=removeSpecialCharacters(this.value);"name="domain">
<button type="submit" >Go 2</button>
</form>
</td> </tbody> </table> </div></p>

<button onclick="copyClipboard()" >Copy Results</button> <label class="tooltip"> &#128072; &nbsp; &nbsp;<span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '> <br> Click the button to copy the results - then simply do a "paste" on your text editor or note taking app. <br><br>(expanded tables will be included on the copied result) <br><br></span></label> 
&nbsp;
<a style='color:tomato; cursor: pointer; font-size: 116%; font-family:verdana;' value="Refresh Page" onClick="window.location.href=window.location.href">&#8635;<span style="font-size: 77%;">Refresh Results</span></a>

<hr>
</head>
EODHHEAD

#list of supported TLDs
shopt -s extglob
tldlist0='+(aarp|abarth|abb|abbott|abbvie|abc|able|abogado|abudhabi|academy|accenture|accountant|accountants|aco|active|actor|adac|ads|adult|aeg|aero|aetna|afamilycompany|afl|africa|agakhan|agency|aig|aigo|airbus|airforce|airtel|akdn|alfaromeo|alibaba|alipay|allfinanz|allstate|ally|alsace|alstom|americanexpress|americanfamily|amex|amfam|amica|amsterdam|analytics|android|anquan|anz|aol|apartments|app|apple|aquarelle|arab|aramco|archi|army|arpa|art|arte|asda|asia|associates|athleta|attorney|auction|audi|audible|audio|auspost|author|auto|autos|avianca|aws|axa|azure|baby|baidu|banamex|bananarepublic|band|bank|bar|barcelona|barclaycard|barclays|barefoot|bargains|baseball|basketball|bauhaus|bayern|bbc|bbt|bbva|bcg|bcn|beats|beauty|beer|bentley|berlin|best|bestbuy|bet|bharti|bible|bid|bike|bing|bingo|bio|biz|black|blackfriday|blanco|blockbuster|blog|bloomberg|blue|bms|bmw|bnl|bnpparibas|boats|boehringer|bofa|bom|bond|boo|book|booking|bosch|bostik|boston|bot|boutique|box|bradesco|bridgestone|broadway|broker|brother|brussels|budapest|bugatti|build|builders|business|buy|buzz|bzh|cab|cafe|cal|call|calvinklein|cam|camera|camp|cancerresearch|canon|capetown|capital|capitalone|car|caravan|cards|care|career|careers|cars|cartier|casa|case|caseih|cash|casino|cat|catering|catholic|cba|cbn|cbre|cbs|ceb|center|ceo|cern|cfa|cfd|chanel|channel|charity|chase|chat|cheap|chintai|christmas|chrome|chrysler|church|cipriani|circle|cisco|citadel|citi|citic|city|cityeats|claims|cleaning|click|clinic|clinique|clothing|cloud|club|clubmed|cocoach|codes|coffee|college|cologne|com|comcast|commbank|community|company|compare|computer|comsec|condos|construction|consulting|contact|contractors|cooking|cookingchannel|cool|coop|corsica|country|coupon|coupons|courses|credit|creditcard|creditunion|cricket|crown|crs|cruise|cruises|csc|cuisinella|cymru|cyou|dabur|dad|dance|data|date|dating|datsun|day|dclk|dds|deal|dealer|deals|degree|delivery|dell|deloitte|delta|democrat|dental|dentist|desi|design|dev|dhl|diamonds|diet|digital|direct|directory|discount|discover|dish|diy|dnp|docs|doctor|dodge|dog|doha|domains|dot|download|drive|dtv|dubai|duck|dunlop|duns|dupont|durban|dvag|dvr|earth|eat|eco|edeka|education|email|emerck|energy|engineer|engineering|enterprises|epost|epson|equipment|ericsson|erni|esq|estate|esurance|etisalat|eurovision|eus|events|everbank|exchange|expert|exposed|express|extraspace|fage|fail|fairwinds|faith|family|fan|fans|farm|farmers|fashion|fast|fedex|feedback|ferrari|ferrero|fi|fiat|fidelity|fido|film|final|finance|financial|fire|firestone|firmdale|fish|fishing|fit|fitness|flickr|flights|flir|florist|flowers|fly|foo|food|foodnetwork|football|ford|forex|forsale|forum|foundation|fox|free|fresenius|frl|frogans|frontdoor|frontier|ftr|fujitsu|fujixerox|fun|fund|furniture|futbol|fyi|gal|gallery|gallo|gallup|game|games|gap|garden|gbiz|gdn|gea|gent|genting|george|ggee|gift|gifts|gives|giving|glade|glass|gle|global|globo|gmail|gmbh|gmo|gmx|godaddy|gold|goldpoint|golf|goo|goodyear|goog|google|gop|got|grainger|graphics|gratis|green|gripe|grocery|group|guardian|gucci|guge|guide|guitars|guru|hair|hamburg|hangout|haus|hbo|hdfc|hdfcbank|health|healthcare|help|helsinki|here|hermes|hgtv|hiphop|hisamitsu|hitachi|hiv|hkt|hockey|holdings|holiday|homedepot|homegoods|homes|homesense|honda|honeywell|horse|hospital|host|hosting|hot|hoteles|hotels|hotmail|house|how|hsbc|hughes|hyatt|hyundai|ibm|icbc|ice|icu|ieee|ifm|ikano|imamat|imdb|immo|immobilien|in|inc|industries|infiniti|info|ing|ink|institute|insurance|insure|int|intel|international|intuit|investments|ipiranga|irish|iselect|ismaili|ist|istanbul|itau|itv|iveco|jaguar|java|jcb|jcp|jeep|jetzt|jewelry|jio|jll|jmp|jnj|jo|jobs|joburg|jot|joy|jpmorgan|jprs|juegos|juniper|kaufen|kddi|ke|kerryhotels|kerrylogistics|kerryproperties|kfh|kia|kim|kinder|kindle|kitchen|kiwi|koeln|komatsu|kosher|kpmg|kpn|krd|kred|kuokgroup|kyoto|lacaixa|ladbrokes|lamborghini|lamer|lancaster|lancia|lancome|land|landrover|lanxess|lasalle|lat|latino|latrobe|law|lawyer|lds|lease|leclerc|lefrak|legal|lego|lexus|lgbt|liaison|lidl|life|lifeinsurance|lifestyle|lighting|like|lilly|limited|limo|lincoln|linde|link|lipsy|live|living|lixil|llc|loan|loans|locker|locus|loft|lol|london|lotte|lotto|love|lpl|lplfinancial|ltd|ltda|lundbeck|lupin|luxe|luxury|macys|madrid|maif|maison|makeup|man|management|mango|map|market|marketing|markets|marriott|marshalls|maserati|mattel|mba|mckinsey|med|media|meet|melbourne|meme|memorial|men|menu|merckmsd|metlife|miami|microsoft|mini|mint|mit|mitsubishi|mlb|mls|mma|mobi|mobile|mobily|moda|moe|moi|mom|monash|money|monster|mopar|mormon|mortgage|moscow|moto|motorcycles|mov|movie|movistar|msd|mtn|mtr|museum|mutual|nab|nadex|nagoya|name|nationwide|natura|navy|nba|nec|net|netbank|network|neustar|new|newholland|news|next|nextdirect|nexus|nfl|ngo|nhk|nico|nike|nikon|ninja|nissan|nissay|nokia|northwesternmutual|now|nowruz|nowtv|nra|nrw|ntt|nyc|obi|observer|off|office|okinawa|olayan|olayangroup|oldnavy|ollo|omega|one|ong|onl|online|onyourside|ooo|open|oracle|orange|org|organic|origins|osaka|otsuka|ott|ovh|page|panasonic|paris|pars|partners|parts|party|passagens|pay|pccw|pet|pfizer|pharmacy|phd|philips|phone|photo|photography|photos|physio|piaget|pics|pictet|pictures|pid|pin|ping|pink|pioneer|pizza|place|play|playstation|plumbing|plus|pnc|pohl|poker|politie|porn|post|pramerica|praxi|press|prime|pro|prod|productions|prof|progressive|promo|properties|property|protection|pru|prudential|pub|pwc|qpon|quebec|quest|qvc|racing|radio|raid|read|realestate|realtor|realty|recipes|red|redstone|redumbrella|rehab|reise|reisen|reit|reliance|ren|rent|rentals|repair|report|republican|rest|restaurant|review|reviews|rexroth|rich|richardli|ricoh|rightathome|ril|rio|rip|rmit|rocher|rocks|rodeo|rogers|room|rsvp|rugby|ruhr|run|rwe|ryukyu|saarland|safe|safety|sakura|sale|salon|samsclub|samsung|sandvik|sandvikcoromant|sanofi|sap|sarl|sas|save|saxo|sbi|sbs|sca|scb|schaeffler|schmidt|scholarships|school|schule|schwarz|science|scjohnson|scor|scot|search|seat|secure|security|seek|select|sener|services|ses|seven|sew|sex|sexy|sfr|shangrila|sharp|shaw|shell|shia|shiksha|shoes|shop|shopping|shouji|show|showtime|shriram|silk|sina|singles|site|ski|skin|sky|skype|sling|smart|smile|sncf|soccer|social|softbank|software|sohu|solar|solutions|song|sony|soy|space|spiegel|sport|spot|spreadbetting|srl|srt|stada|staples|star|starhub|statebank|statefarm|stc|stcgroup|stockholm|storage|store|stream|studio|study|style|sucks|supplies|supply|support|surf|surgery|suzuki|swatch|swiftcover|swiss|sydney|symantec|systems|tab|taipei|talk|taobao|target|tatamotors|tatar|tattoo|tax|taxi|tci|tdk|team|tech|technology|tel|telefonica|temasek|tennis|teva|thd|theater|theatre|tiaa|tickets|tienda|tiffany|tips|tires|tirol|tjmaxx|tjx|tkmaxx|tmall|today|tokyo|tools|top|toray|toshiba|total|tours|town|toyota|toys|trade|trading|training|travel|travelchannel|travelers|travelersinsurance|trust|trv|tube|tui|tunes|tushu|tvs|ubank|ubs|uconnect|unicom|university|uno|uol|ups|vacations|vana|vanguard|vegas|ventures|verisign|versicherung|vet|viajes|video|vig|viking|villas|vin|vip|virgin|visa|vision|vistaprint|viva|vivo|vlaanderen|vodka|volkswagen|volvo|vote|voting|voto|voyage|vuelos|wales|walmart|walter|wang|wanggou|warman|watch|watches|weather|weatherchannel|webcam|weber|website|wed|wedding|weibo|weir|whoswho|wien|wiki|williamhill|win|windows|wine|winners|wme|wolterskluwer|woodside|work|works|world|wow|wtc|wtf|xbox|xerox|xfinity|xihuan|xin|xyz|yachts|yamaxun|yodobashi|yoga|yokohama|you|youtube|yun|zappos|zara|zero|zip|zippo|zone|zuerich|ca|us|co|cc|me|ac|tv)'

#list of supported ccTLDs
tldlist1='+(ad|ae|af|ag|ai|al|am|ao|aq|ar|as|at|aw|ax|az|ba|bb|bd|be|bf|bg|bh|bi|bj|bm|bn|bo|br|bs|bt|bw|by|bz|cd|cf|cg|ch|ci|ck|cl|cm|cn|cr|cu|cv|cw|cx|cy|cz|de|dj|dk|dm|do|dz|ec|ee|eg|er|es|et|fi|fj|fk|fm|fo|fr|ga|gd|ge|gf|gg|gh|gi|gl|gm|gn|gp|gq|gr|gs|gt|gu|gw|gy|hk|hm|hn|hr|ht|hu|id|ie|il|im|in|io|iq|ir|is|it|je|jm|jo|ke|kg|kh|ki|km|kn|kp|kr|kw|ky|kz|la|lb|lc|li|lk|lr|ls|lt|lu|lv|ly|ma|mc|md|mg|mh|mk|ml|mm|mn|mo|mp|mq|mr|ms|mt|mu|mv|mw|mx|my|mz|na|nc|ne|nf|ng|ni|nl|no|np|nr|nu|om|pa|pe|pf|pg|pk|pl|pm|pn|pr|ps|pt|pw|py|qa|re|ro|rs|ru|rw|sa|sb|sc|sd|se|sh|si|sk|sl|sm|sn|so|sr|ss|st|sv|sx|sy|sz|tc|td|tf|tg|th|tj|tk|tl|tm|tn|to|tr|tt|tw|tz|ua|ug|uy|uz|va|vc|ve|vg|vi|vu|wf|ws|ye|yt|za|zm|zw)'


#=================
# FUNCTION HALL
#=================

#Domain Status Functions functions that cycles through the status codes and create a link the status to what it means on eppstatus.sh

dsfunction () {
while IFS= read -r line
do
eppstat=$( echo "${line#*#}" | awk '{print tolower($0)}');  

echo "<script> 
function js$eppstat() { var x = document.getElementById('jsf$eppstat'); 
if (x.style.display === 'none') { x.style.display = 'block'; } 
else { x.style.display = 'none'; } } 
</script>

<br> <a style='color:tomato; cursor: pointer;' class='button tooltip' onclick='js$eppstat()'> &#10067;
<span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '>
<br> Click this to know more about this domain status. It will spawn a table from ICANN about what the domain status is about, to close the table click this again. <br><br>
</span></a>
${line#*#}";

done < <(printf '%s\n' "$1");

while IFS= read -r line
do
eppstat=$( echo "${line#*#}" | awk '{print tolower($0)}');  

dsfparsedtable=$( cat ./eppstatuscodes.sh | awk '/<!--tag'"$eppstat"'0-->/{flag=1;next}/<!--tag'"$eppstat"'1-->/{flag=0}flag' );

echo "<div id='jsf$eppstat' style='display:none'>
$dsfparsedtable
</div>"
done < <(printf '%s\n' "$1");

}

#Name Servers Function
#cycles thorough the name server lines on the raw whois result and removes "name server" before the ":" and prints just the actual servers

nsfunction () {

while IFS= read -r line
do
   echo  "<br/>   ${line#*:}";
done < <(printf '%s\n' "$1");

echo "<script> 
function jsnsverbose() { var x = document.getElementById('nsverbose'); 
if (x.style.display === 'none') { x.style.display = 'block'; } 
else { x.style.display = 'none'; } } 
</script>

<a style='color:tomato; cursor: pointer;' class='button tooltip' onclick='jsnsverbose()'> &#9660; 
<span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '>
<br>Click this to check the IP address/es associated with the current authoritative name servers and what organization is responsible for the IP address/es by querying ARIN's whois servers.<br><br>
</span></a>

<div id='nsverbose' style='display:none'> <table> <tbody> <td>
<p>"

while IFS= read -r line
do
   echo "${line#*:} <br> ";
   nsr1=$( echo "${line#*:}" | tr -d '\040\011\012\015' | awk '{print tolower($0)}' );
   nsr2=$(dig a +short "$nsr1" @8.8.8.8 2>/dev/null );
   if [[ -z "$nsr2" ]]; then echo "<br>Invalid Nameserver: Does not resolve to an IP address!"; else true; fi;
if (( $(grep -c . <<<"$nsr2") > 1)); then

while IFS= read -r line
do
   nsa0=$(whois $line );
   nsa1=$( echo "$nsa0" | grep -i -e 'orgname' );
   if [[ -z "$nsa1" ]]; then nsa2=$( echo "$nsa0" | grep -i -e 'netname' ); else nsa2="$nsa1"; fi;
   nsax=$( echo "$nsa2" | sort -u );
   echo "<br> &nbsp; &nbsp; $line --- <a href='/cgi-bin/bbcws.sh?doi=$line' target='_blank' style='color:tomato' class='tooltip'> &#9654; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '><br>Click to get the full raw whois information from ARIN.<br><br></span></a> ${nsax##*:}";
done < <(printf '%s\n' "$nsr2");

else
   echo "<br>"
   nsa20=$(whois "$nsr2" );
   nsa21=$( echo "$nsa20" | grep -i -e 'orgname' );
   if [[ -z "$nsa21" ]]; then nsa22=$( echo "$nsa20" | grep -i -e 'netname' ); else nsa22="$nsa21"; fi;
   nsax2=$( echo "$nsa22" | sort -u | head -1 );
   echo "&nbsp; &nbsp;$nsr2 --- <a href='/cgi-bin/bbcws.sh?doi=$nsr2' target='_blank' style='color:tomato' class='tooltip'> &#9654; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '><br>Click to get the full raw whois information of this I.P. address from ARIN.<br><br></span></a> ${nsax2#*:}"
fi
   echo '<br> <br>'
done < <(printf '%s\n' "$1");
echo "</p>
</td> </tbody> </table> </div>
<p>"
}

#A Record Function
#cycles through the A record/s and will get the company/individual that is liable for the IP address
arfunction () {

if [[ -z "$1" ]]; then echo ' <br> No A record/s found! <br>'; 

else

while IFS= read -r line
do
   ar0=$(whois $line );
   ar1=$( echo "$ar0" | grep -i -e 'orgname' );
   if [[ -z "$ar1" ]]; then ar2=$( echo "$ar0" | grep -i -e 'netname' ); else ar2="$ar1"; fi;
   arx=$( echo "$ar2" | sort -u | head -1 );
echo "<br>   $line --- <a href='/cgi-bin/bbcws.sh?doi=$line' class='tooltip' target='_blank' style='color:tomato' class='tooltip'> &#9654; 
<span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '>
<br>Click this to get the full raw whois information of this I.P. address from ARIN's whois server/s.<br><br>
</span></a> ${arx#*:}";
done < <(printf '%s\n' "$1");

fi
}

#MX Record/s Function
#cycles through the A record/s under the MX record/s and will get the company/individual that is liable for the IP address
mrfunction () {

if [[ -z "$1" ]]; then echo 'No MX record/s found! <br>'; 

else

while IFS= read -r line
do
   mxr1=$(echo  $line | cut -f2 -d" ");
mxr1a=$(echo $line | cut -f1 -d" ");
echo "<strong class='tooltip'><label>$mxr1a </label><span class='tooltiptext' style='font-size: 85%; font-family: calibri; font: green; '><br>MX priority: $mxr1a <br><br></span></strong> &nbsp;$mxr1 <br> ";
   mxr2=$(dig a +short "$mxr1" @8.8.8.8 2>/dev/null);
   if [[ -z "$mxr2" ]]; then echo "<br>Invalid MX record: Does not resolve to an IP address!"; else true; fi;
if (( $(grep -c . <<<"$mxr2") > 1)); then

while IFS= read -r line
do
   mxa0=$(whois $line );
   mxa1=$( echo "$mxa0" | grep -i -e 'orgname' );
   if [[ -z "$mxa1" ]]; then mxa2=$( echo "$mxa0" | grep -i -e 'netname' ); else mxa2="$mxa1"; fi;
   mxax=$( echo "$mxa2" | sort -u | head -1 );
   echo "<br> &nbsp; &nbsp; $line --- <a href='/cgi-bin/bbcws.sh?doi=$line' target='_blank' style='color:tomato' class='tooltip' > &#9654; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '>
<br>Click this to get the full raw whois information of this I.P. address from ARIN's whois server/s.<br><br>
</span></a> ${mxax#*:}";
done < <(printf '%s\n' "$mxr2");

echo '<br>'
else
   echo '<br>'
   mxa20=$(whois "$mxr2" );
   mxa21=$( echo "$mxa20" | grep -i -e 'orgname' );
   if [[ -z "$mxa21" ]]; then mxa22=$( echo "$mxa20" | grep -i -e 'netname' ); else mxa22="$mxa21"; fi;
   mxax2=$( echo "$mxa22" | sort -u | head -1 );
   if [[ -z "$mxr2" ]]; then true; else 
   echo "&nbsp; &nbsp;$mxr2 --- <a href='/cgi-bin/bbcws.sh?doi=$mxr2' target='_blank' style='color:tomato' class='tooltip' > &#9654; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '>
<br>Click this to get the full raw whois information of this I.P. address from ARIN's whois server/s.<br><br>
</span></a> ${mxax2#*:}"
   fi
fi
   echo '<br> <br>'
done < <(printf '%s\n' "$1");
fi
}

##DateFunction
countdfunc () {

extdate=$(echo "$1" | grep -o -P '(?<=Date:).*(?=T)' | tr -d '\040\011\012\015' );
daysleft=$( echo $((($(date +%s --date "$extdate")-$(date +%s))/(3600*24))) );
echo "$daysleft";
}
#=====================
# END OF FUNCTION HALL
#=====================

#checks - if the domain variable  entered is null  / the button is clicked without placing anything
if [[ -z "$domain" ]]; then

cat <<EOTSE
<body>
<di id="divClipboard">
<p><br><strong>Current Input</strong> : none <br> <br>
Enter a valid domain name <a href='https://en.wikipedia.org/wiki/Fully_qualified_domain_name' target='_blank'>(FQDN)<a/>.<br><br></p>
</div>
</body>
</html>
EOTSE
exit 0;

else

# query whois about the domain and store the raw output to a variable
zyx=$(whois $domain);

#domain validity check -if  by checking the first 9 characters on the raw whois result
dvc=$(echo "${zyx:0:9}" |  awk '{print tolower($0)}' | tr -d '\040\011\012\015');
  if [[ "$dvc" = "domainno" ]] || [[ "$dvc" = "nomatch" ]] || [[ "$dvc" = "thequeri" ]] || [[ "$dvc" = "notfound" ]] || [[ "$dvc" = "nodataf" ]] || [[ "$dvc" = "nowhois" ]] || [[ "$dvc" = "thisdoma" ]] || [[ "$dvc" = "nom" ]] || [[ "$dvc" = "invalidq" ]] || [[ "$dvc" = "whoisloo" ]] || [[ "$dvc" = "theregis" ]];  
  
then
#the error that pops up when a domain is not valid/ does not exist
cat <<EONVDE
<body>
<p><br><div id="divClipboard">
<p><strong>Input</strong> : $domain <br> <br>
Not a valid/registered domain name<a href='https://en.wikipedia.org/wiki/Fully_qualified_domain_name' target='_blank'>(FQDN)</a>.<br> <br>
For additional info from Who You, click <a href="/cgi-bin/bbcws.sh?domain=$domain" target="_blank" >here.</a></p>
</div>
</body>
</html>
EONVDE

exit 0;

  else

#extracts then queries the whois server of the registar then prints the result with string manipulations
trywsresult=$(whois $domain);
whoisservergrep=$(echo "$trywsresult" | grep -i -e "Registrar WHOIS Server:" | sort -u );
whoisserver=$(echo "$whoisservergrep" | cut -f2 -d":" | tr -d '\040\011\012\015' );
zyx2=$( whois "$domain" -h "$whoisserver" );

#REGISTRAR WHOIS SERVER CHECK 
wsscheck0=$( nslookup "$whoisserver" );
wsscheck=$( echo "$wsscheck0" | grep -e 'NXDOMAIN'  );

#REESE
rese=$(echo "$zyx2" | grep -i -e "reseller");
reseller="${rese#*:}";
if [[ -z "$reseller" ]] || [[ "$reseller" = " " ]]; 
then reese="None";
else reese="$reseller"; fi;
#REESE

#once the domainis validated the TLD is extracted for verification
tld=$( echo $domain | rev | cut -d "." -f1 | rev );

#checks if the TLD is a gtld if it is the script will start to butcher the raw result and get the juicy details
case $tld in
   $tldlist0)

#stores the registrar name on a variable
registrar=$(echo "$zyx" | grep -i -e "registrar:" | sort -u );

#stores the domain status on a variable
dstat=$(echo "$zyx" | grep -i -e "status:" );

#stores the domain's creation date
creationdate0=$(echo "$zyx" | grep -i -e "creation date:");
creationdate1=$( echo "${creationdate0#*:}"| sed 's/T/\<span id="domaintimes" > Time: <\/span>/g' );
dayssince=$( countdfunc "$creationdate0" );
 
#stores the domain's expiration date from the registry
expdx0=$(echo "$zyx" | grep -i -e "registry expiry date:");
expdx1=$( echo "${expdx0#*:}" | sed 's/T/\<span id="domaintimes"> Time: <\/span>/g' );
dayslefttry0=$( countdfunc "$expdx0" );

#stores the domain's expiration date from the registrar
if [[ -z "$whoisserver" ]] || [[ "$whoisserver" = " " ]]; 
then 
expd1="Expiry Date Not Found. Consult the Registrar." 
daysleftrar0="Counter Error: Whois server Not Found!";
else 
expd0=$(echo "$zyx2" | grep -i -e "registrar registration expiration date:");
if [[ -z "$expd0" ]] || [[ "$expd0" = " " ]]; 
then
expd1="Expiry Date Not Found. Consult the Registrar." 
daysleftrar0="Counter Error: Date Not Found!";
else
expd1=$( echo "${expd0#*:}" |sed 's/T/\<span style="color:#145a32;"> Time: <\/span>/g' | sed 's/ation/\y/g' ); 
daysleftrar0=$( countdfunc "$expd0" );fi;
fi;

#stores the name servers under the domain on a variable
nameservers=$(echo "$zyx" | grep -i -e "name server:");

#dig A and MX with minimal essential output from the dig command
ar=$(dig +short $domain @8.8.8.8);
mxr=$(dig mx +short $domain @8.8.8.8 | sort -n );

#prints the domain name and the registrarand reseller if a reseller is involved.
cat << EODNARGT
<body>
<div id="divClipboard">
<p>
__________________________<br><br>
<strong>Domain Name: </strong>$domain<br>
<strong>Registrar: </strong>${registrar#*:}<br>
<strong>Reseller: </strong>$reese<br>
__________________________
<br><br>
EODNARGT

#link to the EPP status codes 
echo "<a href='/cgi-bin/eppstatuscodes.sh' target='_blank' > <strong>Domain Status: </strong></a>
<br>"

dsfrgt=$( dsfunction "$dstat" );
echo "$dsfrgt"

#the illusionist <p>=(
echo "<p>
--------------------------"

#print the domain creation and expiration dates
#COUNTER 
timez="The number of days are caclculated based on <br>BBC server's time zone: <strong>$(date +%Z)</strong>";

if [[ "${dayslefttry0:0:1}" = "-" ]]; 
then 
dltryvar="Days Expired (Registry)";
dayslefttry=${dayslefttry0#*-};
else 
dltryvar="Days Left (Registry)"; 
dayslefttry="$dayslefttry0";
fi;

if [[ "${daysleftrar0:0:1}" = "-" ]]; 
then 
dlrarvar="Days Expired (Registrar"; 
daysleftrar=${daysleftrar0#*-};
else 
dlrarvar="Days Left (Registrar)"; 
daysleftrar="$daysleftrar0";
fi;

cat <<EODEDCDGT
<br> <br>
<strong>Creation Date: </strong>$creationdate1 <br>
<strong>Registry Expiry Date: </strong> $expdx1 <br>
<strong><span style="color:#145a32;">Registrar Expiry Date:</span> </strong> $expd1

<!-- COUNTER-->

<script> 
function jstimeverbose() { var x = document.getElementById('timeverbose'); 
if (x.style.display === 'none') { x.style.display = 'block'; } 
else { x.style.display = 'none'; } } 
</script>
<a style='color:tomato; cursor: pointer;' class='button tooltip' onclick='jstimeverbose()'> &#9660; 
<span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '>
<br>Click this to spawn a table with 'days left' before the domain expires and 'days counted' since it was created.<br><br>
</span></a>
<div id='timeverbose' style='display:none'> <table> <tbody> <td>
<p>$timez<br><br>
Days counted since registration: <strong>${dayssince#*-}</strong> <br>
$dltryvar: <strong>$dayslefttry</strong><br>
$dlrarvar: <strong>$daysleftrar</strong><br>
</p></td> </tbody> </table> </div><p>

<!--COUNTER-->
__________________________
<br> 
EODEDCDGT

#name servrers history
echo "<br><a href='https://securitytrails.com/domain/$domain/history/ns' target='_blank' style='font-size: 110%' class='tooltip'> &#9960; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '><br>Click to get the name server history from https://securitytrails.com<br><br></span></a> <strong>Name Servers:</strong><br>"

nsfrgt=$( nsfunction "$nameservers");
echo "$nsfrgt
__________________________<br> <br>"

#link to the A record/s history from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/a' target='_blank' style='font-size: 110%' class='tooltip'> &#9960; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '><br>Click to get the A record history from https://securitytrails.com<br><br></span></a> <strong>A record/s: </strong><br>"

arfrgt=$( arfunction "$ar" );
echo "$arfrgt
<br>__________________________<br> <br>"

#link to the MX record/s history from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/mx' target='_blank' style='font-size: 110%'class='tooltip'> &#9960; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '><br>Click to get the MX record history from https://securitytrails.com<br><br></span></a> <strong> MX record/s: </strong><br> <br>"

mrfrgt=$( mrfunction "$mxr");
echo "$mrfrgt
__________________________"

;;

edu)

zyx=$(whois $domain);
ar=$(dig +short $domain @8.8.8.8);
mxr=$(dig mx +short $domain @8.8.8.8 | sort -n );

cat << EDUSECTION
<body>
<p>
<div id="divClipboard">
<pre>${zyx#*-------------------------------------------------------------}</pre>
__________________________
<p>
EDUSECTION

#link to the A record/s history from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/a' target='_blank' style='font-size: 110%' class='tooltip'> &#9960; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '><br>Click to get the A record history from https://securitytrails.com<br><br></span></a> <strong>A record/s: </strong>"

#cycles through multiple A record/s and will get the company/individual that is liable for the IP address
echo '<br>'

arfrgt=$( arfunction "$ar" );
echo "$arfrgt 
<br>__________________________
<br> <br>"

#link to the MX record/s history from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/mx' target='_blank' style='font-size: 110%'class='tooltip'> &#9960; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '><br>Click to get the MX record history from https://securitytrails.com<br><br></span></a> <strong> MX record/s: </strong>"

echo '<br> <br>'

mrfrgt=$( mrfunction "$mxr");

echo "$mrfrgt
__________________________<br>
</p>
</div>
<pre>${zyx%-------------------------------------------------------------*}</pre>
</body>
<footer>
<hr>
<p> <a href='/cgi-bin/bbc.sh' ><small><<</small> back | track</a> </p>
</footer>
</html>"

exit 0;
;;

gov)

zyx=$(whois $domain);
ar=$(dig +short $domain @8.8.8.8);
mxr=$(dig mx +short $domain @8.8.8.8 | sort -n );

zyx0=$(echo "$zyx" | awk '/DOTGOV WHOIS Server ready/{flag=1;next}/>>>/{flag=0}flag' );

cat << GOVSECTION
<body>
<p>
<div id="divClipboard">
<pre>$zyx0</pre>
__________________________
<p>
GOVSECTION

#link to the A record/s history from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/a' target='_blank' style='font-size: 110%' class='tooltip'> &#9960; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '><br>Click to get the A record history from https://securitytrails.com<br><br></span></a> <strong>A record/s: </strong>"

#cycles through multiple A record/s and will get the company/individual that is liable for the IP address
echo '<br>'

arfrgt=$( arfunction "$ar" );
echo "$arfrgt 
<br>__________________________
<br> <br>"

#link to the MX record/s history from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/mx' target='_blank' style='font-size: 110%'class='tooltip'> &#9960; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '><br>Click to get the MX record history from https://securitytrails.com<br><br></span></a> <strong> MX record/s: </strong>"

echo '<br> <br>'

mrfrgt=$( mrfunction "$mxr");

echo "$mrfrgt
__________________________<br>
</p>
</div>
</body>
<footer>
<hr>
<p> <a href='/cgi-bin/bbc.sh' ><small><<</small> back | track</a> </p>
</footer>
</html>"

exit 0;
;;

mil)
ar=$(dig +short $domain @8.8.8.8);
mxr=$(dig mx +short $domain @8.8.8.8 | sort -n );

cat << MILSECTION
<body>
<div id="divClipboard"><p>
<strong>Input</strong>: $domain <br><br>
This TLD has no whois server.<br><br>
.mil domains are exclusively for the use of the <a href='https://en.wikipedia.org/wiki/United_States_Department_of_Defense' target='_blank' >United States Department of Defense</a>.<br><br>
The domain name mil is the sponsored top-level domain (sTLD) in the Domain Name System of the Internet for the United States Department of Defense and its subsidiary or affiliated organizations. More info <a href='https://en.wikipedia.org/wiki/.mil' target='_blank'>here.</a></p>
__________________________<p>
MILSECTION

#link to the A record/s history from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/a' target='_blank' style='font-size: 110%' class='tooltip'> &#9960; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '><br>Click to get the A record history from https://securitytrails.com<br><br></span></a> <strong>A record/s: </strong>"

#cycles through multiple A record/s and will get the company/individual that is liable for the IP address
echo '<br>'

arfrgt=$( arfunction "$ar" );
echo "$arfrgt 
<br>__________________________
<br> <br>"

#link to the MX record/s history from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/mx' target='_blank' style='font-size: 110%'class='tooltip'> &#9960; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '><br>Click to get the MX record history from https://securitytrails.com<br><br></span></a> <strong> MX record/s: </strong>"

echo '<br> <br>'

mrfrgt=$( mrfunction "$mxr");

echo "$mrfrgt
__________________________<br>
</p>
</div>
</body>
<footer>
<hr>
<p> <a href='/cgi-bin/bbc.sh' ><small><<</small> back | track</a> </p>
</footer>
</html>"

exit 0;
;;

$tldlist1)

zyx=$(whois $domain);

#dig A and MX with minimal essential output from Google DNS servers
ar=$(dig +short $domain @8.8.8.8);
mxr=$(dig mx +short $domain @8.8.8.8 | sort -n );

#start of html body
echo "<body>
<br>
<h1>ccTLD does not have any configured string manipulation, falling back to raw whois result </h1>
<br>
<div id='divClipboard'>"

#displays the raw whois result of ccTLDs
echo "<pre>$zyx</pre>
<p>
__________________________<br> <br>"

#link to the A record/s history from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/a' target='_blank' style='font-size: 110%' class='tooltip'> &#9960; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '><br>Click to get the A record history from https://securitytrails.com<br><br></span></a> <strong>A record/s: </strong>"

echo '<br>'

#A RECORD/S CT
arfrct=$( arfunction "$ar" );
echo "$arfrct
<br>
__________________________
<br> <br>"

#link to the MX record/s history from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/mx' target='_blank' style='font-size: 110%' class='tooltip'> &#9960; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '><br>Click to get the MX record history from https://securitytrails.com<br><br></span></a> <strong> MX records:</strong>
<br> <br>"

#A RECORD/S FOT CT
mrfrct=$( mrfunction "$mxr");
echo "$mrfrct
__________________________
</p>
</div>"

;;

#special trimming for AU ccTLDs
au)

#stores the whois info from auda in a variable.
zyx=$(whois $domain );

#dig A and MX with minimal essential output
ar=$(dig +short $domain @8.8.8.8);
mxr=$(dig mx +short $domain @8.8.8.8 | sort -n );

limitcheck=$(echo "${zyx:0:20}");

if [[ "$limitcheck" = "WHOIS LIMIT EXCEEDED" ]]; 

then echo "<body>
<div id='divClipboard'>
<p>
<br>
<a href='https://www.auda.org.au/industry-information/' target='_blank'>auDA</a>'s (AU Domain Administration )whois server/s answers solely for whois queries regarding .au domains. There is a limit on how many times an I.P address is allowed to query the server for whois lookups on a given time frame. And since this website's server has only an I.P. address, you can either wait for this server to be able to query auDA's whois server/s again, or you can go to  <a href='https://whois.auda.org.au/' target='_blank' >https://whois.auda.org.au/</a> to get the raw whois information of this .au domain.
<br> <br>
__________________________
<br> <br>";

#link to the A record/s history from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/a'target='_blank' style='font-size: 110%' class='tooltip'> &#9960; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '><br>Click to get the A record history from https://securitytrails.com<br><br></span></a> <strong> A records:</strong>"

#A RECORD/S CT AU

arfrctau=$( arfunction "$ar" );
echo "$arfrctau
<br>
__________________________
<br> <br>"

#link to the MX record/s history on from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/mx' target='_blank' style='font-size: 110%' class='tooltip'> &#9960; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '><br>Click to get the MX record history from https://securitytrails.com<br><br></span></a> <strong> MX records:</strong>
<br> <br>"

#MX RECORD/S - AND IP/S CT AU

mrfrctau=$( mrfunction "$mxr" );
echo "$mrfrctau"

cat << CTAULIMIT 
<br>
__________________________
</p>
</div>
</body><br>
<hr><p> <a href='/cgi-bin/bbc.sh' ><small><<</small> back | track</a> </p>
</html>
CTAULIMIT

exit 0;

else true;
fi;

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

#print the domain and the registrar
cat << EODNARCTAU
<body>
<div id='divClipboard'>
<p>
__________________________
<br><br>
<strong>Domain Name:</strong> $domain
<br><br>
<strong>Registrar: </strong>${registrar#*:}
<br>
__________________________
<br> <br>
EODNARCTAU

#link to the EPP status codes 
echo "<a href='/cgi-bin/eppstatuscodes.sh' target='_blank' ><strong>Domain Status: </strong></a>
<br>"

dsfrctau=$( dsfunction "$dstat" );
echo "$dsfrctau"

#the illusionist
echo "<p>
__________________________<br>"

#link to the name servers history on [Name Server:] - from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/ns' target='_blank' style='font-size: 110%' class='tooltip'> &#9960; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '><br>Click to get the name server history from https://securitytrails.com<br><br></span></a> <strong> Name Servers:</strong>"
echo '<br>'

#NAME SERVERS CT AU

nsfrctau=$( nsfunction "$nameservers");
echo "$nsfrctau
__________________________
<br> <br>
$regcontact
<br>
$techcontact
<br>
__________________________
<br> <br>"

#link to the A record/s history from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/a'target='_blank' style='font-size: 110%' class='tooltip'> &#9960; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '><br>Click to get the A record history from https://securitytrails.com<br><br></span></a> <strong> A records:</strong>"

#A RECORD/S CT AU

arfrctau=$( arfunction "$ar" );
echo "$arfrctau
<br>
__________________________
<br> <br>"

#link to the MX record/s history from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/mx' target='_blank' style='font-size: 110%' class='tooltip'> &#9960; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '><br>Click to get the MX record history from https://securitytrails.com<br><br></span></a> <strong> MX records:</strong>
<br> <br>"

#MX RECORD/S - AND IP/S CT AU

mrfrctau=$( mrfunction "$mxr" );
echo "$mrfrctau
<br>
__________________________
</p>"

;;

#special trimming for NZ ccTLDs
nz)

# query whois about the domain and store the raw output to a variable
zyx=$(whois $domain);

#dig A and MX with minimal essential output
ar=$(dig +short $domain @8.8.8.8);
mxr=$(dig mx +short $domain @8.8.8.8 | sort -n );

#stores the registrar name on a variable
registrar=$(echo "$zyx" | grep -i -e "registrar_name:");

#stores other registrar info on a variable
regcoun=$( echo "$zyx" | grep -i -e "registrar_country:")

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
__________________________<br><br>
<strong>Domain Name:</strong> $domain <br><br>
<strong>Registrar: </strong>${registrar#*:}<br>
Registrar Country: ${regcoun#*:}<br>
__________________________
<br> <br>
EODNARCTNZ

#link to the EPP status codes on [Domain Status:]
echo "<a href='/cgi-bin/eppstatuscodes.sh' target='_blank'><strong>Domain Status: </strong></a>
<br>"

#DOMAIN STATUS CT NZ
while IFS= read -r line
do
   echo  "</br> ${line#*#} ";
done < <(printf '%s\n' "${dstat#*:}");

echo "<br><br>
--------------------------
<br>
Last Modified: ${lastmod#*:}
<br>
__________________________
<br> <br>"

#link to the name servers history on [Name Server:] - from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/ns' target='_blank' style='font-size: 110%' class='tooltip' > &#9960; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '><br>Click to get the name server history from https://securitytrails.com<br><br></span></a> <strong>Name Servers: </strong>"
echo '<br>'

#cycles thorough the name server lines on the raw whois result and removes "name server" before the ":" and prints just the actual servers
nsfrctnz=$( nsfunction "$nameservers");
echo "$nsfrctnz
__________________________
<br> <br>"

#link to the A record/s history on [A records:] - from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/a' target='_blank' style='font-size: 110%' class='tooltip'> &#9960; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '><br>Click to get the A record history from https://securitytrails.com<br><br></span></a> <strong> A records:</strong>"

#A RECORD/S CT NZ
echo '<br>'
arfrctnz=$( arfunction "$ar");
echo "$arfrctnz
<br>
__________________________
<br> <br>"

#link to the MX record/s history on [MX records:] - from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/mx' target='_blank' style='font-size: 110%' class='tooltip'> &#9960; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '><br>Click to get the MX record history from https://securitytrails.com<br><br></span></a> <strong> MX records:</strong>"
echo '<br> <br>'

#MX RECORD/S - AND IP/S CT NZ

mrfrctnz=$( mrfunction "$mxr");
echo "$mrfrctnz
</p>
</div>"

;;

#special whois result trim for UK TLDs
uk)

zyx=$(whois $domain);

zyxuk0=$(echo "$zyx" | awk '/Registrar:/{flag=1;next}/WHOIS lookup made at/{flag=0}flag' );

#dig A and MX with minimal essential output
ar=$(dig +short $domain @8.8.8.8);
mxr=$(dig mx +short $domain @8.8.8.8 | sort -n );

echo "<body>
<div id='divClipboard'>
<p>"

#prints the whois result with the the trimming
echo "<pre><strong>Domain name: </strong>$domain<br><br> &nbsp; <strong>Registrar:</strong><br>$zyxuk0</pre>
__________________________
<p>";

#link to the A record/s history on [A records:] - from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/a' target='_blank' style='font-size: 110%' class='tooltip'> &#9960; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '><br>Click to get the A record history from https://securitytrails.com<br><br></span></a> <strong> A records:</strong>
<br>"

#A RECORD/S CT UK

arfrctuk=$( arfunction "$ar");
echo "$arfrctuk
<br>
__________________________
<br> <br>"
#link to the MX record/s history on [MX records:] - from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/mx' target='_blank' class='tooltip'> &#9960; &nbsp; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '><br>Click to get the MX record history from https://securitytrails.com<br><br></span></a> <strong> MX records:</strong><br> <br>"

#MX RECORD/S -AND IP/S CT UK

mrfrctuk=$( mrfunction "$mxr");
echo "$mrfrctuk
__________________________
<br></p></div><hr>
<p>Raw whois result below:</p><hr>
<br><pre>$zyx</pre><br>"

;;

#special whois result trim for EU TLDs
eu)

zyx=$(whois $domain);

zyxeu0=$(echo "$zyx" | awk '/Domain:/{flag=1;next}/Keys:/{flag=0}flag' );

#dig A and MX with minimal essential output
ar=$(dig +short $domain @8.8.8.8);
mxr=$(dig mx +short $domain @8.8.8.8 | sort -n );

echo "<body>
<div id='divClipboard'>
<p>"

#prints the whois result with the the trimming
echo "<pre><strong>Domain:</strong> $domain<br>$zyxeu0</pre>
__________________________
<p>";

#link to the A record/s history on [A records:] - from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/a' target='_blank' style='font-size: 110%' class='tooltip'> &#9960; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '><br>Click to get the A record history from https://securitytrails.com<br><br></span></a> <strong> A records:</strong>
<br>"

#A RECORD/S CT EU

arfrcteu=$( arfunction "$ar");
echo "$arfrcteu
<br>
__________________________
<br> <br>"
#link to the MX record/s history on [MX records:] - from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/mx' target='_blank' class='tooltip'> &#9960; &nbsp; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '><br>Click to get the MX record history from https://securitytrails.com<br><br></span></a> <strong> MX records:</strong><br> <br>"

#MX RECORD/S -AND IP/S CT EU

mrfrcteu=$( mrfunction "$mxr");
echo "$mrfrcteu
__________________________
<br></p></div><hr>
<p>Raw whois result below:</p><hr>
<br><pre>$zyx</pre><br>"

;;

#special result for .ph ccTLD 
ph)

ar=$(dig +short $domain @8.8.8.8);
mxr=$(dig mx +short $domain @8.8.8.8 | sort -n );

arfrgt=$( arfunction "$ar" );

mrfrgt=$( mrfunction "$mxr");

cat <<EOQPH
<body>
<div id="divClipboard">
<p>
<br>For the  Whois info of this .ph domain, <br>
Click the link below or copy and paste it on a browser's address bar:  <br> <br>
<a href='https://whois.dot.ph/?utf8=%E2%9C%93&search=$domain' target='_blank'>https://whois.dot.ph/?utf8=%E2%9C%93&search=$domain</a>
</p>
<p>
__________________________ <br> <br>
<strong>Domain:</strong> $domain <br>
__________________________ <br>
<a href='https://securitytrails.com/domain/$domain/history/a' target='_blank' style='font-size: 110%' class='tooltip'> &#9960; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '><br>Click to get the A record history from https://securitytrails.com<br><br></span></a> <strong>A record/s: </strong>
<br>
$arfrgt
<br>
__________________________
<br> <br>
<a href='https://securitytrails.com/domain/$domain/history/mx' target='_blank' style='font-size: 110%' class='tooltip'> &#9960; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '><br>Click to get the MX records history from https://securitytrails.com<br><br></span></a> <strong> MX record/s: </strong>
<br> <br>
$mrfrgt
__________________________
</p>
</div>
</body>
</html>
EOQPH
exit 0;

;;

#special result for .sg ccTLD 
sg)

ar=$(dig +short $domain @8.8.8.8);
mxr=$(dig mx +short $domain @8.8.8.8 | sort -n );

arfrgt=$( arfunction "$ar" );

mrfrgt=$( mrfunction "$mxr");

cat <<EOQSG
<body>
<div id="divClipboard">
<p>
<br>For the  Whois info of this .sg domain, <br>
Click the link below or copy and paste it on a browser's address bar:  <br> <br>
<a href='https://www.sgnic.sg/domain-search.html?SearchKey=$domain' target='_blank'>https://www.sgnic.sg/domain-search.html?SearchKey=$domain</a>
</p>
<p>
__________________________ <br> <br>
<strong>Domain:</strong> $domain <br>
__________________________ <br>
<a href='https://securitytrails.com/domain/$domain/history/a' target='_blank' style='font-size: 110%' class='tooltip'> &#9960; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '><br>Click to get the A record history from https://securitytrails.com<br><br></span></a> <strong>A record/s: </strong>
<br>
$arfrgt
<br>
__________________________
<br> <br>
<a href='https://securitytrails.com/domain/$domain/history/mx' target='_blank' style='font-size: 110%' class='tooltip'> &#9960; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '><br>Click to get the MX record history from https://securitytrails.com<br><br></span></a> <strong> MX record/s: </strong>
<br> <br>
$mrfrgt
__________________________
</p>
</div>
</body>
</html>
EOQSG
exit 0;

;;

#special result for .vn ccTLD 
vn)

ar=$(dig +short $domain @8.8.8.8);
mxr=$(dig mx +short $domain @8.8.8.8 | sort -n );

arfrgt=$( arfunction "$ar" );

mrfrgt=$( mrfunction "$mxr");

cat <<EOQVN
<body>
<div id="divClipboard">
<p>
<br>For the  Whois info of this .vn domain, <br>
Click the link below or copy and paste it on a browser's address bar:  <br> <br>
<a href='https://vnnic.vn/en/whois-information?lang=en' target='_blank'>https://vnnic.vn/en/whois-information?lang=en</a>
</p>
<p>
__________________________ <br> <br>
<strong>Domain:</strong> $domain <br>
__________________________ <br>
<a href='https://securitytrails.com/domain/$domain/history/a' target='_blank' style='font-size: 110%' class='tooltip'> &#9960; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '><br>Click to get the A record history from https://securitytrails.com<br><br></span></a> <strong>A record/s: </strong>
<br>
$arfrgt
<br>
__________________________
<br> <br>
<a href='https://securitytrails.com/domain/$domain/history/mx' target='_blank' style='font-size: 110%' class='tooltip'> &#9960; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '><br>Click to get the MX record history from https://securitytrails.com<br><br></span></a> <strong> MX record/s: </strong>
<br> <br>
$mrfrgt
__________________________
</p>
</div>
</body>
</html>
EOQVN
exit 0;

;;

jp)

zyx=$(whois $domain);

#dig A and MX with minimal essential output from Google DNS servers
ar=$(dig +short $domain @8.8.8.8);
mxr=$(dig mx +short $domain @8.8.8.8 | sort -n );
#PASS the a record/s to arfunc
arfrjp=$( arfunction "$ar" );
#PASS the mx record/s to mxrfunc
mrfrjp=$( mrfunction "$mxr");

#start of html body
echo "<body>
<br>
<div id='divClipboard'>
<pre>${zyx#*Domain Information:}</pre>
<p>
__________________________<br> <br>"

#link to the A record/s history from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/a' target='_blank' style='font-size: 110%' class='tooltip'> &#9960; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '><br>Click to get the A record history from https://securitytrails.com<br><br></span></a> <strong>A record/s: </strong> <br>
$arfrjp
<br>
__________________________<br> <br>"

#link to the MX record/s history from securitytrails.com
echo "<a href='https://securitytrails.com/domain/$domain/history/mx' target='_blank' style='font-size: 110%' class='tooltip'> &#9960; <span class='tooltiptext' style='font-size: 95%; font-family: calibri; font: green; '><br>Click to get the MX record history from https://securitytrails.com<br><br></span></a> <strong> MX records:</strong> <br>
$mrfrjp 
__________________________
</p></div><hr>
<p>Raw whois result below:</p><hr>
<br><pre>$zyx</pre><br>
"
;;

#throw an error for anything else

*)
cat << ERRORFORALLELSE

<body>

<div id='divClipboard'>

<p>
<strong>Input</strong> : $domain <br> <br>
Not a valid domain name <a href='https://en.wikipedia.org/wiki/Fully_qualified_domain_name' target='_blank'>(FQDN)<a/>!
</p>

ERRORFORALLELSE

exit 0;

;;
esac

echo "</p>
</div>
</body>"

fi

fi

echo '<footer>'

registrant=$(echo "$zyx2" | grep -i -e 'registrant\s')
admin=$(echo "$zyx2" | grep -i -e 'admin')
tech=$(echo "$zyx2" | grep -i -e 'tech')

if [[ -z "$registrant" ]]; then

regwis="$(echo $whoisservergrep | tr -d '\040\011\012\015')"

case "$regwis" in
   "RegistrarWHOISServer:http://api.fastdomain.com/cgi/whois")

echo "<hr>
<br> click <a href='http://api.fastdomain.com/cgi/whois?domain=$domain' target='_blank'>here</a> for the raw whois info from the  FastDomain's whois server web interface.<br>
<br>
<hr>
<p> <a href="/cgi-bin/bbc.sh" ><small><<</small> back | track</a> </p>
</footer>
</html>"

exit 0;

;;

 *)

echo '<hr>'


if [[ -z "$whoisservergrep" ]] || [[ "$whoisservergrep" = " " ]]; 
then 
whoisservergrep="<strong>Registrar WHOIS Server: </strong>"; 
echo "<strong style='color: green; font-size: 90%;' >$whoisservergrep Not Found!</strong>";

else 
if [[ -z "$whoisserver" ]] || [[ "$whoisserver" = " " ]]; 
then echo "<strong style='color: green; font-size: 90%;' >$whoisservergrep Not Found!</strong>";
else echo "<span style='color: green; font-size: 90%;' >$whoisservergrep</span>"; fi; 

fi;

echo "<br>
<hr>
<p> <a href='/cgi-bin/bbc.sh' ><small><<</small> back | track</a> </p>
</footer>
</html>"

;;

esac

else

cat << EOHF
<hr>
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
EOHF

if [[ -z "$whoisservergrep" ]] || [[ "$whoisservergrep" = " " ]]; 
then 
whoisservergrep="<strong>Registrar WHOIS Server: </strong>"; 
echo "<strong style='color: green; font-size: 90%;' >$whoisservergrep Not Found!</strong>";

else 
if [[ -z "$whoisserver" ]] || [[ "$whoisserver" = " " ]]; 
then echo "<strong style='color: green; font-size: 90%;' >$whoisservergrep Not Found!</strong>";
else echo "<span style='color: green; font-size: 90%;' >$whoisservergrep</span>"; fi; 

fi;

cat << EOHF2

<br>
<hr>
<p> <a href="/cgi-bin/bbc.sh" ><small><<</small> back | track </a> </p>

EOHF2

echo "</footer>
</html>"

fi

exit 0;
