#!/bin/bash
echo "Content-type: text/html"
echo ""
cat <<EOT

<!DOCTYPE html>
<html>
<link rel="icon" type="image/png" href="/icon.png" />
<head>
<title>Salamat</title>

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
h1 { font-family: courier new; font-size: 150%; }
a:link { color: green; }
a:visited { color: green; }
a:hover { color: green; }
a:active { color: green; }
body {background-color:black;color:green}
p { font-family: calibri; font-size: 100%;}
footer {font-family: calibri; font-size: 60%;}
article {font-family: arial;font-size: 43%;}
pre {white-space: pre-wrap;font-size: 115%;}
</style>

<center>
<p><h1><a href="https://www.bigblackcactus.com/cgi-bin/bbc.sh">Big Black Cactus</a></h1></p>
<p><a href="/cgi-bin/bbc.sh" style='text-decoration: none; color: red; '>[ &#127968;Home ]</a></p>
</center>
</head>

<body>
<left>
<br><br>
<p><pre>
Special Thanks to:
-Director Paul
-Julian
-Mark Anthony
-Mary Genevive
-Pamela
-Clark Angelo
-Jeanne
-Raymundo
-Aries
-Walter King
-Christina
-Raymond
-Glenda Mae
-Cherry May
-Anthony
-Jester
-Jessielito
-Michael
For testing/feedbacks/suggestions/bug reports.

</pre></p>
<p style='color: red; text-decoration: none; font-family: calibri'><small><<</small><input type='button' style='background:none; border:none; font-size:95%; color: red;' value='back | track' onClick='history.go(-1);'></p>
</left>
</body>

</html>

EOT

exit 0;