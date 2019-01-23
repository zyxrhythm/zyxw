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

<style>

a:link { color: green; }
a:active { color: green; }
a:hover { color: green; }
a:visited { color: green; }

h1 {font-family: courier new; font-size: 135%;
}

h4 { font-family: courier new; font-size: 160%;
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

</style>

</head>

<body>

<!--
thanks to https://www.mediacollege.com/internet/javascript/form/remove-spaces.html
removes nasty white spaces on the text fields that causes alot of issue
-->

<script language="javascript" type="text/javascript">
function removeSpaces(string) {
 return string.split(' ').join('');
}

function removeSpecialCharacters(string) {
 return string.replace(/[^A-Za-z0-9.-]/g, '');
}
</script>

<center>
<p>
<h4>
<a href="/cgi-bin/bbc.sh">Big Black Cactus</a>
</h4>
</p>

<p>
<form method="get">
<input type="submit" formaction="bbcx.sh" style="visibility: hidden; display: none;">
<!-- all your inputs -->

<input id="BBCinput" type="text" onblur="this.value=removeSpaces(this.value); this.value=removeSpecialCharacters(this.value);" onKeyDown="if(event.keyCode==13) this.value=removeSpaces(this.value); if(event.keyCode==13) this.value=removeSpecialCharacters(this.value);" onKeyUp="if(event.keyCode==13) this.value=removeSpecialCharacters(this.value);"name="domain">


<!-- all your inputs -->
<button formaction="bbcws.sh">WHO YOU</button>
<button formaction="bbcdc.sh">CHECK-MATE</button>
<input type="submit" value="BBC Special">
</form>

</p>

<br>

<p>
<form action="bbcd.sh" method="get">
<h1>Big Nick Digger</h1>
<label>Domain:</label> 

<input id="BBCinput" type="text" onblur="this.value=removeSpaces(this.value); this.value=removeSpecialCharacters(this.value);" onKeyDown="if(event.keyCode==13) this.value=removeSpaces(this.value); if(event.keyCode==13) this.value=removeSpecialCharacters(this.value);" onKeyUp="if(event.keyCode==13) this.value=removeSpecialCharacters(this.value);" name="domain">

<br>
<label>Record Type:</label>
<select name='record'> 
  <option>MX</option>
  <option>A</option>
  <option>TXT</option>
  <option>NS</option>
  <option>SOA</option>
  <option>SPF</option>
  <option selected>ANY</option>
</select>
<button type="submit"> D I G </button> <br>
<code><b>@</b>NS (Optional) : </code>

<input id="BBCinput" type="text" placeholder="8.8.8.8(default)" onblur="this.value=removeSpaces(this.value); this.value=removeSpecialCharacters(this.value);" onKeyDown="if(event.keyCode==13) this.value=removeSpaces(this.value); if(event.keyCode==13) this.value=removeSpecialCharacters(this.value);" onKeyUp="if(event.keyCode==13) this.value=removeSpecialCharacters(this.value);" name="nameserver">

</form>
</p>

<br>

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
[&nbsp;&nbsp;" &nbsp;When in doubt... &nbsp;Logout! &nbsp;"&nbsp;&nbsp;]<br>
<br>
rev.479
<br>
<br>
<br>
<b>-> <a href=/cgi-bin/directorscut.sh rel="noopener noreferrer" target="_blank">Thanks to</a> <-</b>
</footer>
</p>

<p>
<article>
The whois tool (WHOYOU) will query the regsitry's whois servers by default.
<br>
But you can query the registrar's whois server if you want.<br> <br>
If you do not specify a name server for Big Nick Digger. 
<br>
Big Nick Digger will dig from Google's DNS sever (8.8.8.8) by default.
<br>
<br>
<a href=/cgi-bin/moreinfo.sh rel="noopener noreferrer" target="_blank">[ About ]</a> &nbsp; &nbsp;
<a href=/cgi-bin/news.sh rel="noopener noreferrer" target="_blank">[ News ]</a>
</article>
</p>

<article>
<b>Once you GO BLACK, you can never GO BACK!</b>
<br>
Copyleft 2018 &copy;
</article>

</center>

</html>

EOT

exit 0;
