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

<style>
h1 { font-family: courier new; font-size: 150%;}
a:link { color: green; }
a:visited { color: green; }
a:hover { color: green; }
a:active { color: green; }
body {background-color:black;color:green}
p { font-family: calibri; font-size: 100%;}
footer {font-family: calibri; font-size: 60%;}
article	{font-family: arial; font-size: 43%;}
pre{white-space: pre-wrap;font-size: 100%;}
</style>

<center>
<p><h1><a href="/cgi-bin/bbc.sh">Big Black Cactus</a></h1></p>
<p><a href="/cgi-bin/bbc.sh" style='text-decoration: none; color: red; '>[ &#127968;Home ]</a></p>
</center>

</head>

<body>
<left>
<br>
<br>
<p>
<pre>
-------------------------------
BigBlackCactus.com (BBC) is a website you can use for the following: 

> Do a 'whois lookup' for a domain name or I.P. Address directly from the whois server/s  of registries and registrars (for domain names) and whois server/s of A.R.I.N.(for I.P. addresses).

> Do a 'dig' of D.N.S. records (A,MX,SOA,NS,TXT,SPF,CAA,AAAA) of domain names, sub domains and hostnames directly from one of Google's Public DNS server (8.8.8.8), or from a particular name server specified by the user. 

> Reverse an I.P. address to its domain/host name (PTR).

> And can also provide info about the S.S.L. certificate issued for a domain name/sub domain.

-------------------------------




===============================
-This website uses <a href="https://en.wikipedia.org/wiki/Bash_(Unix_shell)" target="_blank" class="tooltip">Bash</a> (Bourne again shell) for server-side scripting.
-The usual Javascript for client side scripting.
-The usual HTML and CSS for its simple looks.
===============================




#########################
#For bugs and other concerns please email:
#director@bigblackcactus.com
#################


















*******************************
[ Extra info for the geeks (What the scripts are working with) ] 
*******************************
:~# lsb_release -a
No LSB modules are available.
Distributor ID: Ubuntu
Description:    Ubuntu 16.04.6 LTS
Release:        16.04
Codename:       xenial
*******************************
:~# bash --version
GNU bash, version 4.3.48(1)-release (x86_64-pc-linux-gnu)
*******************************
~# whois --version
Version 5.2.11.
*******************************
:~# dig -v
DiG 9.10.3-P4-Ubuntu
*******************************
:~# nslookup -version
nslookup 9.10.3-P4-Ubuntu
*******************************
:~# openssl version
OpenSSL 1.0.2g  1 Mar 2016
*******************************
:~# nmap -version
Nmap version 7.01 ( https://nmap.org )
Platform: x86_64-pc-linux-gnu
Compiled with: liblua-5.2.4 openssl-1.0.2g libpcre-8.38 
libpcap-1.7.4 nmap-libdnet-1.12 ipv6
Compiled without:
Available nsock engines: epoll poll select
*******************************
:~# cat /etc/resolv.conf
nameserver 8.8.8.8
nameserver 8.8.4.4
*******************************
:~# cat /etc/whois.conf
<a href="/cgi-bin/whois.conf.sh" target="_blank" >whois server list</a> 
*******************************
TLD lists: (<a href="/cgi-bin/gtld.sh" target="_blank" >list1</a> and <a href="/cgi-bin/cctld.sh" target="_blank" >list2</a>).  
*******************************
String manipulation and other opearations (server-side): 
echo, cat, grep, sed, awk, cut, tr, rev, bc, column, host, git,
gitrevcount, POSIX character expansions, shopt (extglob).
*******************************


</pre>
<br>
</p>
<p style='color: red; text-decoration: none; font-family: calibri'><small><<</small><input type='button' style='background:none; border:none; font-size:95%; color: red;' value='back | track' onClick='history.go(-1);'></p>
</left>
</body>

</html>

EOT

exit 0;