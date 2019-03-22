#!/bin/bash
#This script was created by Zyx Rhythm (email:zyxrhythm@gmail.com)
#You can download, copy and use it as you see fit.
#If ever you need to post or show the code to people
#Though you are not required to, crediting the the author will be much appreciated.
#################################################
#https://github.com/zyxrhythm
#############################################

#revisions counter
gitrevcount=$( git rev-list --all --count );
revcount=$(echo "$gitrevcount + 666" | bc);
#revisions counter

echo "Content-type: text/html"
echo ""
cat <<EOBBCSH
<!DOCTYPE html>
<html>
<link rel="icon" type="image/png" href="/icon.png" />
<head>

<title>BBC - Big Black Cactus</title>

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


<!-- AdSense -->
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<script>
  (adsbygoogle = window.adsbygoogle || []).push({
    google_ad_client: "ca-pub-3422469360028179",
    enable_page_level_ads: true
  });
</script>
<!-- AdSense -->

<style>

a:link { color: green; }
a:active { color: green; }
a:hover { color: green; }
a:visited { color: green; }
h1 {font-family: courier new; font-size: 135%;
}
h4 { font-family: courier new; font-size: 161%; display: inline; 
}
body { background-color:black; color:green;
}
p { font-family: calibri; font-size: 100%;
}
label { font-family: Trebuchet MS; font-size: 110%;
}	
button { font-family: Trebuchet MS; font-size: 70%; 
}
select, option { width: auto; overflow: hidden;
}
footer { font-family: Georgia; font-size: 100%;
}
code { font-family: Arial; font-size: 80%;
}
article	{ font-family: Verdana; font-size: 70%;
}
strong {font-size: 143%; 
}

.tooltip {
  position: relative;
  display: inline-block;
  border-bottom: 1px dotted black;
}

.tooltip .tooltiptext {
  font-size:85%;
  visibility: hidden;
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
  visibility: visible;
}

.copyleft {
  display:inline-block;
  transform: rotate(180deg);
}

#revisions {color: #186a3b
}

#goblack {color: #1c2833
}

#navigation { font-family: Arial; font-size: 85%; font-weight: bold; color: #145a32;
}

#navig-link { text-decoration: none; color: #145a32;
}

#wave7a { color: white; font-size: 90%;
}

</style>

</head>

<body>

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

<center>

<p><a href="/cgi-bin/bbc.sh" ><h4><strong>B</strong>ig <strong>B</strong>lack <strong>C</strong>ac&#127797;us</h4></a><br>

<span id="navigation">
<a href=/cgi-bin/moreinfo.sh rel="noopener noreferrer" target="_blank" id="navig-link">
&#10084;About
</a>
&nbsp; 
<a href=/cgi-bin/news.sh rel="noopener noreferrer" target="_blank" id="navig-link">
&#10070;Logs
</a>
&nbsp; 
<div class="tooltip">
<span id="navig-link"><label>&#9993;Contact</label></span>
<span class="tooltiptext" style="font-size: 80%; font-family: calibri; font: green; "><br>For suggestions / comments / reactions<br>email director@bigblackcactus.com<br><br></span>
</div>
</span>
</p> <br>

<!-- ################## BBC Special ################# -->

<p><script>
function redirect()
{ if(document.getElementById("square").checked == true)
        document.formation.action ="bbcdc.sh";
else if(document.getElementById("square").checked == false)
        document.formation.action = "bbcx.sh";       
}
</script>

<div class="tooltip">
<label> &#127797; BBC Special</label>
<span class="tooltiptext" style="font-size: 70%; font-family: calibri; font: green; "><br>Put a domain name (FQDN) in the box below and click the "Go" button - this will generate a report with vital DNS and whois information about the domain.<br><br></span>
</div>

<form method="get" name="formation" action="" >

<input type="text" type="submit" name="domain" placeholder="Domain / sub domain" onblur="this.value=removeSpaces(this.value); this.value=removeSpecialCharacters(this.value);" onKeyDown="if(event.keyCode==13) this.value=removeSpaces(this.value); if(event.keyCode==13) this.value=removeSpecialCharacters(this.value); chgAction( action_name )" onKeyUp="if(event.keyCode==13 ) this.value=removeSpecialCharacters(this.value);">

<button onclick="redirect();" type="submit" >Go</button><br>
<label style="font-size:90%" >

<div class="tooltip">
S. C. C. 
<span class="tooltiptext"><br>SSL Certificate Checker <br><br>( tick the checkbox before you click "Go" to get details about the SSL certificate issued for a domain / sub domain)<br><br>
</span>

</div> 
</label>

<input type="checkbox" id="square">

</form></p><br><br>

<!-- ################## BBC Special ################# -->

