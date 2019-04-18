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

echo "<!DOCTYPE html>
<html>
<title>WhoYou</title>"

#converts all uppercase form the query string to lowercase
qs=$(echo $QUERY_STRING | awk '{print tolower($0)}');

#butchers the qs string and gets the domain
doi=$(echo $qs | cut -f2 -d"=" );

cat <<ENDOFHEAD
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

<script>
//from http://edupala.com/copy-div-content-clipboard/

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

function copyClipboard0() {
  var elm = document.getElementById("divClipboard0");
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

function copyClipboard1() {
  var elm = document.getElementById("divClipboard1");
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

//from http://edupala.com/copy-div-content-clipboard/

// from https://www.w3schools.com/howto/howto_js_tabs.asp

function whoisserver(evt, ws) {
  // Declare all variables
  var i, tabcontent, tablinks;

  // Get all elements with class="tabcontent" and hide them
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }

  // Get all elements with class="tablinks" and remove the class "active"
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }

  // Show the current tab, and add an "active" class to the button that opened the tab
  document.getElementById(ws).style.display = "block";
  evt.currentTarget.className += " active";
} 
// from https://www.w3schools.com/howto/howto_js_tabs.asp
</script>

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

/* from: https://www.w3schools.com/howto/howto_js_tabs.asp */
 /* Style the tab */
.tab {
  overflow: hidden;
  border: 1px solid #000;
  background-color: #556B2F;
}

/* Style the buttons that are used to open the tab content */
.tab button {
  background-color: inherit;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  transition: 0.3s;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #000;
}

/* Create an active/current tablink class */
.tab button.active {
  background-color: #006400;
}

/* Style the tab content */
.tabcontent {
  display: none;
  padding: 6px 12px;
  border: 1px solid #006400;
  border-top: none;
} 

/* from: https://www.w3schools.com/howto/howto_js_tabs.asp */


/* from https://stackoverflow.com/questions/50970336/prevent-css-tooltip-from-going-out-of-page-window*/
.tooltip {
    display: inline-block;
    text-indent:0em;
}
    
.tooltip .tooltiptext {
	color: white;
	word-break:break-word;
	font-size: 90%; 
	font-family: calibri; 
	text-align: center;
    display: none;
    width: calc(50% - 50px);
    background: #000;
    border-radius: 3px;
    padding: 3px 3px;
    left: 50px;
    border: 2px dotted green;
    line-height: normal;
    text-decoration: none;
    position: absolute;
    z-index: 1;
}
.tooltip:hover .tooltiptext {
    display: block;
}
/* from https://stackoverflow.com/questions/50970336/prevent-css-tooltip-from-going-out-of-page-window*/

a {text-decoration: none; }
a:link { color: red;  }
a:active { color: red;  }
a:hover { color: red;  }
a:visited { color: red;  }
div a:link { color: tomato;  font-size: 100%; }
div a:active { color: tomato;  font-size: 100%; }
div a:hover { color: tomato;  font-size: 100%; }
div a:visited { color: tomato;  font-size: 100%; }
strong {color: green;}
p  { font-family: verdana; font-size: 90%;}
h1 {font-family: verdana; font-size: 70%;}
body {background-color:black;color:white;}
pre { white-space: pre-wrap;font-family: verdana; font-size: 85%;}
table { font-family: verdana; border: 2px solid green; font-size: 100%;}
th { border: 2px solid green;}
td { vertical-align: top; text-align: left; border: 1px solid green;}

#navlinkz { color:tomato; float:right; font-size: 90%; }
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
<!-- ################## WHO YOU ################# -->
<form action="bbcws.sh" method="get">
<input placeholder="Domain / I.P. address" id="whoyouinput" type="text" onblur="this.value=removeSpaces(this.value); this.value=removeSpecialCharacters(this.value);" onKeyDown="if(event.keyCode==13) this.value=removeSpaces(this.value); if(event.keyCode==13) this.value=removeSpecialCharacters(this.value);" onKeyUp="if(event.keyCode==13) this.value=removeSpecialCharacters(this.value);"name="domain">
<button id="whoyoubtn" type="submit" >Who is 2</button>
</form>
<!-- ################## WHO YOU ################# -->
</td> </tbody> </table> </div></p>

