#!/bin/bash
echo "Content-type: text/html"
echo ""
cat <<EOT

<!DOCTYPE html>
<html>
<link rel="icon" type="image/png" href="https://www.bigblackcactus.com/icon.png" />
<head>
<title>BBC ( v 0.4 )</title>
<center>
<p><h1><a href="https://www.bigblackcactus.com/cgi-bin/bbc.sh">Big Black Cactus</a></h1></p>
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

Noted Revisions:

-Removed extra whois result from all ccTLDs.
-Added a domain validity check at the start of the BBC special script process.
-.CA .NZ domains will not show the extra whois result on the bottom of the BBC special result.
-BBC special will now querry 8.8.8.8 by default instead of the localhost bind servers. 
-White spaces and invalid special characters on the textfields will now be removed automatically by the javascript.
-Added support for all gTLDs from ICANN's <a href="http://data.iana.org/TLD/tlds-alpha-by-domain.txt" rel="noopener noreferrer" target="_blank">list</a> of gTLDs and ccTLDs.
-Added a simple SSL cert checker (CHECK-MATE).
-Added a function to get the raw whois data (WHOYOU).
-BBC Special will now display the Registrant Info, the Domain Tech and Admin details on the bottom of the basic check (BBC spacial)  result (queried from the whois server of the the registrar).
-Created a custom result for .CA .AU and .NZ domains on BBC special.
-Added the ability of bbcx.sh to convert all uppercase letters to lowercase during the script execution.
-Added the ability of the bash scripts to try to identify who owns the IP address from the "A and MX record dig results".
-Added the ability to cycle through multiple IP addresses under the A and MX record dig result on BBC special.

Origins:
-brought <a href="https://github.com/zyxrhythm/zyx-kit-codex/tree/master/lib/scripts/domaintools" rel="noopener noreferrer" target="_blank">zyx-kit</a> custom bash scripts out via CGI so the same result from kitty can be viewed on a browser.

-----------------------

This website uses the Bourne again shell (.sh) for server-side scripting.
The usual Javascript for client side scripting.
The usual HTML and CSS for its simple looks.


If you like the website, and wants to check the codes for improvement 
or just want to deploy it on your own server, the codes are at github:

<a href="https://github.com/zyxrhythm/zyx-kit-codex/tree/master/lib/scripts/cgi" rel="noopener noreferrer" target="_blank">https://github.com/zyxrhythm/zyx-kit-codex/tree/master/lib/scripts/cgi</a>

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
