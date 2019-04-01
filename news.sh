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
<center>[ History ]</center>

-----------------------

- As per report, Who You and BBC special should now be able to handle .mil domains properly.

- Improved results, error handling and days counter of S.C.C.

- Added custom BBC special result for .eu domains, and some improvements on .uk domains result.

- Improved the capability of the S.C.C. to identify a domain from a sub domain, and improved its ability to check if an ssl is issued for a domain / sub domain, also improved its error identication and message.

- Added a "Daysleft" counter on S.C.C. results.

- Added navigation menu on BBC Special, Who You, S.C.C. and Big Nick Digger results page.

- As per request, added a refesh button on BBC Special, Who You, S.C.C. and Big Nick Digger results page.

- Some improvements on BBC Special, Who You, S.C.C. and Big Nick Digger results page.

- Fixed Bug: about registrar whois server not found or invalid yet the footer displays no error.

- Fixed bug: days left counter til the registrar expiration date on BBC special result displays 0, the whois server is not found but the counter script still calculated the days left. So instead of a numeric value, the counter will now display an error message instead. 

- Added custom BBC special result for .jp domains.

- Added whois error check for invalid / unregistered .nz domains.

- Added custom BBC special result for .gov domains.

- Some code optimizations 3/27/19.

- Added custom BBC special result for .edu domains.

- Fixed Bug: about the 'days counter' for the creation and expiration dates on BBC result is displaying 0, even if the date is found.

- Changed the BBC results page Copy button name from 'BBC Copy' to 'Copy Result' - also added a tooltip on the pointing hand next to the button.

- Some few modifications with how the results are displayed on BBC special results.

- As per request, added a table of 'days left' before the domain expiration (not part of the request, but also added 'days counted' since registration) - this table can be spawned by clicking &#9660; after the registrar expiry date.

- Added the javascript from the homepage that filters valid characters placed on the text box to the BBC results page..

- As per request, added a text box on BBC special result's page in which another BBC special result can be initiated.

- Fixed: .nz domains not supported by WHO YOU.

- Added  "registrar country" on the BBC special result for .nz domains.

- Added the same 'name server report generation process' for GTLD's in the 'name server report generation process' for .nz domains. 

- Fixed bug: BBC special result show  "Not Found!" on the footer  instead of "Registrar WHOIS Server: Not Found!"

- As per request, added [ &#127968;Home ] on BBC special result page (to make it a little user friendly).

- Instead of seeing a blank space, added a message response when the registrar registrartion expiration date is not found on BBC special result.  

- Added an up to date counter of the revisions made to the site on the footer of the home page, the counter's base number is from the commits done on github.

- Moved some links and details below the home page to the top, with a couple of visual edits.

- Fixed reported bug: registrar names are repeated on BBC special whois result.

- Fixed reported bug: when the BBC Copy button on BBC special copies the result, the copied reults contains a lot of improper line breaks when pasted.

- As per request, added registrar expiration date on BBC special result , and highlighted the time on the creation and expiration dates.

- As per request, added tooltips accross the website.

- A lot of bug fixes and UI improvements.

- gTLD and ccTLD list changed to tldlist0 and tldlist1.

- Added .ca .us .co .cc .me .ac domains to the same process intended for GTLDs.

- Added custom process for .ph .sg .vn domains.

- Added  &#9654; in line with IP addresses that links to the full whois info of that IP address. 

- Added &#9660; on the list of name servers: when click will show a 'MX presentation like' detail about the name servers. 

- Changed [?] to &#10067;

- Changed [+] to &#9960;

- Added to bbcx.sh the ability to cycle through domain statuses and create a [?] before each status that links to  a table about the status at eppstatuscodes.sh.

- Moved securitytrails.com DNS history links to the '[+]'s.

- Added highlights (Green Bold) on some of the text on BBC special result.

- Fixed reported bug: WHOYOU was not able to give raw whois results when querying the registry whois server. 

- Fixed reported bug: WHOYOU, Big Nick Digger and CHECK-MATE not able to process .au ccTLDs. 

- [MX records:] is now cliackable, it links to the the MX records history from https://securitytrails.com/

- [A records:] is now cliackable, it links to the the A records history from https://securitytrails.com/

- [Name Servers:]  is now clickable, it links to the the name server history from https://securitytrails.com/

- [Domain Status:]  is now clickable, it links to ICANN's page for EPP Status Codes.

- Added to custom process for .au .nz .uk domains.

- The website should now be accessible anywhere in the world - as per request.

- Disabled unecessary services (bind9, mysql, nginx, webmin, postfix, php7.0-fpm), and focused the server to only serve BBC pages (hopefully will take care of the 500 Internal server errors from failures to allocate memory to apache processes), and will prevent chinese attackers from executing randomly named php files which causes alot of access and error logs. 

- Fixed reported bug: Big Nick Digger, WHOYOU and CHECK-MATE were unable to process .ca domains.

- Fixed reported bug: Big Nick Digger shows only "+noall" as result when digging a specified name server.

- As per request, added the "Guide Lines" (made out of dashes and underscores) for better visuals of BBC special results.

- Fixed reported bug: the website cannot process domains with .store TLDs even though the tld is listed on the supported TLDs.

- Restricted the access to the website, the site can only be accessed by From selected locations (CNX(IPG) and SPI(MIT)), because of cyber attacks.

- Speed and stability fixes: (removed full url links [https://] from the codes and replacing them with file locations, removing the need for another DNS resolution for incresed speed, added a cron that will restart apache2 every hour for statibility -to temporarily handle the 500 server internal Errors)

- Removed extra whois result from all ccTLDs.

- Added a domain validity check at the start of the BBC special script process.

- .CA .NZ domains will now not display the extra whois result on the bottom of the BBC special result.

- BBC special will now querry 8.8.8.8 by default instead of the localhost bind server. 

- White spaces and invalid special characters on the textfields will now be removed automatically by the javascript.

- Added support for all gTLDs from ICANN's <a href="http://data.iana.org/TLD/tlds-alpha-by-domain.txt" rel="noopener noreferrer" target="_blank">list</a> of gTLDs and ccTLDs.

- Added a simple SSL certificate checker (CHECK-MATE).

- Fixed the reported issue that the site cannot process domains with .media TLD, added .media TLD to the supported TLDs.

- Added a function to get the raw whois info from whois servers (WHOYOU).

- BBC Special will now display the Registrant Info, the domain Tech and Admin contact details on the bottom of the result (queried from the whois server of the the registrar).

- Created a custom result for .CA .AU and .NZ domains on BBC special.

- Added the ability of bbcx.sh to convert all uppercase letters to lowercase during the script execution, for easier execution. (Original Core sh files Update)

- Added the ability of the bash scripts to try to identify who owns the IP address from the "A and MX record dig results". (Original Core sh files Update)

- Added the ability to cycle through multiple IP addresses under the A and MX record dig result on BBC special. (Original Core sh files Update)

------------------------------------
The above are just notable updates made on the source codes,
most of the minor updates are not included.
------------------------------------


For bugs and other concerns please email:
director@bigblackcactus.com




<center>
-----------------------
##### ZYXRhythm ######
-----------------------
</center>
</pre>
<br>
</p>

</left>
</body>

</html>

EOT

exit 0;