<a style='color:tomato; cursor: pointer; font-size: 116%; font-family:verdana;' value="Refresh Page" onClick="window.location.href=window.location.href">&#8635;<span style="font-size: 77%;">Refresh Results</span></a></p>

<hr>
</head>
ENDOFHEAD

#list of supported gtlds
shopt -s extglob
gcctldlist='+(aarp|abarth|abb|abbott|abbvie|abc|able|abogado|abudhabi|academy|accenture|accountant|accountants|aco|active|actor|adac|ads|adult|aeg|aero|aetna|afamilycompany|afl|africa|agakhan|agency|aig|aigo|airbus|airforce|airtel|akdn|alfaromeo|alibaba|alipay|allfinanz|allstate|ally|alsace|alstom|americanexpress|americanfamily|amex|amfam|amica|amsterdam|analytics|android|anquan|anz|aol|apartments|app|apple|aquarelle|arab|aramco|archi|army|arpa|art|arte|asda|asia|associates|athleta|attorney|auction|audi|audible|audio|auspost|author|auto|autos|avianca|aws|axa|azure|baby|baidu|banamex|bananarepublic|band|bank|bar|barcelona|barclaycard|barclays|barefoot|bargains|baseball|basketball|bauhaus|bayern|bbc|bbt|bbva|bcg|bcn|beats|beauty|beer|bentley|berlin|best|bestbuy|bet|bharti|bible|bid|bike|bing|bingo|bio|biz|black|blackfriday|blanco|blockbuster|blog|bloomberg|blue|bms|bmw|bnl|bnpparibas|boats|boehringer|bofa|bom|bond|boo|book|booking|bosch|bostik|boston|bot|boutique|box|bradesco|bridgestone|broadway|broker|brother|brussels|budapest|bugatti|build|builders|business|buy|buzz|bzh|cab|cafe|cal|call|calvinklein|cam|camera|camp|cancerresearch|canon|capetown|capital|capitalone|car|caravan|cards|care|career|careers|cars|cartier|casa|case|caseih|cash|casino|cat|catering|catholic|cba|cbn|cbre|cbs|ceb|center|ceo|cern|cfa|cfd|chanel|channel|charity|chase|chat|cheap|chintai|christmas|chrome|chrysler|church|cipriani|circle|cisco|citadel|citi|citic|city|cityeats|claims|cleaning|click|clinic|clinique|clothing|cloud|club|clubmed|coach|codes|coffee|college|cologne|com|comcast|commbank|community|company|compare|computer|comsec|condos|construction|consulting|contact|contractors|cooking|cookingchannel|cool|coop|corsica|country|coupon|coupons|courses|credit|creditcard|creditunion|cricket|crown|crs|cruise|cruises|csc|cuisinella|cymru|cyou|dabur|dad|dance|data|date|dating|datsun|day|dclk|dds|deal|dealer|deals|degree|delivery|dell|deloitte|delta|democrat|dental|dentist|desi|design|dev|dhl|diamonds|diet|digital|direct|directory|discount|discover|dish|diy|dnp|docs|doctor|dodge|dog|doha|domains|dot|download|drive|dtv|dubai|duck|dunlop|duns|dupont|durban|dvag|dvr|earth|eat|eco|edeka|edu|education|email|emerck|energy|engineer|engineering|enterprises|epost|epson|equipment|ericsson|erni|esq|estate|esurance|etisalat|eurovision|eus|events|everbank|exchange|expert|exposed|express|extraspace|fage|fail|fairwinds|faith|family|fan|fans|farm|farmers|fashion|fast|fedex|feedback|ferrari|ferrero|fi|fiat|fidelity|fido|film|final|finance|financial|fire|firestone|firmdale|fish|fishing|fit|fitness|flickr|flights|flir|florist|flowers|fly|foo|food|foodnetwork|football|ford|forex|forsale|forum|foundation|fox|free|fresenius|frl|frogans|frontdoor|frontier|ftr|fujitsu|fujixerox|fun|fund|furniture|futbol|fyi|gal|gallery|gallo|gallup|game|games|gap|garden|gbiz|gdn|gea|gent|genting|george|ggee|gift|gifts|gives|giving|glade|glass|gle|global|globo|gmail|gmbh|gmo|gmx|godaddy|gold|goldpoint|golf|goo|goodyear|goog|google|gop|got|gov|grainger|graphics|gratis|green|gripe|grocery|group|guardian|gucci|guge|guide|guitars|guru|hair|hamburg|hangout|haus|hbo|hdfc|hdfcbank|health|healthcare|help|helsinki|here|hermes|hgtv|hiphop|hisamitsu|hitachi|hiv|hkt|hockey|holdings|holiday|homedepot|homegoods|homes|homesense|honda|honeywell|horse|hospital|host|hosting|hot|hoteles|hotels|hotmail|house|how|hsbc|hughes|hyatt|hyundai|ibm|icbc|ice|icu|ieee|ifm|ikano|imamat|imdb|immo|immobilien|in|inc|industries|infiniti|info|ing|ink|institute|insurance|insure|int|intel|international|intuit|investments|ipiranga|irish|iselect|ismaili|ist|istanbul|itau|itv|iveco|jaguar|java|jcb|jcp|jeep|jetzt|jewelry|jio|jll|jmp|jnj|jo|jobs|joburg|jot|joy|jpmorgan|jprs|juegos|juniper|kaufen|kddi|ke|kerryhotels|kerrylogistics|kerryproperties|kfh|kia|kim|kinder|kindle|kitchen|kiwi|koeln|komatsu|kosher|kpmg|kpn|krd|kred|kuokgroup|kyoto|lacaixa|ladbrokes|lamborghini|lamer|lancaster|lancia|lancome|land|landrover|lanxess|lasalle|lat|latino|latrobe|law|lawyer|lds|lease|leclerc|lefrak|legal|lego|lexus|lgbt|liaison|lidl|life|lifeinsurance|lifestyle|lighting|like|lilly|limited|limo|lincoln|linde|link|lipsy|live|living|lixil|llc|loan|loans|locker|locus|loft|lol|london|lotte|lotto|love|lpl|lplfinancial|ltd|ltda|lundbeck|lupin|luxe|luxury|macys|madrid|maif|maison|makeup|man|management|mango|map|market|marketing|markets|marriott|marshalls|maserati|mattel|mba|mckinsey|med|media|meet|melbourne|meme|memorial|men|menu|merckmsd|metlife|miami|microsoft|mini|mint|mit|mitsubishi|mlb|mls|mma|mobi|mobile|mobily|moda|moe|moi|mom|monash|money|monster|mopar|mormon|mortgage|moscow|moto|motorcycles|mov|movie|movistar|msd|mtn|mtr|museum|mutual|nab|nadex|nagoya|name|nationwide|natura|navy|nba|nec|net|netbank|network|neustar|new|newholland|news|next|nextdirect|nexus|nfl|ngo|nhk|nico|nike|nikon|ninja|nissan|nissay|nokia|northwesternmutual|now|nowruz|nowtv|nra|nrw|ntt|nyc|obi|observer|off|office|okinawa|olayan|olayangroup|oldnavy|ollo|omega|one|ong|onl|online|onyourside|ooo|open|oracle|orange|org|organic|origins|osaka|otsuka|ott|ovh|page|panasonic|paris|pars|partners|parts|party|passagens|pay|pccw|pet|pfizer|pharmacy|phd|philips|phone|photo|photography|photos|physio|piaget|pics|pictet|pictures|pid|pin|ping|pink|pioneer|pizza|place|play|playstation|plumbing|plus|pnc|pohl|poker|politie|porn|post|pramerica|praxi|press|prime|pro|prod|productions|prof|progressive|promo|properties|property|protection|pru|prudential|pub|pwc|qpon|quebec|quest|qvc|racing|radio|raid|read|realestate|realtor|realty|recipes|red|redstone|redumbrella|rehab|reise|reisen|reit|reliance|ren|rent|rentals|repair|report|republican|rest|restaurant|review|reviews|rexroth|rich|richardli|ricoh|rightathome|ril|rio|rip|rmit|rocher|rocks|rodeo|rogers|room|rsvp|rugby|ruhr|run|rwe|ryukyu|saarland|safe|safety|sakura|sale|salon|samsclub|samsung|sandvik|sandvikcoromant|sanofi|sap|sarl|sas|save|saxo|sbi|sbs|sca|scb|schaeffler|schmidt|scholarships|school|schule|schwarz|science|scjohnson|scor|scot|search|seat|secure|security|seek|select|sener|services|ses|seven|sew|sex|sexy|sfr|shangrila|sharp|shaw|shell|shia|shiksha|shoes|shop|shopping|shouji|show|showtime|shriram|silk|sina|singles|site|ski|skin|sky|skype|sling|smart|smile|sncf|soccer|social|softbank|software|sohu|solar|solutions|song|sony|soy|space|spiegel|sport|spot|spreadbetting|srl|srt|stada|staples|star|starhub|statebank|statefarm|stc|stcgroup|stockholm|storage|store|stream|studio|study|style|sucks|supplies|supply|support|surf|surgery|suzuki|swatch|swiftcover|swiss|sydney|symantec|systems|tab|taipei|talk|taobao|target|tatamotors|tatar|tattoo|tax|taxi|tci|tdk|team|tech|technology|tel|telefonica|temasek|tennis|teva|thd|theater|theatre|tiaa|tickets|tienda|tiffany|tips|tires|tirol|tjmaxx|tjx|tkmaxx|tmall|today|tokyo|tools|top|toray|toshiba|total|tours|town|toyota|toys|trade|trading|training|travel|travelchannel|travelers|travelersinsurance|trust|trv|tube|tui|tunes|tushu|tvs|ubank|ubs|uconnect|unicom|university|uno|uol|ups|vacations|vana|vanguard|vegas|ventures|verisign|versicherung|vet|viajes|video|vig|viking|villas|vin|vip|virgin|visa|vision|vistaprint|viva|vivo|vlaanderen|vodka|volkswagen|volvo|vote|voting|voto|voyage|vuelos|wales|walmart|walter|wang|wanggou|warman|watch|watches|weather|weatherchannel|webcam|weber|website|wed|wedding|weibo|weir|whoswho|wien|wiki|williamhill|win|windows|wine|winners|wme|wolterskluwer|woodside|work|works|world|wow|wtc|wtf|xbox|xerox|xfinity|xihuan|xin|xyz|yachts|yamaxun|yodobashi|yoga|yokohama|you|youtube|yun|zappos|zara|zero|zip|zippo|zone|zuerich|ac|ad|ae|af|ag|ai|al|am|ao|aq|ar|as|at|aw|au|ax|az|ba|bb|bd|be|bf|bg|bh|bi|bj|bm|bn|bo|br|bs|bt|bw|by|bz|ca|cc|cd|cf|cg|ch|ci|ck|cl|cm|cn|co|cr|cu|cv|cw|cx|cy|cz|de|dj|dk|dm|do|dz|ec|ee|eg|er|es|et|eu|fi|fj|fk|fm|fo|fr|ga|gd|ge|gf|gg|gh|gi|gl|gm|gn|gp|gq|gr|gs|gt|gu|gw|gy|hk|hm|hn|hr|ht|hu|id|ie|il|im|in|io|iq|ir|is|it|je|jm|jo|jp|ke|kg|kh|ki|km|kn|kp|kr|kw|ky|kz|la|lb|lc|li|lk|lr|ls|lt|lu|lv|ly|ma|mc|md|me|mg|mh|mk|ml|mm|mn|mo|mp|mq|mr|ms|mt|mu|mv|mw|mx|my|mz|na|nc|ne|nf|ng|ni|nl|no|np|nr|nu|nz|om|pa|pe|pf|pg|pk|pl|pm|pn|pr|ps|pt|pw|py|qa|re|ro|rs|ru|rw|sa|sb|sc|sd|se|sh|si|sk|sl|sm|sn|so|sr|ss|st|sv|sx|sy|sz|tc|td|tf|tg|th|tj|tk|tl|tm|tn|to|tr|tt|tv|tw|tz|ua|ug|uk|us|uy|uz|va|vc|ve|vg|vi|vu|wf|ws|ye|yt|za|zm|zw)'