<!-- ################## WHO YOU ################# -->

<p><form action="bbcws.sh" method="get">

<label>
<div class="tooltip">
&#8284; Who You
<span class="tooltiptext" style="font-size: 70%; font-family: calibri; font: green; "><br>Put a domain name (FQDN) / I.P. address on the box below then click the "Who is" button. <br> <br> For domain names the whois tool "WHOYOU" will query both the registry and the registrar's whois server/s <br>(if the registrar whois server is found). <br> <br> And for IP addresses the tool will query ARIN's whois server/s.<br><br>
</span>

</div> 
</label> <br>

<input placeholder="Domain / I.P. address" id="whoyouinput" type="text" onblur="this.value=removeSpaces(this.value); this.value=removeSpecialCharacters(this.value);" onKeyDown="if(event.keyCode==13) this.value=removeSpaces(this.value); if(event.keyCode==13) this.value=removeSpecialCharacters(this.value);" onKeyUp="if(event.keyCode==13) this.value=removeSpecialCharacters(this.value);"name="domain"><br>
<button id="whoyoubtn" type="submit" >Who is</button>

</form>
</p>

<!-- ################## WHO YOU ################# -->


<!-- ################## BIG NICK DIGGER ################# -->

<p><form action="bbcd.sh" method="get">
<label>
<div class="tooltip">
&#9935; Big Nick Digger
<span class="tooltiptext" style="font-size: 70%; font-family: calibri; font: green; "><br>First put a domain name (FQDN) on the box below, then select what type of record would you like to dig from the dropdown, optionally you can specify the name server in which the tool (Big Nick Digger) will dig the records from. Finally click the "DIG" Button. <br> <br>If the name server box is left blank, by default, "Big Nick Digger" will dig records from Google's DNS sever (8.8.8.8). <br> <br> To reverse an IP address, first select PTR from the dropdown then click the "DIG" button.<br><br>
</span>
</div>
</label><br> 

<input placeholder="Domain / I.P. address" id="BBCinput" type="text" onblur="this.value=removeSpaces(this.value); this.value=removeSpecialCharacters(this.value);" onKeyDown="if(event.keyCode==13) this.value=removeSpaces(this.value); if(event.keyCode==13) this.value=removeSpecialCharacters(this.value);" onKeyUp="if(event.keyCode==13) this.value=removeSpecialCharacters(this.value);" name="domain"><br><br>

<select name='record'> 
  <option>A</option>
  <option>MX</option>
  <option>NS</option>
  <option>TXT</option>
  <option>SOA</option>
  <option>SPF</option>
  <option>AAAA</option>
  <option>CAA</option>
  <option>PTR</option>
  <option selected>ANY</option>
</select> 

<button type="submit"> D I G </button><br> <br>

<input id="BBCinput" type="text" placeholder="Name Server (Optional)" onblur="this.value=removeSpaces(this.value); this.value=removeSpecialCharacters(this.value);" onKeyDown="if(event.keyCode==13) this.value=removeSpaces(this.value); if(event.keyCode==13) this.value=removeSpecialCharacters(this.value);" onKeyUp="if(event.keyCode==13) this.value=removeSpecialCharacters(this.value);" name="nameserver"><br>

</form></p>
<!-- ################## BIG NICK DIGGER ################# -->

<p><br><br>
<a href="/cgi-bin/bbc.sh">
<img border="0" alt="Cactus" src="/cactus2.png" width="26%" height="26%">
</a></p>

</body>

<footer>
<p><div class="tooltip">
<span id="wave7a" >&nbsp;&nbsp; &nbsp;<label>" [ v-Cntr Jnir 7n (PAK) ] "</label>&nbsp;&nbsp;&nbsp;</span>
<span class="tooltiptext" style="font-size: 80%; font-family: calibri; font: green;" >
Encoded in ROT 13.
</span>
</div></p>
<br><br><br><br>
</footer>

<p><b>-> <a href=/cgi-bin/directorscut.sh rel="noopener noreferrer" target="_blank" style="color: red;">Thanks to</a> <-</b></p>

<p><article>
All rights reversed. <br>
This website or any portion thereof may be <br>
reproduced or used in any manner whatsoever<br>
without the express written permission of the publisher<br>
also for the use of brief quotations in a site review.
<br><br>For suggestions / comments / reactions<br> email director@bigblackcactus.com<br><br><br>
</article>
<span id="revisions">rev. $revcount</span></p>

<article>
<span id="goblack"><b>Once you GO BLACK, you can never go back!</b><span> <br>
<span style="color: white">Copyleft 2018 <span class="copyleft">&copy;</span></span>
</article>

</center>

</html>

EOBBCSH

exit 0;
