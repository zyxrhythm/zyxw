#!/bin/bash
#This script was created by Zyx Rhythm (email:zyxrhythm@gmail.com)
#You can download, copy and use it as you see fit.
#If ever you need to post or show the code to people
#Though you are not required to, crediting the the author will be much appreciated.
################################################
#https://github.com/zyxrhythm
#############################################

#start the html header
echo "Content-type: text/html"
echo ""

echo '<!DOCTYPE html>'

echo '<html>'

#Tab title
echo '<title>BBC Special</title>'

#start of head
echo '<head>'

echo '<link rel="icon" type="image/png" href="/icon.png" />'

cat <<EOCSS
<style>
a {text-decoration: none; }
a:link { color: red;  }
a:active { color: red;  }
a:hover { color: red;  }
a:visited { color: red;  }
div a:link { color: tomato;  font-size: 90%; }
div a:active { color: tomato;  font-size: 90%; }
div a:hover { color: tomato;  font-size: 90%; }
div a:visited { color: tomato;  font-size: 90%; }
strong {color: green;
}
p  { font-family: verdana; font-size: 85%;
}
h1 { font-family: verdana; font-size: 70%;
}
body { background-color:black; color:white;
}
pre{ white-space: pre-wrap; font-size: 85%; font-family: verdana;
}
table { font-family: verdana; border: 2px solid green; font-size: 90%;
}
th { border: 2px solid green;
}
td { vertical-align: top; text-align: left; border: 1px solid green;
}
</style>

EOCSS

#<SCRIPT LANGUAGE="JavaScript" SRC="/etc/script.js"></SCRIPT>

dstat="ok"

dsfunction2 () {
while IFS= read -r line
do
eppstat=$( echo "${line#*#}" | awk '{print tolower($0)}');  

dsfparsedtable=$( cat ./eppstatuscodes.sh | awk '/<!--tag'"$eppstat"'0-->/{flag=1;next}/<!--tag'"$eppstat"'1-->/{flag=0}flag' );

echo "$dsfparsedtable";

done < <(printf '%s\n' "$1");
}

cat <<EOS
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
EOS

echo "<script>"
echo "	\$(window).load(function () {"
echo "	\$('.trigger_popup_fricc').click(function(){"
echo "	\$('.hover_bkgr_fricc').show(); });"
echo "	\$('.hover_bkgr_fricc').click(function(){"
echo "	\$('.hover_bkgr_fricc').hide(); });"
echo "	\$('.popupCloseButton').click(function(){"
echo "	\$('.hover_bkgr_fricc').hide(); }); });"
echo "</script>"


cat <<HOPE
<script>
function showPos(event, text) {
var el, x, y;

el = document.getElementById('PopUp');
if (window.event) {
x = window.event.clientX + document.documentElement.scrollLeft
+ document.body.scrollLeft;
y = window.event.clientY + document.documentElement.scrollTop +
+ document.body.scrollTop;
}
else {
x = event.clientX + window.scrollX;
y = event.clientY + window.scrollY;
}
x -= 2; y -= 2;
y = y+15
el.style.left = x + "px";
el.style.top = y + "px";
el.style.display = "block";
document.getElementById('PopUpText').innerHTML = text;
}
</script>
HOPE




cat <<EOC
<style>
/* Popup box BEGIN */
.hover_bkgr_fricc{
    background:rgba(0,0,0,.4);
    cursor:pointer;
    display:none;
    height:100%;
    position:fixed;
    text-align:center;
    top:0;
    width:100%;
    z-index:10000;
}
.hover_bkgr_fricc .helper{
    display:inline-block;
    height:100%;
    vertical-align:middle;
}
.hover_bkgr_fricc > div {
    background-color: #fff;
    box-shadow: 10px 10px 60px #555;
    display: inline-block;
    height: auto;
    max-width: 551px;
    min-height: 100px;
    vertical-align: middle;
    width: 60%;
    position: relative;
    border-radius: 8px;
    padding: 15px 5%;
}
.popupCloseButton {
    background-color: #fff;
    border: 3px solid #999;
    border-radius: 50px;
    cursor: pointer;
    display: inline-block;
    font-family: arial;
    font-weight: bold;
    position: absolute;
    top: -20px;
    right: -20px;
    font-size: 25px;
    line-height: 30px;
    width: 30px;
    height: 30px;
    text-align: center;
}
.popupCloseButton:hover {
    background-color: #ccc;
}
.trigger_popup_fricc {
    cursor: pointer;
    font-size: 20px;
    margin: 20px;
    display: inline-block;
    font-weight: bold;
}
/* Popup box BEGIN */
</style>
EOC

echo '</head>'

cat << EOH
<body>
<a class="trigger_popup_fricc">Click here to show the popup</a>
<div class="hover_bkgr_fricc">
    <span class="helper"></span>
    <div>
        <div class="popupCloseButton">X</div>
        <p>
EOH

dsfrgt2=$( dsfunction2 "$dstat" );
echo "$dsfrgt2";
	
cat << EOH2
	</p>
    </div>
</div>


<DIV id='PopUp' style='display: none; position: absolute; left: 100px; top: 50px; border: solid black 1px; padding: 10px; background-color: rgb(200,100,100); text-align: center; font-size: 12px; width: 315;' onmouseover="document.getElementById('PopUp').style.display = 'none' ">
<SPAN id='PopUpText'>
$dsfrgt2
</SPAN>

<input name="ans1b" type="button" value="b" onclick="showPos(event,'$dsfrgt2')" />

</body>


<footer>

</footer>

</html>
EOH2



exit 0;
