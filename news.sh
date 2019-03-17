#!/bin/bash
echo "Content-type: text/html"
echo ""
cat <<EOT

<!DOCTYPE html>
<html>
<link rel="icon" type="image/png" href="/icon.png" />
<head>
<title>BBC ( Times )</title>

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
-----------------------
History:

- Added registrar expiration date on BBC special result , and highlighted the time on the creation and expiration dates.

- Added tooltips accross the website.

- A lot of bug fixes and UI improvements.

- Added  &#9654; in line with IP addresses that links to the full whois info of that IP address. 

- Added &#9660; on the list of name servers: when click will show a 'MX presentation like' detail about the name servers. 

- Changed [?] to &#10067;

- Changed [+] to &#9960;

- Added to bbcx.sh the ability to cycle through domain statuses and create a [?] before each status that links to what each status mean.

- Moved securitytrails.com DNS history links to the '[+]'s.

- Added highlights on BBC special result.

- Fixed report about WHOYOU was not able to give raw whois results when querying the registry whois server. 
(The issue seems to be with the the recent revision with the front page WHOYOU drop down the script does not recognize the new entries in the selection menu)

- Fixed report about WHOYOU, Big Nick Digger and CHECK-MATE not able to process .au ccTLDs. 
(.au ccTLD was somehow removed from the sourcecode.)

- [MX records:] is now cliackable, it links to the the MX records history from https://securitytrails.com/

- [A records:] is now cliackable, it links to the the A records history from https://securitytrails.com/

- [Name Servers:]  is now clickable, it links to the the name server history from https://securitytrails.com/

- [Domain Status:]  is now clickable, it links to ICANN's page for EPP Status Codes.

- The website should now be accessible anywhere in the world - as per request.

- Disabled unecessary services (bind9, mysql, nginx, webmin, postfix, php7.0-fpm), and focused the server to only serve BBC pages (hopefully will take care of the 500 Internal server errors from failures to allocate memory to apache processes), and will prevent chinese attackers from executing randomly named php files which causes alot of access and error logs. 

- Fixed reported bug that  Big Nick Digger, WHOYOU and CHECK-MATE were unable to process .ca domains.

- Fixed reported bug of Big Nick Digger which shows only "+noall" as result when digging a specified name server.

- Added the requested "Guide Lines" for better visuals of BBC special results.

-Fixed reported bug that the website cannot process domains with .store TLDs even though the tld is listed on the supported TLDs.

- Restricted the access to the website, the site can only be accessed by From selected locations, because of cyber attacks.

- Speed and stability fixes: (removed full url links from the codes removing the need for another DNS resolution for incresed speed, added a cron that will restart apache2 every hour for statibility -to temporarily handle the 500 server internal Errors)

- Removed extra whois result from all ccTLDs.

- Added a domain validity check at the start of the BBC special script process.

- .CA .NZ domains will not show the extra whois result on the bottom of the BBC special result.

- BBC special will now querry 8.8.8.8 by default instead of the localhost bind server. 

- White spaces and invalid special characters on the textfields will now be removed automatically by the javascript.

- Added support for all gTLDs from ICANN's <a href="http://data.iana.org/TLD/tlds-alpha-by-domain.txt" rel="noopener noreferrer" target="_blank">list</a> of gTLDs and ccTLDs.

- Added a simple SSL certificate checker (CHECK-MATE).

- Fixed the reported issue that the site cannot process domains with .media TLD, added .media TLD to the supported TLDs.

- Added a function to get the raw whois info from whois servers (WHOYOU).

- BBC Special will now display the Registrant Info, the domain Tech and Admin contact details on the bottom of the result (queried from the whois server of the the registrar).

- Created a custom result for .CA .AU and .NZ domains on BBC special.

- Added the ability of bbcx.sh to convert all uppercase letters to lowercase during the script execution.

- Added the ability of the bash scripts to try to identify who owns the IP address from the "A and MX record dig results".

- Added the ability to cycle through multiple IP addresses under the A and MX record dig result on BBC special.

------------------------------------------------




For bugs and other concerns please email:
director@bigblackcactus.com





-----------------------
##### ZYXRhythm ######
-----------------------
</pre>
<br>
</p>

</left>
</body>

</html>

EOT

exit 0;