#============#
#FUNCTIONHALL#
#============#
cutterfunc () {
while IFS= read -r line
do
cutter=$( echo "$line" | sed -e 's/^[ \t]*//');
echo "$cutter";
done < <(printf '%s\n' "$1");
}
#============#
#FUNCTIONHALL#
#============#

#checks if the domain enter is null  
#if 1
if [[ -z "$doi" ]]; then

cat <<EOTS
<body>
<div id="divClipboard">
<p><br><strong>Current Input</strong> : none <br> <br>
Enter a valid domain name <a href='https://en.wikipedia.org/wiki/Fully_qualified_domain_name' target='_blank'>(FQDN)<a/> / <a href="https://en.wikipedia.org/wiki/IPv4" target="_blank">IPv4 Address</a>.<br><br><br>For domain names <a href='https://en.wikipedia.org/wiki/WHOIS#Software' target='_blank'>WHOIS</a> will query both the Registry's whois server/s and <br>the Registrar's whois server/s (if the Registrar whois server is found on the whois info provided by the Registry). <br> <br> And for IP addresses, will query A.R.I.N.'s whois server/s.</p>
</div>
<p style='color: red; text-decoration: none; font-family: calibri'><small><<</small><input type='button' style='background:none; border:none; font-size:95%; color: red;' value='back | track' onClick='history.go(-1);'></p>
</body>
</html>
EOTS
exit 0;

