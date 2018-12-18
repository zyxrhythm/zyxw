#!/bin/bash
#This script was created by Zyx Rhythm (email:zyxrhythm@gmail.com)
#You can download, copy and use it as you see fit.
#If ever you need to post or show the code to people
#Though you are not required to, crediting the the author will be much appreciated.
################################################
#https://github.com/zyxrhythm 
#############################################
echo "Content-type: text/html"
echo ""
cat <<EOT

<!DOCTYPE html>
<html>
<link rel="icon" type="image/png" href="https://www.bigblackcactus.com/icon.png" />
<head>
<title>BBC ( v 0.5 )</title>

<style>

a:link { color: green; }
a:active { color: green; }
a:hover { color: green; }
a:visited { color: green; }

h1	{    font-family: courier new;
    font-size: 150%;
}

body	{	background-color:black;color:green;
}

p	{	font-family: calibri;
    font-size: 100%;
}

label	{	font-family: Trebuchet MS;
	font-size: 110%;
}
	
button	{	font-family: Trebuchet MS;
	font-size: 70%;
}

footer	{	font-family: Georgia;
	font-size: 100%;
}

code	{	font-family: Arial;
	font-size: 80%;

}

article	{	font-family: Verdana;
	font-size: 70%;
}





# thanks to https://www.mediacollege.com/internet/javascript/form/remove-spaces.html
#removes nasty white spaces on the text fields that causes alot of issue


</style>
<script language="javascript" type="text/javascript">
function removeSpaces(string) {
 return string.split(' ').join('');
}
</script>


</head>

<body>

<center>

<p>
<h1>
<a href="https://www.bigblackcactus.com/cgi-bin/bbc.sh">Big Black Cactus</a>
</h1>
</p>

<p>
<b>Once you GO BLACK, you can never GO BACK!</b>
<br>
<form action="bbcx.sh" method="get">
<label>Domain: </label> 
<input type="text" onblur="this.value=removeSpaces(this.value);" name="domain">
<button type="submit">BBC</button>
</form>
<br>
<br>
<br>
<br>
</p>
<form>

</form>
<p>
<form action="bbcws.sh" method="get">
<h1>WHOYOU</h1>
<label>Domain:</label>
<br>
<input type="text" name="domain"> 
<br>
<select name='whoyou'> 
<option selected>Whois</option>
<option>Registrar Whois Server</option>
</select>
<br/>
<button type="submit"> W H O I S </button>
</form>
</p>

<br>

<p>
<form action="bbcd.sh" method="get">
<h1>Big Nick Digger</h1>
<label>Domain:</label> 
<input type="text" name="domain"> <br><code><b>@</b>NS (Optional)</code>
<input type="text" name="nameserver"> 
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
<button type="submit"> D I G </button>
</form>
</p>

<br>

<p>
<form action="bbcdc1.sh" method="get">
<h1>CHECK MATE</h1>
<label>Domain:</label> 
<input type="text" name="domain">
<br>
<label></label>
<select name='dcheck'> 


<!--
	<option>WHOISIP</option>
	<option>GETHOSTNAME</option>
-->

	<option selected>SSL</option> 
</select>
<button type="submit"> CHECK </button>
</form>
</p>

<p>
<br>
<br>
<a href="https://www.bigblackcactus.com">
<img border="0" alt="Cactus" src="https://www.bigblackcactus.com/cactus2.png" width="26%" height="26%">
</a>
<br>
</p>

<p>


</body>

<footer>
<br>
[&nbsp;&nbsp;" &nbsp;When in doubt... &nbsp;Logout! &nbsp;"&nbsp;&nbsp;]<br>
<br>
rev.317
<br>
<br>
<br>
<b>- <a href=https://www.bigblackcactus.com/cgi-bin/directorscut.sh>Thanks to</a> -</b>
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
</article>
</p>

<article>
Copyleft 2018 &copy;
</article>

</center>


</html>

EOT
