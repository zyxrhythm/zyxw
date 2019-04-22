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

#start the html header
echo "<!DOCTYPE html>
<html>
<title>BBC Special</title>
<head>
<link rel="icon" type="image/png" href="/icon.png" />"

cat <<EOHTML

<input type="button" value="Open Curtain" onclick="return change(this);" />

<script type="text/javascript">
function change( el )
{
    if ( el.value === "Open Curtain" )
        el.value = "Close Curtain";
    else
        el.value = "Open Curtain";
}
</script>

EOHTML

exit 0;