#else 1
else

#ARIN WHOIS: verifies if qs is an IP address if it is - does a whois lookup for the IP address
#if 2
	if [[ "$doi" =~ ^(([1-9]?[0-9]|1[0-9][0-9]|2([0-4][0-9]|5[0-5]))\.){3}([1-9]?[0-9]|1[0-9][0-9]|2([0-4][0-9]|5[0-5]))$ ]]; then
	ipwhois=$(echo $doi | tr -d '\040\011\012\015' );
	zyxip=$(whois $ipwhois );
	zyxip0=$(grep -o '^[^#]*' <<< "$zyxip");

cat << EOWIIPR
<body>
<button onclick="copyClipboard1()">Copy Result</button>
<br>
<div id="divClipboard1">
<pre> $zyxip0 </pre><br>
<hr><p style='color: red; text-decoration: none; font-family: calibri'><small><<</small><input type='button' style='background:none; border:none; font-size:95%; color: red;' value='back | track' onClick='history.go(-1);'></p>
</body>
</html>
EOWIIPR
#else 2
	else

#If qs is not an IP checks if it is a domain - oteherwise it will throw an error saying it is not an IP or a domain
zyx=$(whois --verbose $doi );
zyx0=$(echo "$zyx" | sed -e '1,/Query string:/d' | sed -n '1!p' );

