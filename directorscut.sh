#!/bin/bash
echo "Content-type: text/html"
echo ""
cat <<EOT

<!DOCTYPE html>
<html>
<link rel="icon" type="image/png" href="/icon.png" />
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

footer	{font-family: calibri;
	font-size: 60%;
}

article	{font-family: arial;
	font-size: 43%;
}

pre{
    white-space: pre-wrap;font-size: 115%;
}

</style>
</head>

<body>

<left>
<br>
<br>
<p>
<pre>

Paul
Paul Anthony
Mark Anthony
Mary Genevive
Pamela
Clark
Jeanne
Raymundo
Aries
Walter King

For testing/feedbacks/suggestions/bug reports.

</pre>
</p>

</left>
</body>

</html>

EOT
