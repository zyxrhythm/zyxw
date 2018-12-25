#!/bin/bash
echo "Content-type: text/html"
echo ""
cat <<EOT

<!DOCTYPE html>
<html>
<link rel="icon" type="image/png" href="/icon.png" />
<head>
<title>BBC ( v 0.4 )</title>

<meta name="description" content="BigBlackCactus.com (BBC) is a website that can fetch the whois information of a domain, dig DNS records of domains and sub domains from name servers, can also do a simple check to identify about the SSL certificate issued for a domain/sub domain name.">
<meta name="keywords" content="DIG, DNS, WHOIS, SSL CHECK">
<meta name="author" content="Zyx Rhythm">
 
<meta name="viewport" content="width=device-width, initial-scale=1.0">

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

-Fetch the whois information of a domain directly from whois servers and/or the domain name registar's whois servers.
-Dig DNS records of domains and sub domains from one of Google's name server (8.8.8.8) or from particular name servers (user specified).
-And can also check if an SSL certificate is issued for a domain/sub domain name.

-----------------------

This website uses the Bourne again shell (.sh) for server-side scripting.
The usual Javascript for client side scripting.
The usual HTML and CSS for its simple looks.


If you like the website, and wants to check the beta codes for improvement 
or just want to deploy it on your own server, the codes are at github:

<a href="https://github.com/zyxrhythm/zyx-kit-codex/tree/master/lib/scripts/cgi" rel="noopener noreferrer" target="_blank">https://github.com/zyxrhythm/zyx-kit-codex/tree/master/lib/scripts/cgi</a>

Or if you want to see what is in the live codes running from the server:
<a href="https://github.com/zyxrhythm/bbclive" rel="noopener noreferrer" target="_blank">https://github.com/zyxrhythm/bbclive</a>

 Origins:
 -brought <a href="https://github.com/zyxrhythm/zyx-kit-codex/tree/master/lib/scripts/domaintools" rel="noopener noreferrer" target="_blank">zyx-kit</a> custom bash scripts out via CGI so the same result from kitty can be viewed on a browser.
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