dvcheck=$(echo "${zyx:0:9}" | awk '{print tolower($0)}' | tr -d '\040\011\012\015' );
dvcheck0=$(echo "${zyx0:0:9}" | awk '{print tolower($0)}' | tr -d '\040\011\012\015' );

if [[ "$dvcheck" = "nowhois" ]]; then
echo "
<body>
<p><button onclick='copyClipboard1()'>Copy Result</button><br>
<div id='divClipboard1'>
<p><strong>Input</strong> : $doi <br> <br>
Not a valid/registered naked domain name <a href='https://en.wikipedia.org/wiki/Fully_qualified_domain_name' target='_blank'>(FQDN)</a>.<br>
And not a valid <a href='https://en.wikipedia.org/wiki/IPv4' target='_blank'>IPv4 Address</a>!<br><br><br>
--When executing 'whois $doi', the shell returned:<br><br>
'No whois server is known for this kind of object.'<br>
</div></p>
<p style='color: red; text-decoration: none; font-family: calibri'><small><<</small><input type='button' style='background:none; border:none; font-size:95%; color: red;' value='back | track' onClick='history.go(-1);'></p>
</body>
</html>
";
exit 0;
else true; 
fi;


if [[ "$dvcheck0" = "patterns"  ]]; then
echo "
<body>
<p><button onclick='copyClipboard1()'>Copy Result</button><br>
<div id='divClipboard1'>
<p><strong>Input</strong> : $doi - is a <a href='https://en.wikipedia.org/wiki/Top-level_domain' target='_blank' >TLD</a><br><br>
Not a valid/registered naked domain name <a href='https://en.wikipedia.org/wiki/Fully_qualified_domain_name' target='_blank'>(FQDN)</a>.<br>
And not a valid <a href='https://en.wikipedia.org/wiki/IPv4' target='_blank'>IPv4 Address</a>!<br><br><br>
--When executing 'whois $doi', the shell returned:<br><br>
'Pattern starts with improper character.'<br><br>
So if you are here to validate this TLD<br>
or want to get some info about it,<br>
do not start the input with a dot '.'
</div></p>
<p style='color: red; text-decoration: none; font-family: calibri'><small><<</small><input type='button' style='background:none; border:none; font-size:95%; color: red;' value='back | track' onClick='history.go(-1);'></p>
</body>
</html>
";
exit 0;
else true; 
fi;

