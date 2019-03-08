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

strong {font-size: 143%;
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

<a href="/cgi-bin/bbc.sh"><div class="tooltip"><h4><strong>B</strong>ig <strong>B</strong>lack <strong>C</strong>actus</h4><span class="tooltiptext" style="font-size: 70%; font-family: calibri; font: green; ">For comments / suggestions / reactions email  director@bigblackcactus.com</span>
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

<div class="tooltip"><label> [ BBC Specials ]</label><span class="tooltiptext" style="font-size: 70%; font-family: calibri; font: green; "><br>Type a domain in the box below and click the "Go" button - this will generate a report with vital DNS and whois information about the domain.<br><br></span></div>
<form method="get" name="formation" action="" >

<input type="text" type="submit" name="domain" placeholder="Domain / sub domain" onblur="this.value=removeSpaces(this.value); this.value=removeSpecialCharacters(this.value);" onKeyDown="if(event.keyCode==13) this.value=removeSpaces(this.value); if(event.keyCode==13) this.value=removeSpecialCharacters(this.value); chgAction( action_name )" onKeyUp="if(event.keyCode==13 ) this.value=removeSpecialCharacters(this.value);">

<button onclick="redirect();" type="submit" >Go</button>
<br>
<code style="font-size:80%" ><div class="tooltip">S. C. C. <span class="tooltiptext"><br>SSL Certificate Checker <br><br>( tick the checkbox before you click "Go" to get the details of the SSL certificate issued for the domain / sub domain)<br><br></span>
</div> </code>
<input type="checkbox" id="square">
</form>

<!-- ################## =) ################# -->

</p>
<br>
<p>
<!-- WHO YOU -->
<form action="bbcws.sh" method="get">
<label><div class="tooltip">[ Who You ]<span class="tooltiptext" style="font-size: 70%; font-family: calibri; font: green; "><br>Put a domain name / I.P. address on the box below then click the "Who is" Button. <br> <br> For domain names the whois tool "WHOYOU" will query both the registry and the registrar's whois server/s <br>(if the registrar whois server is found). <br> <br> And for IP addresses the tool will query ARIN's whois server/s.<br><br></span>
</div> </label> <br>
<input placeholder="Domain / I.P. address" id="whoyouinput" type="text" onblur="this.value=removeSpaces(this.value); this.value=removeSpecialCharacters(this.value);" onKeyDown="if(event.keyCode==13) this.value=removeSpaces(this.value); if(event.keyCode==13) this.value=removeSpecialCharacters(this.value);" onKeyUp="if(event.keyCode==13) this.value=removeSpecialCharacters(this.value);"name="domain"><br>
<button id="whoyoubtn" type="submit" >Who is</button>
</form>
</p>
<br>
<!-- BIG NICK DIGGER -->
<p>
<form action="bbcd.sh" method="get">
<label><div class="tooltip">[ Big Nick Digger ]<span class="tooltiptext" style="font-size: 70%; font-family: calibri; font: green; "><br>First put a domain name on the box below, then select what type of record would you like to dig from the dropdown, optionally you can specify what name server will the tool dig the records for the doamin from. Finally click the "DIG" Button. <br> <br>If the name server field is left blank, by default, Big Nick Digger will dig records from Google's DNS sever (8.8.8.8). <br> <br> To reverse an IP address first select PTR from the dropdown then click the "DIG" button.<br><br></span></div></label>
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
&nbsp;&nbsp; &nbsp;" [ v-Cntr Jnir 7n (PAK) ] "&nbsp;&nbsp;&nbsp;<br>
<br>
rev.1671
<br>
<br>
</footer>
</p>
<p>
<article>
41 73 20 66 61 72 20 61 73 20 74 68 65 <br>
20 6c 61 77 73 20 6f 66 20 6d 61 74 68 <br>
65 6d 61 74 69 63 73 20 72 65 66 65 72 <br>
20 74 6f 20 72 65 61 6c 69 74 79 2c 20 <br>
74 68 65 79 20 61 72 65 20 6e 6f 74 20 <br>
63 65 72 74 61 69 6e 3b 20 61 6e 64 20 <br>
61 73 20 66 61 72 20 61 73 20 74 68 65 <br>
79 20 61 72 65 20 63 65 72 74 61 69 6e <br>
2c 20 74 68 65 79 20 64 6f 20 6e 6f 74 <br>
20 72 65 66 65 72 20 74 6f 20 72 65 61 <br>
6c 69 74 79 20 2d 2d 2d 20 41 6c 62 65 <br>
72 74 20 45 69 6e 73 74 65 69 6e 20 28 <br>
31 38 37 39 20 2d 20 31 39 35 35 29 2e <br>
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
