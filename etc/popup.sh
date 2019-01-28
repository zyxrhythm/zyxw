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

cat << EOSS

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	
EOSS


echo '<link rel="icon" type="image/png" href="/icon.png" />'

#from https://html-online.com/articles/simple-popup-box/
echo "<script>"
echo "	\$(window).load(function () {"
echo "	\$('.trigger_popup_fricc').click(function(){"
echo "	\$('.hover_bkgr_fricc').show(); });"
echo "	\$('.hover_bkgr_fricc').click(function(){"
echo "	\$('.hover_bkgr_fricc').hide(); });"
echo "	\$('.popupCloseButton').click(function(){"
echo "	\$('.hover_bkgr_fricc').hide(); }); });"
echo "</script>"
#from https://html-online.com/articles/simple-popup-box/


eppstatuscode="ok"

cat <<EOC

<style>

/* from https://html-online.com/articles/simple-popup-box/ */
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
    width: 90%;
    position: relative;
    border-radius: 1px;
    padding: 3px 5%;
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
/* from https://html-online.com/articles/simple-popup-box/ */

</style>

EOC

echo '</head>'

echo '<body>'

echo "$eppstatuscode"

cat << EOH

<a class="trigger_popup_fricc" onclick="myFunctionxx();">Click here to show the popup</a>

<div class="hover_bkgr_fricc">
    <span class="helper"></span>
    <div>
        <div class="popupCloseButton">X</div>
        <p>

<iframe id="myFrame" src="/cgi-bin/eppstatuscodes.sh#$eppstatuscode" style="height:666px;width:100%"></iframe>

	</p>
	</div>
    </div>
</div>

EOH

echo '</body>'

echo '<footer>'

#echo '<!-- from https://html-online.com/articles/simple-popup-box/ -->'

#echo '<script>'
#echo "function myFunctionxx() {"
#echo "  var iframe = document.getElementById($eppstatuscode);"
#echo "  var elmnt = iframe.contentWindow.document.getElementsByTagName('table')[0];"
#echo "  elmnt.style.display = 'none';"
#echo "} </script>"

echo '</footer>'

echo '</html>'


exit 0;