#if 3
if [[ "$dvcheck0" = "%ianawh"  ]];then
echo "
<body>
<button onclick='copyClipboard1()'>Copy Result</button>
<br>
<div id='divClipboard1'>
<pre> $zyx0 </pre><br>
<hr><p style='color: red; text-decoration: none; font-family: calibri'><small><<</small><input type='button' style='background:none; border:none; font-size:95%; color: red;' value='back | track' onClick='history.go(-1);'></p>
</body>
</html>
"

#else 3
	else

#once the domain is verified - if will extract the TLD - to check if it is a FQDN
tld=$( echo $doi | rev | cut -d "." -f1 | rev );

#checks if the domain's TLD is on the list of TLDs
case $tld in
   $gcctldlist)

rws0=$(echo "$zyx" | grep -i -e "Using server" | sort -u );
grws=$(echo "$zyx" | grep -i -e "Registrar WHOIS Server" | sort -u);
rws1=$(echo "$grws" | cut -f2 -d":" | tr -d '\040\011\012\015' );

#registry
zyxregistry0=$(echo "$zyx" | sed -e '1,/Query string:/d')

zyxregistry=$( cutterfunc "$zyxregistry0" );

#registrarservervalidation
if [[ -z "$rws1" ]] || [[ "$rws1" = " " ]]; 
then 
rws="Not Found!"; 
zyxregistrar="Unable to fetch the whois infomartion from the Registrar!<br><br><strong>Input</strong>: $doi<br><br><br>Possible cause: <br>-Input is a <a href='https://en.wikipedia.org/wiki/Top-level_domain' target='_blank'>TLD</a> with a dot at the beginning, try removing the dot '.' before the TLD; Registrars are not directly involved with TLDs.<br>-Input is not a valid/registered naked domain name.<br>-Input is a sub domain, or something else.<br>-The scripts are not able to find a Registrar whois server in the whois information obtained from the Registry.<br>-The whois server of the Registrar does not respond to whois queries via port 43 (a web interface might be available).<br>-There is no such server from the Registrar.";

else 
rws="$rws1"; 
zyxregistrar=$(whois $doi -h $rws );
fi;

cat <<EOWIR0
<body >
<div ><p>

<!-- from https://www.w3schools.com/howto/howto_js_tabs.asp -->

<div class="tab">
  <button class="tablinks" onclick="whoisserver(event, 'Registry')" class=active >Registry</button>
  <button class="tablinks" onclick="whoisserver(event, 'Registrar')">Registrar</button>
</div>


