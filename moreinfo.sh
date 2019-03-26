#!/bin/bash
echo "Content-type: text/html"
echo ""
cat <<EOT

<!DOCTYPE html>
<html>
<link rel="icon" type="image/png" href="/icon.png" />
<head>
<title>About</title>

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


<center>
<p><h1><a href="/cgi-bin/bbc.sh">Big Black Cactus</a></h1></p>
</center>
<style>
h1 {    font-family: courier new;
    font-size: 150%;
}

a:link { color: green; }
a:visited { color: green; }
a:hover { color: green; }
a:active { color: green; }

body	{background-color:black;color:green

}

p	{	font-family: calibri;
    font-size: 100%;
}

footer	{font-family: calibri;
	font-size: 60%;
}

article	{font-family: arial;
	font-size: 43%;
}

pre{
    white-space: pre-wrap;font-size: 100%;
}

</style>
</head>

<body>

<left>
<br>
<br>
<p>
<pre>
BigBlackCactus.com (BBC) is a website you can use for the following: 

> Do a 'whois lookup' for a domain name or I.P. Address directly from the whois server/s  of registries and registrars (for domain names) and whois server/s of A.R.I.N.(for I.P. addresses).

> Do a 'dig' of D.N.S. records (A,MX,SOA,NS,TXT,SPF,CAA,AAAA) of domain names, sub domains and hostnames directly from one of Google's name server (8.8.8.8), or from a particular name server specified by the user. 

> Reverse an I.P. address to its domain/host name (PTR).

> And can also provide info about the S.S.L. certificate issued for a domain name/sub domain.


-----------------------
-This website uses <a href="https://en.wikipedia.org/wiki/Bash_(Unix_shell)" target="_blank" class="tooltip">Bash</a>(Bourne again shell) for server-side scripting.
-The usual Javascript for client side scripting.
-The usual HTML and CSS for its simple looks.

-----------------------



For bugs and other concerns please email:
director@bigblackcactus.com
</pre>
<br>
</p>

</left>
</body>

</html>

EOT

exit 0;
