#!/bin/bash
#This script was created by Zyx Rhythm (email:zyxrhythm@gmail.com)
#You can download, copy and use it as you see fit.
#If ever you need to post or show the code to people
#Though you are not required to, crediting the the a#!/bin/bash
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
qs=$(echo $QUERY_STRING | gawk '{print tolower($0)}' );

#removes "domain=" from the QUERY_STRING and store it in domain variable
domain=$(echo "$qs" | cut -f2 -d"=" );

#echo header
cat << EOHTMLHEADER
<!-- Site Description -->
<meta name='description' content='BigBlackCactus.com (BBC) is a website that can look up the whois information of a domain, dig DNS records of domains and sub domains from name servers, etc...'>
<meta name='keywords' content='DIG, DNS, WHOIS, SSL CHECK'>
<meta name='author' content='Zyx Rhythm'>
<!-- Auto Adjust -->
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src='https://www.googletagmanager.com/gtag/js?id=UA-32625644-1'></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'UA-32625644-1');
</script>
<script src='https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js'></script>
<script>
function copyv2(){
var element =  document.getElementById('chicbox');
if (typeof(element) != 'undefined' && element != null)
{
  var checkBox = document.getElementById('chicbox');
  if (checkBox.checked == true)
  { copyClipboard0(); } 
  else 
  { copyClipboard(); }
}
	else 
	{ copyClipboard(); }
}
</script>
<!-- 
The javascript that copies the contents of div to clipboard.
this is a snippet from http://edupala.com/copy-div-content-clipboard/
-->
<script>
function copyClipboard() {
  var elm = document.getElementById('divClipboard');
  // for Internet Explorer
  if(document.body.createTextRange) {
    var range = document.body.createTextRange();
    range.moveToElementText(elm);
    range.select();
    document.execCommand('Copy');
    alert('Copied div content to clipboard');
  }
  else if(window.getSelection) {
    // other browsers
    var selection = window.getSelection();
    var range = document.createRange();
    range.selectNodeContents(elm);
    selection.removeAllRanges();
    selection.addRange(range);
    document.execCommand('Copy');
  }
}
</script>
<script>
function copyClipboard0() {
  var elm = document.getElementById('divClipboardx');
  // for Internet Explorer
  if(document.body.createTextRange) {
    var range = document.body.createTextRange();
    range.moveToElementText(elm);
    range.select();
    document.execCommand('Copy');
    alert('Copied div content to clipboard');
  }
  else if(window.getSelection) {
    // other browsers
    var selection = window.getSelection();
    var range = document.createRange();
    range.selectNodeContents(elm);
    selection.removeAllRanges();
    selection.addRange(range);
    document.execCommand('Copy');
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
div a:link { color: tomato;  font-size: 100%; }
div a:active { color: tomato;  font-size: 100%; }
div a:hover { color: tomato;  font-size: 100%; }
div a:visited { color: tomato;  font-size: 100%; }
strong {color: green;}
p  { font-family: verdana; font-size: 90%; word-wrap: break-word;}
h1 { font-family: verdana; font-size: 70%;}
body { background-color:black; color:white;}
pre{ white-space: pre-wrap; font-size: 85%; font-family: verdana;}
table { font-family: verdana; border: 2px solid green; font-size: 90%;}
th { border: 2px solid green;}
td { vertical-align: top; text-align: left; border: 1px solid green;}
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
#domaintimes {color: green;}
#navlinkz { color:tomato; float:right;}
#chicboxtext { color: tomato; font-size:80%; font-family:verdana; }
#noselect {
    -webkit-touch-callout: none;
    -webkit-user-select: none;
    -khtml-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}
#fiftyshades { color: gray; }
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
<p><a href='/cgi-bin/bbc.sh' style='float:left'>[ &#127968;Home ]</a>
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
<form action='bbcx.sh' method='get'>
<input placeholder='Enter a Domain(FQDN)'  type='text' onblur='this.value=removeSpaces(this.value); this.value=removeSpecialCharacters(this.value);' onKeyDown='if(event.keyCode==13) this.value=removeSpaces(this.value); if(event.keyCode==13) this.value=removeSpecialCharacters(this.value);' onKeyUp='if(event.keyCode==13) this.value=removeSpecialCharacters(this.value);'name='domain'>
<button type='submit' >Go 2</button>
</form>
</td> </tbody> </table> </div></p>
<button onclick='copyv2();' >Copy Results</button><label class='tooltip'> &#128072; &nbsp; &nbsp;<span class='tooltiptext' > <br>Click the Copy button to copy the results, <br>then simply do a 'paste' on your text editor <br>or note taking app.<br><br>(expanded tables will be included <br>on the copied result)<br><br>(a checkbox will be on some pages<br> put a check on it to include <br>the footer info on the copied result)<br><br></span></label> 
&nbsp;
<a style='color:tomato; cursor: pointer; font-size: 116%; font-family:verdana;'  onClick='window.location.href=window.location.href'>&#8635;<span style='font-size: 77%;'>Refresh Results</span></a>
<hr>
</head>
EOHTMLHEADER

#checks - if the domain variable  entered is null  / the button is clicked without placing anything 
#1st if
if [[ -z "$domain" ]]; then
cat <<EOTSE
<body>
<div id="divClipboard"><p><br><strong>Current Input</strong> : none <br> <br>
Enter a valid/registered <strong>naked</strong> domain name <a href='https://en.wikipedia.org/wiki/Fully_qualified_domain_name' target='_blank'>(FQDN)</a>.<br><br><br>To get the domain's vital whois information, the script utilizes <a href='https://en.wikipedia.org/wiki/WHOIS#Software' target='_blank'>WHOIS</a> and does a 'whois lookup' query at the known whois server of the Registry for the <a href='https://en.wikipedia.org/wiki/Top-level_domain' target='_blank' >TLD</a> ( see the list of known servers <a href='/cgi-bin/whois.conf.sh' target='_blank'>here</a> ), and the script does the same query at the whois server of the Registrar ( if a server is found from the whois information provided by the Registry's whois server ).<br><br>Then <a href='https://en.wikipedia.org/wiki/Dig_(command)' target='_blank'>DIG</a> will query one of the valid  authoritative name servers under the domain for <a href='https://en.wikipedia.org/wiki/List_of_DNS_record_types#A' target='_blank'>A</a> and <a href='https://en.wikipedia.org/wiki/List_of_DNS_record_types#MX' target='_blank'>MX</a> records. If all name servers under the domain are invalid and cannot be queried, the script will fall back to Google's Public DNS server (8.8.8.8) for cached records. A records asssosciated with the naked domain are 'looked up', then A records  associated to the hostnames found on the MX records. <br><br>---IP addreses (A records) found by DIG will be queried by WHOIS at <a href='https://en.wikipedia.org/wiki/American_Registry_for_Internet_Numbers' target='_blank' >A.R.I.N.</a>'s whois servers/s to get the Organization responsible for the IP address. <br><br>(<a href='https://en.wikipedia.org/wiki/Nslookup' target='_blank'>NSLOOKUP</a> is also utilized to verify some hosts/servers.) <br><br>And after a few GAWK, GREP, SED and SHELL EXPANSIONS a report with vital whois and DNS info ( about the web and mail service under the domain )  is generated and is displayed by ECHO and/or CAT.</p></div>
<p style='color: red; text-decoration: none; font-family: calibri'><small><<</small><input type='button' style='background:none; border:none; font-size:95%; color: red;' value='back | track' onClick='history.go(-1);'></p>
</body>
</html>
EOTSE
exit 0;

#1st if else
else

#query whois about the domain and store the raw output to a variable
zyx0=$(whois --verbose $domain 2>&1);

#if [[ "$(test -h /usr/bin/whois && echo 'y' || echo 'n' )" = "y" ]] && [[ "$(test -h /usr/bin/jwhois && echo 'y' || echo 'n' )" = "n" ]];
#then 
#zyx=$(echo "$zyx0" | sed -e '1,/Query string:/d' | sed -n '1!p' );
#trywis=$(echo "$zyx0" | grep -i -e "Using server" | sort -u );
#else 
zyx=$(echo "$zyx0" | sed  '1,2d' );
trywis0=$(echo "$zyx0" | grep -F -i -e "[Querying" | sort -u | tr -d '\[\] ' );
trywis="${trywis0#*Querying}"
#fi;

nsxx=$(echo "$zyx" | grep -i -e 'Name server:' );

#==========================
# THE GREAT FUNCTION HALL
#=================
#Domain Status Functions functions that cycles through the status codes and create a link the status to what it means on eppstatus.sh
dsfunction () {
while IFS= read -r line
do
eppstat=$( echo "${line#*#}" | gawk '{print tolower($0)}');  

echo "<script> 
function js$eppstat() { var x = document.getElementById('jsf$eppstat'); 
if (x.style.display === 'none') { x.style.display = 'block'; } 
else { x.style.display = 'none'; } } 
function changeText$eppstat() {
var element = document.getElementById('dss$eppstat');
if (element.innerHTML === '-') {element.innerHTML = '+'; }
else { element.innerHTML = '-';} }
</script>
<br> <a id='dss$eppstat' class='button tooltip' style='color:tomato; cursor: pointer; font-weight: bold; font-size: 120%; -webkit-touch-callout: none; -webkit-user-select: none; -khtml-user-select: none; -moz-user-select: none; -ms-user-select: none; user-select: none;' onclick='js$eppstat(); changeText$eppstat();'>+<span class='tooltiptext' style='color: white; word-break:break-word; font-size: 70%; font-family: calibri; text-align: center; font-weight:normal;' ><br> Click this to know more about this domain status. It will spawn a table from ICANN about what the domain status is about, to close the table click this again. <br><br>
</span></a>
${line#*#}";

done < <(printf '%s\n' "$1");

echo '<br>--------------------------'

while IFS= read -r line
do
eppstat=$( echo "${line#*#}" | gawk '{print tolower($0)}');  

dsfparsedtable=$( cat ./eppstatuscodes.sh | gawk '/<!--tag'"$eppstat"'0-->/{flag=1;next}/<!--tag'"$eppstat"'1-->/{flag=0}flag' );

echo "<div id='jsf$eppstat' style='display:none'>
$dsfparsedtable--------------------------
</div>"
done < <(printf '%s\n' "$1");

}

#Name Servers Function
#cycles thorough the name server lines on the raw whois result and removes "name server" before the ":" and prints just the actual servers
nsfunction () {
if [[ -z $2 ]]; 
then
echo "<br><a href='https://securitytrails.com/domain/$domain/history/ns' target='_blank' style='font-size: 110%' class='tooltip'> <span id='noselect'>&#9960;</span> <span class='tooltiptext' ><br>Click to get the name server history from https://securitytrails.com<br><br></span></a> <strong>Name Servers:</strong><br>"

while IFS= read -r line
do
   echo  "<br/>   ${line#*:}";
done < <(printf '%s\n' "$1");

echo "<script> 
function jsnsverbose() { var x = document.getElementById('nsverbose'); 
if (x.style.display === 'none') { x.style.display = 'block'; } 
else { x.style.display = 'none'; } } 
function changeTextnsvt() {
var element = document.getElementById('nsvtable');
if (element.innerHTML === '-') {element.innerHTML = '+'; }
else { element.innerHTML = '-';} }
</script>
<a id='nsvtable' style='color:tomato; cursor: pointer; font-weight: bold; font-size: 120%; -webkit-touch-callout: none; -webkit-user-select: none; -khtml-user-select: none; -moz-user-select: none; -ms-user-select: none; user-select: none;' class='button tooltip' onclick='jsnsverbose(); changeTextnsvt();'>+<span class='tooltiptext' style='color: white; word-break:break-word; font-size: 70%; font-family: calibri; text-align: center; font-weight:normal;'><br>Click this to check the IP address/es associated with the current authoritative name servers and what organization is responsible for the IP address/es by querying ARIN's whois servers.<br><br></span></a>
<div id='nsverbose' style='display:none'> <table> <tbody> <td>
<p>--------------------------<br>"

while IFS= read -r line
do
   nsr1=$( echo "${line#*:}" | tr -d '\040\011\012\015' | gawk '{print tolower($0)}' );
   nsr2=$(dig a +short "$nsr1" @8.8.8.8 2>/dev/null );
   if [[ -z "$nsr2" ]]; then nsipc="null"; echo "<span id='fiftyshades' >${line#*:} <br></span>"; else echo "${line#*:} <br> "; fi;
if (( $(grep -c . <<<"$nsr2") > 1)); then
echo '<br>'
while IFS= read -r line
do
   nsa0=$(whois $line );
   nsa1=$( echo "$nsa0" | grep -i -e 'orgname' );
   if [[ -z "$nsa1" ]]; then nsa2=$( echo "$nsa0" | grep -i -e 'netname' ); else nsa2="$nsa1"; fi;
   nsax=$( echo "$nsa2" | sort -u );
   if [[ "$nsipc" = "null" ]]; then echo "<span id='fiftyshades' >Invalid Nameserver - Does not resolve to an IP address!</span>"; else echo "<br> &nbsp; &nbsp; $line --- <a href='/cgi-bin/bbcws.sh?doi=$line' target='_blank' style='color:tomato' class='tooltip'> <span id='noselect'>&#9654;</span> <span class='tooltiptext' ><br>Click to get the full raw whois information from ARIN.<br><br></span></a> ${nsax##*:}"; fi;
done < <(printf '%s\n' "$nsr2");

else
   echo "<br>"
   nsa20=$(whois "$nsr2" );
   nsa21=$( echo "$nsa20" | grep -i -e 'orgname' );
   if [[ -z "$nsa21" ]]; then nsa22=$( echo "$nsa20" | grep -i -e 'netname' ); else nsa22="$nsa21"; fi;
   nsax2=$( echo "$nsa22" | sort -u | head -1 );
   if [[ "$nsipc" = "null" ]]; then echo "<span id='fiftyshades' >Invalid Nameserver - Does not resolve to an IP address!</span>"; else echo "&nbsp; &nbsp;$nsr2 --- <a href='/cgi-bin/bbcws.sh?doi=$nsr2' target='_blank' style='color:tomato' class='tooltip'> <span id='noselect'>&#9654;</span> <span class='tooltiptext' ><br>Click to get the full raw whois information of this I.P. address from ARIN.<br><br></span></a> ${nsax2#*:}"; fi;

fi;
   echo '<br><br>'
done < <(printf '%s\n' "$1");
echo "--------------------------</p>
</td> </tbody> </table> </div>
<p>";

elif [[ $2 = "z" ]]; 
then
echo "<br><a href='https://securitytrails.com/domain/$domain/history/ns' target='_blank' style='font-size: 110%' class='tooltip'> <span id='noselect'>&#9960;</span> <span class='tooltiptext' ><br>Click to get the name server history from https://securitytrails.com<br><br></span></a> <strong>Name Servers:</strong><br>"
while IFS= read -r linez
do
   echo -e "${linez#*:} $3";
done < <(printf '%s\n' "$1");


elif [[ $2 = "x" ]]; 
then
echo '<br>'
while IFS= read -r linez
do
   echo -e "${linez#*:} $3";
done < <(printf '%s\n' "$1");

else echo "Nothing here.";
fi;
}

#A Record Function
#cycles through the A record/s and will get the company/individual that is liable for the IP address
arfunction () {
if [[ -z $2 ]]; then 
arff="$1";

elif [[ $2 = "x" ]]; then
artqns=$( echo "$1" | gawk '{print tolower($0)}' );
arff=$(dig a +short $domain @$artqns ); 

else 
arff=$(dig a +short $domain);
artqns="91.239.100.100";
arff=$(dig a +short $domain @$artqns ); 
fi;

if (( $(grep -c . <<<"$arff") > 1)); then artvar="A Records:" ; else artvar="A Record:" ; fi;

echo "<a href='https://securitytrails.com/domain/$domain/history/a' target='_blank' style='font-size: 110%' class='tooltip'> <span id='noselect'>&#9960;</span> <span class='tooltiptext' ><br>Click to get the A record history from https://securitytrails.com<br><br></span></a> <strong>$artvar </strong><br>"

if [[ -z "$arff" ]]; then echo "<br><span id='fiftyshades' >No A record found!</span> <br>"; 

else

while IFS= read -r line
do
   ar0=$(whois $line );
   ar1=$( echo "$ar0" | grep -i -e 'orgname' );
   if [[ -z "$ar1" ]]; then ar2=$( echo "$ar0" | grep -i -e 'netname' ); else ar2="$ar1"; fi;
   arx=$( echo "$ar2" | sort -u | head -1 );
echo "<br>   $line --- <a href='/cgi-bin/bbcws.sh?doi=$line' class='tooltip' target='_blank' style='color:tomato' class='tooltip'> <span id='noselect'>&#9654;</span> 
<span class='tooltiptext' >
<br>Click this to get the full raw whois information of this I.P. address from ARIN's whois server/s.<br><br>
</span></a> ${arx#*:}";
done < <(printf '%s\n' "$arff");

fi;
}

#MX Record/s Function
#cycles through the A record/s under the MX record/s and will get the company/individual that is liable for the IP address
mrfunction () {
if [[ -z $2 ]]; then
mxrff="$1";

elif [[ $2 = "x" ]]; then 
mxrtqns=$( echo "$1" | gawk '{print tolower($0)}' );
mxrff=$(dig mx +short $domain @$mxrtqns | sort -n );

else 
mxrtqns="91.239.100.100";
mxrff=$(dig mx +short $domain @$mxrtqns | sort -n ); 
fi;

if (( $(grep -c . <<<"$mxrff") > 1)); then mxtvar="MX Records:" ; else mxtvar="MX Record:" ; fi;
echo "<a href='https://securitytrails.com/domain/$domain/history/mx' target='_blank' style='font-size: 110%'class='tooltip'> <span id='noselect'>&#9960;</span> <span class='tooltiptext' ><br>Click to get the MX record history from https://securitytrails.com<br><br></span></a> <strong> $mxtvar </strong> <br> <br>"

if [[ -z "$mxrff" ]]; then echo "<span id='fiftyshades' >No MX record found!</span> <br>"; 

else

while IFS= read -r line
do
   mxr1=$(echo  $line | cut -f2 -d" ");
   mxr1a=$(echo $line | cut -f1 -d" ");
   mxr2=$(dig a +short "$mxr1" @8.8.8.8 2>/dev/null);
   if [[ -z "$mxr2" ]]; then mxipc="null"; echo "<strong class='tooltip'><label>$mxr1a </label><span class='tooltiptext' ><br>MX priority: $mxr1a <br><br></span></strong> &nbsp;<span id='fiftyshades' >$mxr1</span> <br>"; else echo "<strong class='tooltip'><label>$mxr1a </label><span class='tooltiptext' ><br>MX priority: $mxr1a <br><br></span></strong> &nbsp;$mxr1 <br>"; fi;
echo '<br>'
if (( $(grep -c . <<<"$mxr2") > 1)); then
while IFS= read -r line
do
   mxa0=$(whois $line );
   mxa1=$( echo "$mxa0" | grep -i -e 'orgname' );
   if [[ -z "$mxa1" ]]; then mxa2=$( echo "$mxa0" | grep -i -e 'netname' ); else mxa2="$mxa1"; fi;
   mxax=$( echo "$mxa2" | sort -u | head -1 );
   if [[ "$mxipc" = "null" ]]; then echo "<span id='fiftyshades' >Invalid MX Redord - Does not Resolve to an IP address!</span>"; else echo "&nbsp; &nbsp; $line --- <a href='/cgi-bin/bbcws.sh?doi=$line' target='_blank' style='color:tomato' class='tooltip' > <span id='noselect'>&#9654;</span> <span class='tooltiptext' ><br>Click this to get the full raw whois information of this I.P. address from ARIN's whois server/s.<br><br></span></a> ${mxax#*:} <br>"; fi;
   
done < <(printf '%s\n' "$mxr2");

else

   mxa20=$(whois "$mxr2" );
   mxa21=$( echo "$mxa20" | grep -i -e 'orgname' );
   if [[ -z "$mxa21" ]]; then mxa22=$( echo "$mxa20" | grep -i -e 'netname' ); else mxa22="$mxa21"; fi;
   mxax2=$( echo "$mxa22" | sort -u | head -1 );
   if [[ -z "$mxr2" ]]; then true; else 
   if [[ "$mxipc" = "null" ]]; then echo "<span id='fiftyshades' >Invalid MX Redord - Does not Resolve to an IP address!</span>"; else echo "&nbsp; &nbsp;$mxr2 --- <a href='/cgi-bin/bbcws.sh?doi=$mxr2' target='_blank' style='color:tomato' class='tooltip' > <span id='noselect'>&#9654;</span> <span class='tooltiptext' ><br>Click this to get the full raw whois information of this I.P. address from ARIN's whois server/s.<br><br></span></a> ${mxax2#*:} <br>"; fi;
   fi;
fi;
   echo '<br>'
done < <(printf '%s\n' "$mxrff");
fi;
}

##DaysCalcFunction
countdfunc () {

extdate=$(echo "$1" | grep -o -P '(?<=Date:).*(?=T)' | tr -d '\040\011\012\015' );
daysleft=$( echo $((($(date +%s --date "$extdate")-$(date +%s))/(3600*24))) );
echo "$daysleft";
}
#=====================
# END OF FUNCTION HALL
#=====================

#domain validity check -if  by checking the first 9 characters on the raw whois result
dvc=$(echo "${zyx:0:9}" |  gawk '{print tolower($0)}' | tr -d '\040\011\012\015');

#the 2nd if
if [[ "$dvc" = "domainno" ]] || [[ "$dvc" = "nomatch" ]] || [[ "$dvc" = "notfound" ]] || [[ "$dvc" = "nodataf" ]] || [[ "$dvc" = "nowhois" ]] || [[ "$dvc" = "thisdoma" ]] || [[ "$dvc" = "nom" ]] || [[ "$dvc" = "invalidq" ]] || [[ "$dvc" = "whoisloo" ]] || [[ "$dvc" = "theregis" ]] || [[ "$dvc" = "connect" ]] || [[ "$dvc" = "available" ]] || [[ "$dvc" = ">>>domai" ]] || [[ "$dvc" = "connect:" ]] || [[ "$dvc" = "errorth" ]] || [[ "$dvc" = "noinform" ]] || [[ "$dvc" = "thequeri" ]];

then

domhv=$( echo "$(nslookup "$domain")" | grep -e 'NXDOMAIN'  );
	if [[ $( echo "${domain#*.}" | grep -o "\." | wc -l) -gt "0" ]] && [[ -z "$domhv" ]]; 
	then domvarx="- ( A sub domain )"; 
	else domvarx="<br>( Not a  valid domain / sub domain but rather something else. )"; 
	fi;
echo "
<body><div id='divClipboard'><p><strong>Input</strong> : $domain $domvarx <br><strong>Whois server queried:</strong> $trywis <br><br>No whois information found!<br><br>Possible causes: <br>-Input is not valid:<br> 1.The domain is not registered or no longer registered.<br> 2.Not a valid naked domain name (FQDN).<br>-The whois server for this domain name does not respond to whois queries via port 43 (a web/other interface might be available). <br>-There is no such service provided by the Registry.<br><br><br>Please input a valid/registered naked domain name <a href='https://en.wikipedia.org/wiki/Fully_qualified_domain_name' target='_blank'>(FQDN)</a>.<br><br><br><br>Additional info from Who You <a href='/cgi-bin/bbcws.sh?domain=$domain' target='_blank' >here.</a>
</p></div>
<p style='color: red; text-decoration: none; font-family: calibri'><small><<</small><input type='button' style='background:none; border:none; font-size:95%; color: red;' value='back | track' onClick='history.go(-1);'></p>
</body>
</html>
";

exit 0;

#2nd if elif
elif [[ "$dvc" = "%ianawh" ]]; 
then 
echo "
<body><div id='divClipboard'><p><strong>Input</strong> : $domain - is a TLD
<br><br><pre>$zyx<pre></p></div>
<p style='color: red; text-decoration: none; font-family: calibri'><small><<</small><input type='button' style='background:none; border:none; font-size:95%; color: red;' value='back | track' onClick='history.go(-1);'></p>
</body>
</html>
";

exit 0;

elif [[ "$dvc" = "patterns" ]]; 
then
echo "
<body><div id='divClipboard'><p><strong>Input</strong> : $domain - is a TLD
<br><br><pre>But if you do a 'whois $domain' <br>on a Linux terminal you will get:<br><br>'$zyx'<br><br>So if you are here to validate this TLD <br>or want to get some info about it,<br>do not start the input with a dot '.'
<p style='color: red; text-decoration: none; font-family: calibri'><small><<</small><input type='button' style='background:none; border:none; font-size:95%; color: red;' value='back | track' onClick='history.go(-1);'></p>
</body>
</html>
";
exit 0;

#2nd if else
else

#once the domain is validated the TLD is extracted
tld=$( echo $domain | rev | cut -d "." -f1 | rev );

if [[ $tld = "shop" ]]; then zyx=$(whois -h whois.nic.shop $domain 2>&1 ); else true; fi;

#extracts then queries the whois server of the registar then prints the result with string manipulations
whoisservergrep=$(echo "$zyx" | grep -i -e "Registrar WHOIS Server:" | sort -u );
if [[ -z "$whoisservergrep" ]]; then true;
else
whoisserver=$(echo "$whoisservergrep" | cut -f2 -d":" | tr -d '\040\011\012\015' );
zyx2=$( whois "$domain" -h "$whoisserver" 2>&1 );
fi;

#REESE
rese=$(echo "$zyx2" | grep -i -e "reseller");
reseller="${rese#*:}";
if [[ -z "$reseller" ]] || [[ "$reseller" = " " ]]; 
then reese="None";
else reese="$reseller"; fi;
#REESE

#list of supported TLDs
shopt -s extglob
tldlist0='+(aarp|abarth|abb|abbott|abbvie|abc|able|abogado|abudhabi|academy|accenture|accountant|accountants|aco|active|actor|adac|ads|adult|aeg|aero|aetna|afamilycompany|afl|africa|agakhan|agency|aig|aigo|airbus|airforce|airtel|akdn|alfaromeo|alibaba|alipay|allfinanz|allstate|ally|alsace|alstom|americanexpress|americanfamily|amex|amfam|amica|amsterdam|analytics|android|anquan|anz|aol|apartments|app|apple|aquarelle|arab|aramco|archi|army|arpa|art|arte|asda|asia|associates|athleta|attorney|auction|audi|audible|audio|auspost|author|auto|autos|avianca|aws|axa|azure|baby|baidu|banamex|bananarepublic|band|bank|bar|barcelona|barclaycard|barclays|barefoot|bargains|baseball|basketball|bauhaus|bayern|bbc|bbt|bbva|bcg|bcn|beats|beauty|beer|bentley|berlin|best|bestbuy|bet|bharti|bible|bid|bike|bing|bingo|bio|biz|black|blackfriday|blanco|blockbuster|blog|bloomberg|blue|bms|bmw|bnl|bnpparibas|boats|boehringer|bofa|bom|bond|boo|book|booking|bosch|bostik|boston|bot|boutique|box|bradesco|bridgestone|broadway|broker|brother|brussels|budapest|bugatti|build|builders|business|buy|buzz|bzh|cab|cafe|cal|call|calvinklein|cam|camera|camp|cancerresearch|canon|capetown|capital|capitalone|car|caravan|cards|care|career|careers|cars|cartier|casa|case|caseih|cash|casino|cat|catering|catholic|cba|cbn|cbre|cbs|ceb|center|ceo|cern|cfa|cfd|chanel|channel|charity|chase|chat|cheap|chintai|christmas|chrome|chrysler|church|cipriani|circle|cisco|citadel|citi|citic|city|cityeats|claims|cleaning|click|clinic|clinique|clothing|cloud|club|clubmed|cocoach|codes|coffee|college|cologne|com|comcast|commbank|community|company|compare|computer|comsec|condos|construction|consulting|contact|contractors|cooking|cookingchannel|cool|coop|corsica|country|coupon|coupons|courses|credit|creditcard|creditunion|cricket|crown|crs|cruise|cruises|csc|cuisinella|cymru|cyou|dabur|dad|dance|data|date|dating|datsun|day|dclk|dds|deal|dealer|deals|degree|delivery|dell|deloitte|delta|democrat|dental|dentist|desi|design|dev|dhl|diamonds|diet|digital|direct|directory|discount|discover|dish|diy|dnp|docs|doctor|dodge|dog|doha|domains|dot|download|drive|dtv|dubai|duck|dunlop|duns|dupont|durban|dvag|dvr|earth|eat|eco|edeka|education|email|emerck|energy|engineer|engineering|enterprises|epost|epson|equipment|ericsson|erni|esq|estate|esurance|etisalat|eurovision|eus|events|everbank|exchange|expert|exposed|express|extraspace|fage|fail|fairwinds|faith|family|fan|fans|farm|farmers|fashion|fast|fedex|feedback|ferrari|ferrero|fiat|fidelity|fido|film|final|finance|financial|fire|firestone|firmdale|fish|fishing|fit|fitness|flickr|flights|flir|florist|flowers|fly|foo|food|foodnetwork|football|ford|forex|forsale|forum|foundation|fox|free|fresenius|frl|frogans|frontdoor|frontier|ftr|fujitsu|fujixerox|fun|fund|furniture|futbol|fyi|gal|gallery|gallo|gallup|game|games|gap|garden|gbiz|gdn|gea|gent|genting|george|ggee|gift|gifts|gives|giving|glade|glass|gle|global|globo|gmail|gmbh|gmo|gmx|godaddy|gold|goldpoint|golf|goo|goodyear|goog|google|gop|got|grainger|graphics|gratis|green|gripe|grocery|group|guardian|gucci|guge|guide|guitars|guru|hair|hamburg|hangout|haus|hbo|hdfc|hdfcbank|health|healthcare|help|helsinki|here|hermes|hgtv|hiphop|hisamitsu|hitachi|hiv|hkt|hockey|holdings|holiday|homedepot|homegoods|homes|homesense|honda|honeywell|horse|hospital|host|hosting|hot|hoteles|hotels|hotmail|house|how|hsbc|hughes|hyatt|hyundai|ibm|icbc|ice|icu|ieee|ifm|ikano|imamat|imdb|immo|immobilien|in|inc|industries|infiniti|info|ing|ink|institute|insurance|insure|int|intel|international|intuit|investments|ipiranga|irish|iselect|ismaili|ist|istanbul|itau|itv|iveco|jaguar|java|jcb|jcp|jeep|jetzt|jewelry|jio|jll|jmp|jnj|jo|jobs|joburg|jot|joy|jpmorgan|jprs|juegos|juniper|kaufen|kddi|ke|kerryhotels|kerrylogistics|kerryproperties|kfh|kia|kim|kinder|kindle|kitchen|kiwi|koeln|komatsu|kosher|kpmg|kpn|krd|kred|kuokgroup|kyoto|lacaixa|ladbrokes|lamborghini|lamer|lancaster|lancia|lancome|land|landrover|lanxess|lasalle|lat|latino|latrobe|law|lawyer|lds|lease|leclerc|lefrak|legal|lego|lexus|lgbt|liaison|lidl|life|lifeinsurance|lifestyle|lighting|like|lilly|limited|limo|lincoln|linde|link|lipsy|live|living|lixil|llc|loan|loans|locker|locus|loft|lol|london|lotte|lotto|love|lpl|lplfinancial|ltd|ltda|lundbeck|lupin|luxe|luxury|macys|madrid|maif|maison|makeup|man|management|mango|map|market|marketing|markets|marriott|marshalls|maserati|mattel|mba|mckinsey|med|media|meet|melbourne|meme|memorial|men|menu|merckmsd|metlife|miami|microsoft|mini|mint|mit|mitsubishi|mlb|mls|mma|mobi|mobile|mobily|moda|moe|moi|mom|monash|money|monster|mopar|mormon|mortgage|moscow|moto|motorcycles|mov|movie|movistar|msd|mtn|mtr|museum|mutual|nab|nadex|nagoya|name|nationwide|natura|navy|nba|nec|net|netbank|network|neustar|new|newholland|news|next|nextdirect|nexus|nfl|ngo|nhk|nico|nike|nikon|ninja|nissan|nissay|nokia|northwesternmutual|now|nowruz|nowtv|nra|nrw|ntt|nyc|obi|observer|off|office|okinawa|olayan|olayangroup|oldnavy|ollo|omega|one|ong|onl|online|onyourside|ooo|open|oracle|orange|org|organic|origins|osaka|otsuka|ott|ovh|page|panasonic|paris|pars|partners|parts|party|passagens|pay|pccw|pet|pfizer|pharmacy|phd|philips|phone|photo|photography|photos|physio|piaget|pics|pictet|pictures|pid|pin|ping|pink|pioneer|pizza|place|play|playstation|plumbing|plus|pnc|pohl|poker|politie|porn|post|pramerica|praxi|press|prime|pro|prod|productions|prof|progressive|promo|properties|property|protection|pru|prudential|pub|pwc|qpon|quebec|quest|qvc|racing|radio|raid|read|realestate|realtor|realty|recipes|red|redstone|redumbrella|rehab|reise|reisen|reit|reliance|ren|rent|rentals|repair|report|republican|rest|restaurant|review|reviews|rexroth|rich|richardli|ricoh|rightathome|ril|rio|rip|rmit|rocher|rocks|rodeo|rogers|room|rsvp|rugby|ruhr|run|rwe|ryukyu|saarland|safe|safety|sakura|sale|salon|samsclub|samsung|sandvik|sandvikcoromant|sanofi|sap|sarl|sas|save|saxo|sbi|sbs|sca|scb|schaeffler|schmidt|scholarships|school|schule|schwarz|science|scjohnson|scor|scot|search|seat|secure|security|seek|select|sener|services|ses|seven|sew|sex|sexy|sfr|shangrila|sharp|shaw|shell|shia|shiksha|shoes|shop|shopping|shouji|show|showtime|shriram|silk|sina|singles|site|ski|skin|sky|skype|sling|smart|smile|sncf|soccer|social|softbank|software|sohu|solar|solutions|song|sony|soy|space|spiegel|sport|spot|spreadbetting|srl|srt|stada|staples|star|starhub|statebank|statefarm|stc|stcgroup|stockholm|storage|store|stream|studio|study|style|sucks|supplies|supply|support|surf|surgery|suzuki|swatch|swiftcover|swiss|sydney|symantec|systems|tab|taipei|talk|taobao|target|tatamotors|tatar|tattoo|tax|taxi|tci|tdk|team|tech|technology|tel|telefonica|temasek|tennis|teva|thd|theater|theatre|tiaa|tickets|tienda|tiffany|tips|tires|tirol|tjmaxx|tjx|tkmaxx|tmall|today|tokyo|tools|top|toray|toshiba|total|tours|town|toyota|toys|trade|trading|training|travel|travelchannel|travelers|travelersinsurance|trust|trv|tube|tui|tunes|tushu|tvs|ubank|ubs|uconnect|unicom|university|uno|uol|ups|vacations|vana|vanguard|vegas|ventures|verisign|versicherung|vet|viajes|video|vig|viking|villas|vin|vip|virgin|visa|vision|vistaprint|viva|vivo|vlaanderen|vodka|volkswagen|volvo|vote|voting|voto|voyage|vuelos|wales|walmart|walter|wang|wanggou|warman|watch|watches|weather|weatherchannel|webcam|weber|website|wed|wedding|weibo|weir|whoswho|wien|wiki|williamhill|win|windows|wine|winners|wme|wolterskluwer|woodside|work|works|world|wow|wtc|wtf|xbox|xerox|xfinity|xihuan|xin|xyz|yachts|yamaxun|yodobashi|yoga|yokohama|you|youtube|yun|zappos|zara|zero|zip|zippo|zone|zuerich|ca|us|co|cc|me|ac|tv)'

#list of supported ccTLDs
tldlist1='+(ad|ae|af|ag|ai|al|am|ao|aq|ar|as|at|aw|ax|az|ba|bb|bd|be|bf|bg|bh|bi|bj|bm|bn|bo|br|bs|bt|bw|by|bz|cd|cf|cg|ch|ci|ck|cl|cm|cn|cr|cu|cv|cw|cx|cy|cz|de|dj|dk|dm|do|dz|ec|ee|eg|er|es|et|fi|fj|fk|fm|fo|fr|ga|gd|ge|gf|gg|gh|gi|gl|gm|gn|gp|gq|gr|gs|gt|gu|gw|gy|hk|hm|hn|hr|ht|hu|id|ie|il|im|in|io|iq|ir|is|it|je|jm|jo|ke|kg|kh|ki|km|kn|kp|kr|kw|ky|kz|la|lb|lc|li|lk|lr|ls|lt|lu|lv|ly|ma|mc|md|mg|mh|mk|ml|mm|mn|mo|mp|mq|mr|ms|mt|mu|mv|mw|mx|my|mz|na|nc|ne|nf|ng|ni|nl|no|np|nr|nu|om|pa|pe|pf|pg|pk|pl|pm|pn|pr|ps|pt|pw|py|qa|re|ro|rs|ru|rw|sa|sb|sc|sd|se|sh|si|sk|sl|sm|sn|so|sr|ss|st|sv|sx|sy|sz|tc|td|tf|tg|th|tj|tk|tl|tm|tn|to|tr|tt|tw|tz|ua|ug|uy|uz|va|vc|ve|vg|vi|vu|wf|ws|ye|yt|za|zm|zw)'

#checks if the TLD is a gtld if it is the script will start to butcher the raw result and get the juicy details
case $tld in
   $tldlist0)

############
### CORE ###
###########
#stores the registrar name on a variable
registrar=$(echo "$zyx" | grep -i -e "registrar:" | sort -u );

#stores the func processed domain status on a variable
dsfrgt=$( dsfunction "$(echo "$zyx" | grep -i -e "status:" )" );

#stores the domain's creation date
creationdate0=$(echo "$zyx" | grep -i -e "creation date:");
creationdate1=$( echo "${creationdate0#*:}"| sed 's/T/\<span id="domaintimes" > Time: <\/span>/g' );
dayssince0=$( countdfunc "$creationdate0" );
 
#stores the domain's expiration date from the registry
expdx0=$(echo "$zyx" | grep -i -e "registry expiry date:");
expdx1=$( echo "${expdx0#*:}" | sed 's/T/\<span id="domaintimes"> Time: <\/span>/g' );
dayslefttry0=$( countdfunc "$expdx0" );

#stores the domain's expiration date from the registrar
if [[ -z "$whoisserver" ]] || [[ "$whoisserver" = " " ]]; 
then 
expd1="<span id='fiftyshades' >Expiry Date Not Found. Consult the Registrar.</span>" 
daysleftrar0="<span id='fiftyshades' >Counter Error: Whois server Not Found!</span>";
else 
expd0=$(echo "$zyx2" | grep -i -e "registrar registration expiration date:");
if [[ -z "$expd0" ]] || [[ "$expd0" = " " ]]; 
then
expd1="<span id='fiftyshades' >Expiry Date Not Found. Consult the Registrar.</span>" 
daysleftrar0="<span id='fiftyshades' >Counter Error: Date Not Found!</span>";
else
expd1=$( echo "${expd0#*:}" |sed 's/T/\<span style="color:#145a32;"> Time: <\/span>/g' | sed 's/ation/\y/g' ); 
daysleftrar0=$( countdfunc "$expd0" ); fi;
fi;

#COUNTER VAR CONDITIONALS
if [[ "$dayssince0" = "0" ]]; 
then 
dayssincevar="Domain was registered"; 
dayssince="today!";
else 
dayssincevar="Days counted since creation"; 
dayssince="${dayssince0#*-}";
fi;

if [[ "${dayslefttry0:0:1}" = "-" ]]; 
then 
dltryvar="<span id='fiftyshades' >Days Expired (Registry)</span>";
dayslefttry=${dayslefttry0#*-};
else 
dltryvar="Days Left (Registry)"; 
dayslefttry="$dayslefttry0";
fi;

if [[ "${daysleftrar0:0:1}" = "-" ]]; 
then 
dlrarvar="<span id='fiftyshades' >Days Expired (Registrar)</span>"; 
daysleftrar=${daysleftrar0#*-};
else 
dlrarvar="Days Left (Registrar)"; 
daysleftrar="$daysleftrar0";
fi;
#COUNTER VAR CONDITIONALS

#COUNTER NOTE ABOUT SERV TIME AND ZONE
timez="--------------------------<br><span style='font-size:75%;color: grey;'>The number of days below are calculated <br>based on the server's time and time zone<br>($(date)).</span>";
#COUNTER NOTE ABOUT SERV TIME AND ZONE

cat << EODNARGT0
<body><input type='checkbox' id='chicbox'><span id='chicboxtext'>Include the footer info.</span><div id="divClipboardx">
<div id="divClipboard"><p>__________________________<br><br>
<strong>Domain Name: </strong>$domain<br>
<strong>Registrar: </strong>${registrar#*:}<br>
<strong>Reseller: </strong>$reese<br>
__________________________<br><br>
<a href='/cgi-bin/eppstatuscodes.sh' target='_blank' > <strong>Domain Status: </strong></a><br>
$dsfrgt
<!-- ILLUSIONIST -->
<p>
<!-- ILLUSIONIST -->
<strong>Creation Date: </strong>$creationdate1 <br>
<strong>Registry Expiry Date: </strong> $expdx1 <br>
<strong><span style="color:#145a32;">Registrar Expiry Date:</span> </strong> $expd1
<!-- COUNTER DISPLAY-->
<script> 
function jstimeverbose() { var x = document.getElementById('timeverbose'); 
if (x.style.display === 'none') { x.style.display = 'block'; } 
else { x.style.display = 'none'; } } 
function changeTextdatestab() {
var element = document.getElementById('datestab');
if (element.innerHTML === '-') {element.innerHTML = '+'; }
else { element.innerHTML = '-';} }
</script>
<a id='datestab' style='color:tomato; cursor: pointer; font-weight: bold; font-size: 120%; -webkit-touch-callout: none; -webkit-user-select: none; -khtml-user-select: none; -moz-user-select: none; -ms-user-select: none; user-select: none;' class='button tooltip' onclick='jstimeverbose(); changeTextdatestab(); '>+<span class='tooltiptext' style='color: white; word-break:break-word; font-size: 70%; font-family: calibri; text-align: center; font-weight:normal;'><br>Click this to spawn a table with 'days left' before the domain expires and 'days counted' since it was created<br><br></span></a>
<div id='timeverbose' style='display:none'> <table> <tbody> <td>
<p>$timez<br><br>
<strong>$dayssincevar</strong> : $dayssince <br>
<strong>$dltryvar</strong> : $dayslefttry <br>
<strong>$dlrarvar</strong>: $daysleftrar <br>
--------------------------
</p></td> </tbody> </table> </div><p>
<!--COUNTER DISPLAY-->
__________________________<br> 
EODNARGT0

#####nscheck to suposedly prevent the endless spin of death
nscheckfunc () {
while IFS= read -r linec
do 
	dqns=$( echo "${linec#*:}" | tr -d '\040\011\012\015' );
	if [[ -z "$( dig a +short $dqns @8.8.8.8 )" ]]; then nsxcr="y"; else nsxcr="x"; fi;
	echo "$nsxcr";
done < <(printf '%s\n' "$1"); }

#######################################
#auth ns to query for records:
#######################################
nstqfunc () {
xnsxx=$( nsfunction "$1" "x" );

while IFS= read -r xline
do
xcount=$(( $xcount + 1 ));
nssfa=$( echo ${xline#*:} | tr -d '\040\011\012\015' );
arayko[$xcount]="$nssfa";
linecheck=$( dig a +short "${arayko[$xcount]}" @8.8.8.8 );
if [[ -z "$linecheck" ]] && [[ -z "${arayko[$(( $xcount - 1 ))]}" ]]; then xqns="8.8.8.8";
elif [[ -z "$linecheck" ]]; then xqns="${arayko[$(( $xcount - 1 ))]}"; 
else xqns="${arayko[$xcount]}"; fi;
done < <(printf '%s\n' "$xnsxx"); 

echo "$xqns"; 
}
#######################################

nstoquery=$( nstqfunc "$nsxx");

nscheck=$( nscheckfunc "$nsxx" | gawk '!seen[$0]++' | tr -d '\040\011\012\015' );

if [[ "$nscheck" = "y" ]]; then 
ns0frgt=$( nsfunction "$nsxx" "z" "<br>");
#func processed A and MX records
arfrgt=$( arfunction "$(dig +short $domain @8.8.8.8 2>&1 )" );
arecho="<span id='fiftyshades' >Authoritative Name servers invalid. <br>The following are from 8.8.8.8:<br>$arfrgt</span>";
mrfrgt=$( mrfunction "$(dig mx +short $domain @8.8.8.8 | sort -n 2>&1 )" );
mxrecho="<span id='fiftyshades' >Authoritative Name servers invalid. <br>The following are from 8.8.8.8:<br>$mrfrgt</span>";
echo "
$ns0frgt <br>
__________________________<br> <br>
$arecho <br>
__________________________<br> <br>
$mxrecho
__________________________
";

elif [[ "$nscheck" = "yx" ]]; then 
ns0frgt=$( nsfunction "$nsxx" "z" "<br>");
#func processed A and MX records
arfrgt=$( arfunction "$(dig +short $domain @8.8.8.8 2>&1 )" );
arecho="<span id='fiftyshades' >Critical issue found on 1 or more authoritative name server. <br>Queried 8.8.8.8 instead.<br>$arfrgt</span>";
mrfrgt=$( mrfunction "$(dig mx +short $domain @8.8.8.8 | sort -n 2>&1 )" );
mxrecho="<span id='fiftyshades' >Critical issue found on 1 or more authoritative name server. <br>Queried 8.8.8.8 instead.<br>$mrfrgt</span>";
echo "
$ns0frgt 
__________________________<br> <br>
$arecho<br>
__________________________<br> <br>
$mxrecho
__________________________
";


elif [[ "$nscheck" = "x" ]] || [[ "$nscheck" = "xy" ]]; then 

nsfrgt=$( nsfunction "$nsxx" "" "<br>" );
#func processed A and MX records
#arfrgt=$( arfunction "$(dig +short $domain @8.8.8.8 2>&1 )" );
#mrfrgt=$( mrfunction "$(dig mx +short $domain @8.8.8.8 | sort -n 2>&1 )" );
arfrgt=$( arfunction "$nstoquery" "x" );
mrfrgt=$( mrfunction "$nstoquery" "x" );

echo "
$nsfrgt 
__________________________<br> <br>
$arfrgt<br>
__________________________<br> <br>
$mrfrgt
__________________________
";
else echo "<br><br><br>Seriously?!? you ended up here?... wow!<br><br><br>";
fi;
;;
############
### CORE ###
###########

edu)

zyx=$(whois $domain);
arfredu=$( arfunction "$(dig +short $domain @8.8.8.8 )" );
mrfredu=$( mrfunction "$(dig mx +short $domain @8.8.8.8 | sort -n )" );

cat << EDUSECTION
<body>
<p><div id="divClipboard">
<pre>${zyx#*-------------------------------------------------------------}</pre>
__________________________
<p>
$arfredu <br>
__________________________<br> <br>
$mrfredu
__________________________<br>
</p></div>
<pre>${zyx%-------------------------------------------------------------*}</pre>
</body>
<footer>
<hr>
<p style='color: red; text-decoration: none; font-family: calibri'><small><<</small><input type='button' style='background:none; border:none; font-size:95%; color: red;' value='back | track' onClick='history.go(-1);'></p>
</footer>
</html>
EDUSECTION
exit 0;
;;

gov)

zyx=$(whois $domain);
ar=$(dig +short $domain @8.8.8.8);
arfrgov=$( arfunction "$ar" );
mxr=$(dig mx +short $domain @8.8.8.8 | sort -n );
mrfrgov=$( mrfunction "$mxr");

zyx0=$(echo "$zyx" | gawk '/DOTGOV WHOIS Server ready/{flag=1;next}/>>>/{flag=0}flag' );

cat << GOVSECTION
<body>
<p>
<div id="divClipboard">
<pre>$zyx0</pre>
__________________________
<p>
$arfrgov<br>
__________________________<br><br>
$mrfrgov
__________________________<br>
</p>
</div>
</body>
<footer>
<hr>
<p style='color: red; text-decoration: none; font-family: calibri'><small><<</small><input type='button' style='background:none; border:none; font-size:95%; color: red;' value='back | track' onClick='history.go(-1);'></p>
</footer>
</html>
GOVSECTION
exit 0;
;;

mil)
arfrmil=$( arfunction "$(dig +short $domain @8.8.8.8 )" );
mrfrmil=$( mrfunction "$(dig mx +short $domain @8.8.8.8 | sort -n )");

cat << MILSECTION
<body>
<div id="divClipboard"><p>
<strong>Input</strong>: $domain <br><br>
This TLD has no whois server.<br><br>
.mil domains are exclusively for the use of the <a href='https://en.wikipedia.org/wiki/United_States_Department_of_Defense' target='_blank' >United States Department of Defense</a>.<br><br>
The domain name mil is the sponsored top-level domain (sTLD) in the Domain Name System of the Internet for the United States Department of Defense and its subsidiary or affiliated organizations. More info <a href='https://en.wikipedia.org/wiki/.mil' target='_blank'>here.</a></p>
__________________________<p>
$arfrmil <br>
__________________________<br><br>
$mrfrmil
__________________________<br></p>
</div>
</body>
<footer>
<hr><p style='color: red; text-decoration: none; font-family: calibri'><small><<</small><input type='button' style='background:none; border:none; font-size:95%; color: red;' value='back | track' onClick='history.go(-1);'></p>
</footer>
</html>
MILSECTION
exit 0;
;;

$tldlist1)

zyx=$(whois $domain);

#dig A and MX with minimal essential output from Google DNS servers
arfrct=$( arfunction "$(dig +short $domain @8.8.8.8 )" );
mrfrct=$( mrfunction "$(dig mx +short $domain @8.8.8.8 | sort -n )" );

#start of html body
echo "<body><br>
<h1>ccTLD does not have any configured custom result, falling back to raw whois result </h1><br>
<div id='divClipboard'><pre>$zyx</pre><p>
__________________________<br><br>
$arfrct <br>
__________________________<br><br>
$mrfrct
__________________________</p></div>";

;;

#special trimming for AU ccTLDs
au)

#stores the whois info from auda in a variable.
zyx=$(whois $domain );

#dig A and MX with minimal essential output
arfrctau=$( arfunction "$(dig +short $domain @8.8.8.8 )" );
mrfrctau=$( mrfunction "$(dig mx +short $domain @8.8.8.8 | sort -n )" );

limitcheck=$(echo "${zyx:0:20}");

if [[ "$limitcheck" = "WHOIS LIMIT EXCEEDED" ]]; 

then echo "<body>
<div id='divClipboard'>
<p><br><a href='https://www.auda.org.au/industry-information/' target='_blank'>auDA</a>'s (AU Domain Administration )whois server/s answers solely for whois queries regarding .au domains. There is a limit on how many times an I.P address is allowed to query the server for whois lookups on a given time frame. And since this website's server has only an I.P. address, you can either wait for this server to be able to query auDA's whois server/s again, or you can go to  <a href='https://whois.auda.org.au/' target='_blank' >https://whois.auda.org.au/</a> to get the raw whois information of this .au domain.<br><br>
__________________________<br><br>
$arfrctau <br>
__________________________<br><br>
$mrfrctau <br>
__________________________</p></div>
</body><br>
<hr><p style='color: red; text-decoration: none; font-family: calibri'><small><<</small><input type='button' style='background:none; border:none; font-size:95%; color: red;' value='back | track' onClick='history.go(-1);'></p>
</html>"

exit 0;

else true;
fi;

#stores the registrar name on a variable
registrar=$(echo "$zyx" | grep -i -e "registrar name:" -e "registrar:");

#stores the func processed domain status
dsfrctau=$( dsfunction "$(echo "$zyx" | grep -i -e "status:" )" );

#stores the name servers on a variable
nsfrctau=$( nsfunction "$(echo "$zyx" | grep -i -e "name server:" )" );

#stores the registrant contact
regcontact=$(echo "$zyx" | grep -i -e "Registrant Contact Name:");

#stores the tech contact
techcontact=$(echo "$zyx" | grep -i -e "Tech Contact Name:");

#print the domain and the registrar
cat << EODNARCTAU
<body>
<input type='checkbox' id='chicbox'><span id='chicboxtext'>Include the footer info.</span><div id='divClipboardx'><div id='divClipboard'>
<p>__________________________<br><br>
<strong>Domain Name:</strong> $domain <br><br>
<strong>Registrar: </strong>${registrar#*:} <br>
__________________________<br><br>
<a href='/cgi-bin/eppstatuscodes.sh' target='_blank' ><strong>Domain Status: </strong></a><br>
$dsfrctau
<p>
__________________________<br>
$nsfrctau
__________________________<br><br>
$regcontact <br>
$techcontact <br>
__________________________<br><br>
$arfrctau <br>
__________________________<br> <br>
$mrfrctau <br>
__________________________
</p>
EODNARCTAU
;;

#special trimming for NZ ccTLDs
nz)

# query whois about the domain and store the raw output to a variable
zyx=$(whois $domain);

#dig A and MX with minimal essential output
arfrctnz=$( arfunction "$(dig +short $domain @8.8.8.8 )");
mrfrctnz=$( mrfunction "$(dig mx +short $domain @8.8.8.8 | sort -n )" );

#stores the registrar name on a variable
registrar=$(echo "$zyx" | grep -i -e "registrar_name:");

#stores other registrar info on a variable
regcoun=$( echo "$zyx" | grep -i -e "registrar_country:")

#stores the domain status
dsnzfunc () {
dstat="$1"
while IFS= read -r line
do
   echo  "</br> ${line#*#} ";
done < <(printf '%s\n' "${dstat#*:}");
}
dsnzfuncr=$( dsnzfunc "$(echo "$zyx" | grep -i -e "query_status:" )" );

#stores the domain expiration date on a variable
lastmod=$(echo "$zyx" | grep -i -e "domain_datelastmodified:");

#stores the name servers on a variable
nameservers=$(echo "$zyx" | grep -i -e "ns_name_.*");
nsfrctnz=$( nsfunction "$nameservers");

#print the domain and the registrar
cat << EODNARCTNZ
<body><div id="divClipboard">
<p>
__________________________<br><br>
<strong>Domain Name:</strong> $domain <br><br>
<strong>Registrar: </strong>${registrar#*:}<br>
Registrar Country: ${regcoun#*:}<br>
__________________________<br> <br>
<a href='/cgi-bin/eppstatuscodes.sh' target='_blank'><strong>Domain Status: </strong></a><br>
$dsnzfuncr <br><br>
--------------------------<br>
Last Modified: ${lastmod#*:} <br>
__________________________<br><br>
$nsfrctnz
__________________________<br><br>
$arfrctnz <br>
__________________________<br><br>
$mrfrctnz
__________________________</p></div>
EODNARCTNZ
;;

#special whois result trim for UK TLDs
uk)
zyx=$(whois $domain);
zyxuk0=$(echo "$zyx" | gawk '/Registrar:/{flag=1;next}/WHOIS lookup made at/{flag=0}flag' );
#dig A and MX with minimal essential output
arfrctuk=$( arfunction "$(dig +short $domain @8.8.8.8 )" );
mrfrctuk=$( mrfunction "$(dig mx +short $domain @8.8.8.8 | sort -n )" );
echo "<body><div id='divClipboard'>
<p><pre><strong>Domain name: </strong>$domain<br><br> &nbsp; <strong>Registrar:</strong><br>$zyxuk0</pre>
__________________________
<p>
$arfrctuk <br>
__________________________<br><br>
$mrfrctuk
__________________________<br></p></div>
<hr><p>Raw whois result below:</p><hr>
<br><pre>$zyx</pre><br>";

;;

#special whois result trim for EU TLDs
eu)
zyx=$(whois $domain);
zyxeu0=$(echo "$zyx" | gawk '/Domain:/{flag=1;next}/Keys:/{flag=0}flag' );

#dig A and MX with minimal essential output
arfrcteu=$( arfunction "$(dig +short $domain @8.8.8.8 )" );
mrfrcteu=$( mrfunction "$(dig mx +short $domain @8.8.8.8 | sort -n )" );
echo "<body>
<div id='divClipboard'>
<p><pre><strong>Domain:</strong> $domain<br>$zyxeu0</pre>
__________________________
<p>
$arfrcteu <br>
__________________________ <br> <br>
$mrfrcteu
__________________________
<br></p></div><hr>
<p>Raw whois result below:</p><hr>
<br><pre>$zyx</pre><br>";
;;

#special result for .ph ccTLD 
ph)
arfrph=$( arfunction "$(dig +short $domain @8.8.8.8 )" );
mrfrph=$( mrfunction "$(dig mx +short $domain @8.8.8.8 | sort -n )" );
echo "<body><div id='divClipboard'><p>
<br>For the  Whois info of this .ph domain, <br>
Click the link below or copy and paste it on a browser's address bar:  <br> <br>
<a href='https://whois.dot.ph/?utf8=%E2%9C%93&search=$domain' target='_blank' >https://whois.dot.ph/?utf8=%E2%9C%93&search=$domain</a></p>
<p>__________________________ <br><br>
<strong>Domain:</strong> $domain <br>
__________________________<br><br>
$arfrph <br>
__________________________<br><br>
$mrfrph
__________________________</p></div>
</body>
<p style='color: red; text-decoration: none; font-family: calibri'><small><<</small><input type='button' style='background:none; border:none; font-size:95%; color: red;' value='back | track' onClick='history.go(-1);'></p>
</html>";
exit 0;
;;

#special result for .sg ccTLD 
sg)
arfrsg=$( arfunction "$(dig +short $domain @8.8.8.8)" );
mrfrsg=$( mrfunction "$(dig mx +short $domain @8.8.8.8 | sort -n )" );
echo "<body><div id="divClipboard">
<p><br>For the  Whois info of this .sg domain, <br>
Click the link below or copy and paste it on a browser's address bar:  <br> <br>
<a href='https://www.sgnic.sg/domain-search.html?SearchKey=$domain' target='_blank'>https://www.sgnic.sg/domain-search.html?SearchKey=$domain</a></p>
<p>
__________________________ <br> <br>
<strong>Domain:</strong> $domain <br>
__________________________ <br><br>
$arfrsg <br>
__________________________<br><br>
$mrfrsg
__________________________</p></div>
</body>
<p style='color: red; text-decoration: none; font-family: calibri'><small><<</small><input type='button' style='background:none; border:none; font-size:95%; color: red;' value='back | track' onClick='history.go(-1);'></p>
</html>";
exit 0;
;;

#special result for .vn ccTLD 
vn)
arfrvn=$( arfunction "$(dig +short $domain @8.8.8.8 )" );
mrfrvn=$( mrfunction "$(dig mx +short $domain @8.8.8.8 | sort -n )" );
echo "
<body>
<div id="divClipboard">
<p><br>For the  Whois info of this .vn domain, <br>
Click the link below or copy and paste it on a browser's address bar:  <br> <br>
<a href='https://vnnic.vn/en/whois-information?lang=en' target='_blank'>https://vnnic.vn/en/whois-information?lang=en</a></p>
<p>
__________________________ <br><br>
<strong>Domain:</strong> $domain <br>
__________________________ <br><br>
$arfrvn <br>
__________________________ <br><br>
$mrfrvn
__________________________</p></div>
</body>
<p style='color: red; text-decoration: none; font-family: calibri'><small><<</small><input type='button' style='background:none; border:none; font-size:95%; color: red;' value='back | track' onClick='history.go(-1);'></p>
</html>";
exit 0;
;;

jp)
zyx=$(whois $domain);

#PASS the a record/s to arfunc
arfrjp=$( arfunction "$(dig +short $domain @8.8.8.8 )" );
#PASS the mx record/s to mxrfunc
mrfrjp=$( mrfunction "$(dig mx +short $domain @8.8.8.8 | sort -n )");
echo "<body><br><div id='divClipboard'>
<pre>${zyx#*Domain Information:}</pre>

<p>

__________________________<br><br>
$arfrjp <br>
__________________________<br><br>
$mrfrjp 
__________________________</p></div>
<hr><p>Raw whois result below:</p><hr>
<br><pre>$zyx</pre><br>";
;;

#throw an error for anything else
*)
cat << ERRORFORALLELSE
<body>
<div id='divClipboard'>
<p><strong>Input</strong> : $domain <br> <br>
Not a valid domain name <a href='https://en.wikipedia.org/wiki/Fully_qualified_domain_name' target='_blank'>(FQDN)<a/>!</p>
ERRORFORALLELSE
exit 0;

;;
esac;

echo "</p></div></body>"
#2nd if fi
fi
#1st if fi
fi

echo "<footer>"
registrant=$(echo "$zyx2" | grep -i -e 'registrant\s')
admin=$(echo "$zyx2" | grep -i -e 'admin')
tech=$(echo "$zyx2" | grep -i -e 'tech')

if [[ -z "$registrant" ]]; then
regwis="$(echo $whoisservergrep | tr -d '\040\011\012\015')"
case "$regwis" in
"RegistrarWHOISServer:http://api.fastdomain.com/cgi/whois")
echo "<hr>
<br> click <a href='http://api.fastdomain.com/cgi/whois?domain=$domain' target='_blank'>here</a> for the raw whois info from the  FastDomain's whois server web interface.<br><span style='color: green; font-size: 90%;' >Registry WHOIS Server: $trywis</span><hr><p style='color: red; text-decoration: none; font-family: calibri'><small><<</small><input type='button' style='background:none; border:none; font-size:95%; color: red;' value='back | track' onClick='history.go(-1);'></p>
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
echo "<br><span style='color: green; font-size: 90%;' >Registry WHOIS Server: $trywis</span>
<hr><p style='color: red; text-decoration: none; font-family: calibri'><small><<</small><input type='button' style='background:none; border:none; font-size:95%; color: red;' value='back | track' onClick='history.go(-1);'></p>
</footer>
</html>"
;;
esac;

else

cat << EOHF
<hr><br>
<strong>[ REGISTRANT: ]</strong><br>
<pre>$registrant</pre><br>
<strong>[ ADMIN: ]</strong><br>
<pre>$admin</pre><br>
<strong>[ TECH: ]</strong><br>
<pre>$tech</pre><hr>
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
<br><span style='color: green; font-size: 90%;' >Registry WHOIS Server: $trywis</span>
</div>
<hr><p style='color: red; text-decoration: none; font-family: calibri'><small><<</small><input type='button' style='background:none; border:none; font-size:95%; color: red;' value='back | track' onClick='history.go(-1);'></p>
EOHF2

echo "</footer></html>"
fi;
exit 0;