<!-- Tab content -->
<div id="Registry" class="tabcontent" style=display:block >
	<table> <tbody> <td style="font-size: 87%; border: #9DC209;"><strong>Whois server:</strong> ${rws0#*server}
	</td> </tbody> </table><br>
	<button onclick="copyClipboard()">Copy Result</button><br>
	<table> <tbody> <td>
	<div id="divClipboard">
	<p><pre>$zyxregistry</pre></p>
	</td> </tbody> </table>
	</div>
</div>

<div id="Registrar" class="tabcontent" >
	<table> <tbody> <td style="font-size: 87%; border: #9DC209;"><strong>Whois server:</strong> $rws
	</td> </tbody> </table><br>
	<button onclick="copyClipboard0()">Copy Result</button><br>
	<table> <tbody> <td>
	<div id="divClipboard0">
	<p><pre>$zyxregistrar</pre></p>
	</td> </tbody> </table>
	</div>
</div>
<!-- from https://www.w3schools.com/howto/howto_js_tabs.asp -->
</p></div>
<p style='color: red; text-decoration: none; font-family: calibri'><small><<</small><input type='button' style='background:none; border:none; font-size:95%; color: red;' value='back | track' onClick='history.go(-1);'></p>
</body>
</html>
EOWIR0

;;

#special result for .ph ccTLD - by providing a link to whois.dot.ph with the domain submitted for query
ph)
#start of html body
echo '<body>'
cat <<EOQPH
<p><br><a href='https://whois.dot.ph/?utf8=%E2%9C%93&search=$doi' target="_blank"> Click Here </a>To get the whois info of this .ph domain.</p>
<p style='color: red; text-decoration: none; font-family: calibri'><small><<</small><input type='button' style='background:none; border:none; font-size:95%; color: red;' value='back | track' onClick='history.go(-1);'></p>
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
<a href='https://www.sgnic.sg/domain-search.html?SearchKey=$doi' target="_blank"> Click Here </a>To get the whois info of this .sg domain.
</p>
<p style='color: red; text-decoration: none; font-family: calibri'><small><<</small><input type='button' style='background:none; border:none; font-size:95%; color: red;' value='back | track' onClick='history.go(-1);'></p>
<p style='color: red; text-decoration: none; font-family: calibri'><small><<</small><input type='button' style='background:none; border:none; font-size:95%; color: red;' value='back | track' onClick='history.go(-1);'></p>
</body>
</html>
EOQSG
exit 0;
;;

vn)
#start of html body
echo '<body>'
cat <<EOQVN
<p>
<br>
<a href='https://vnnic.vn/en/whois-information?lang=en' target="_blank"> Click Here </a>To get the whois info of this .vn domain.
</p>
<p style='color: red; text-decoration: none; font-family: calibri'><small><<</small><input type='button' style='background:none; border:none; font-size:95%; color: red;' value='back | track' onClick='history.go(-1);'></p>
</body>
</html>
EOQVN
exit 0;
;;

mil)
#start of html body
echo '<body>'
cat <<EOQMIL
<p>
<strong>Input</strong>: $doi <br><br>
This TLD has no whois server.<br><br>
.mil domains are exclusively for the use of the <a href='https://en.wikipedia.org/wiki/United_States_Department_of_Defense' target='_blank' >United States Department of Defense</a>.<br><br>
The domain name mil is the sponsored top-level domain (sTLD) in the Domain Name System of the Internet for the United States Department of Defense and its subsidiary or affiliated organizations. More info <a href='https://en.wikipedia.org/wiki/.mil' target='_blank'>here.</a></p>
<p style='color: red; text-decoration: none; font-family: calibri'><small><<</small><input type='button' style='background:none; border:none; font-size:95%; color: red;' value='back | track' onClick='history.go(-1);'></p>
</body>
</html>
EOQMIL
exit 0;
;;

#throw an error for everything else
   *)

cat << EONAVDE

<button onclick="copyClipboard1()">BBC Copy</button>
<div id="divClipboard1">
<p>
Not a valid Input!.
</p>
</div>

EONAVDE
;;

esac

#fi3 fi2 fi1
		fi
	fi
fi

exit 0;

