#!/bin/bash
#This script was created by Zyx Rhythm (email:zyxrhythm@gmail.com)
#You can download, copy and use it as you see fit.
#If ever you need to post or show the code to people
#Though you are not required to, crediting the the author will be much appreciated.
#################################################
#https://github.com/zyxrhythm
#############################################
echo "Content-type: text/html"
echo ""
cat <<EOT
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
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<script>
  (adsbygoogle = window.adsbygoogle || []).push({
    google_ad_client: "ca-pub-3422469360028179",
    enable_page_level_ads: true
  });
</script>
<style>
a {text-decoration: none; }
a:link { color: green; }
a:active { color: green; }
a:hover { color: green; }
a:visited { color: green; }
h1 {font-family: courier new; font-size: 135%;
}
h4 { font-family: courier new; font-size: 161%
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

strong {font-size: 160%;
font 
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
</style>

</head>
<body>
<!--
from https://www.mediacollege.com/internet/javascript/form/remove-spaces.html
removes nasty white spaces on the text fields that causes alot of issue
-->
<script>
function removeSpaces(string) {
 return string.split(' ').join('');
}
</script>
<!--
from https://www.mediacollege.com/internet/javascript/form/remove-spaces.html
removes nasty white spaces on the text fields that causes alot of issue
-->
<script>
function removeSpecialCharacters(string) {
 return string.replace(/[^A-Za-z0-9.-]/g, '');
}
</script>
<center>
<p>

<a href="/cgi-bin/bbc.sh"><div class="tooltip"><h4><strong>B</strong>ig <strong>B</strong>lack <strong>C</strong>actus</h4><span class="tooltiptext" style="font-size: 70%; font-family: calibri; font: green; "><br>For comments/suggestions/reactions <br><br>email: <br> director@bigblackcactus.com <br><br></span>
</div></a>


</p>

<!-- BBC Special -->
<p>

<!-- ################## =) ################# -->
<script>
function redirect()
{
   if(document.getElementById("square").checked == true)
        document.formation.action ="bbcdc.sh";

	else if(document.getElementById("square").checked == false)
        document.formation.action = "bbcx.sh";       
}
</script>

<div class="tooltip"><label> [ BBC Specials ]</label><span class="tooltiptext" style="font-size: 70%; font-family: calibri; font: green; "><br>Type a domain to the box below and click the "Go" button - this will generate a simplified report regarding vital details under the domain.<br><br></span></div>
<form method="get" name="formation" action="" >

<input type="text" type="submit" name="domain" placeholder="Domain" onblur="this.value=removeSpaces(this.value); this.value=removeSpecialCharacters(this.value);" onKeyDown="if(event.keyCode==13) this.value=removeSpaces(this.value); if(event.keyCode==13) this.value=removeSpecialCharacters(this.value); chgAction( action_name )" onKeyUp="if(event.keyCode==13 ) this.value=removeSpecialCharacters(this.value);">

<button onclick="redirect();" type="submit" >Go</button>
<br>
<code style="font-size:100%" ><div class="tooltip">S. C. C. <span class="tooltiptext"><br>SSL Certificate Checker <br>( tick the checkbox to get the details of the SSL certificate issued for the domain / sub domain)<br><br></span>
</div> </code>
<input type="checkbox" id="square">
</form>
<!-- ################## =) ################# -->

</p>
<br>
<p>
<!-- WHO YOU -->
<form action="bbcws.sh" method="get">
<label><div class="tooltip">[ Who You ]<span class="tooltiptext" style="font-size: 70%; font-family: calibri; font: green; "><br>For domain names the whois tool (WHOYOU) will query both the registry and the registrar's whois server/s (if the registrar whois server is found). <br> <br> And will query ARIN's whois server/s for IP addresses.<br><br></span>
</div></label> <br>
<input placeholder="Domain / I.P. address" id="whoyouinput" type="text" onblur="this.value=removeSpaces(this.value); this.value=removeSpecialCharacters(this.value);" onKeyDown="if(event.keyCode==13) this.value=removeSpaces(this.value); if(event.keyCode==13) this.value=removeSpecialCharacters(this.value);" onKeyUp="if(event.keyCode==13) this.value=removeSpecialCharacters(this.value);"name="domain">
<button id="whoyoubtn" type="submit" >Who is</button>
</form>
</p>
<br>
<!-- BIG NICK DIGGER -->
<p>
<form action="bbcd.sh" method="get">
<label><div class="tooltip">[ Big Nick Digger ]<span class="tooltiptext" style="font-size: 70%; font-family: calibri; font: green; "><br>To reverse an IP address first select PTR from the dropdown then hit go. <br>------ <br> <br>If the name server field <br>is left blank,<br>by default, <br>Big Nick Digger will dig from Google's DNS sever (8.8.8.8).<br><br></span></div></label>
<br> 
<input placeholder="Domain / I.P. address" id="BBCinput" type="text" onblur="this.value=removeSpaces(this.value); this.value=removeSpecialCharacters(this.value);" onKeyDown="if(event.keyCode==13) this.value=removeSpaces(this.value); if(event.keyCode==13) this.value=removeSpecialCharacters(this.value);" onKeyUp="if(event.keyCode==13) this.value=removeSpecialCharacters(this.value);" name="domain">
<br>
<br>
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
<button type="submit"> D I G </button>
<br> <br>
<input id="BBCinput" type="text" placeholder="Name Server (Optional)" onblur="this.value=removeSpaces(this.value); this.value=removeSpecialCharacters(this.value);" onKeyDown="if(event.keyCode==13) this.value=removeSpaces(this.value); if(event.keyCode==13) this.value=removeSpecialCharacters(this.value);" onKeyUp="if(event.keyCode==13) this.value=removeSpecialCharacters(this.value);" name="nameserver">
<br>
</form>
</p>
<p>
<br>
<br>
<a href="/cgi-bin/bbc.sh">
<img border="0" alt="Cactus" src="/cactus2.png" width="26%" height="26%">
</a>
</p>
<p>
</body>
<footer>
<br>
&nbsp;&nbsp; &nbsp;" There are only 10 types of people in the world.<br>Those who understands binary,<br>and those who don't. &nbsp;"&nbsp;&nbsp;<br>
<br>
rev.1513
<br>
<br>
</footer>
</p>
<p>
<article>
All rights reserved. This website or any portion thereof<br>
may be reproduced or used in any manner whatsoever<br>
without the express written permission of the publisher<br>
also for the use of brief quotations in a site review.
<br>
<br>
<a href=/cgi-bin/moreinfo.sh rel="noopener noreferrer" target="_blank">[ About ]</a> &nbsp; &nbsp;
<a href=/cgi-bin/news.sh rel="noopener noreferrer" target="_blank">[ we<i>blog</i>s ]</a>
</article>
</p>
<p><b>-> <a href=/cgi-bin/directorscut.sh rel="noopener noreferrer" target="_blank">Thanks to</a> <-</b></p>
<article>
<b>Once you GO BLACK, you can never go back!</b>
<br>
Copyleft 2018 &copy;
</article>
</center>
</html>

EOT

exit 0;
