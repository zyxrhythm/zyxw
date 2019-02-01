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
echo '<title>BBC Special</title>'
###########################################
echo '<head>'
###########################################

###########################################
echo '</head>'
###########################################
echo '<body>'
###########################################
eppstatuscode="pendingdelete"

parsedtable=$(cat ./eppstatuscodes.sh | sed -n '/^<!--tag'"$eppstatuscode"'0-->/,/^<!--tag'"$eppstatuscode"'1-->/p;/^<!--tag'"$eppstatuscode"'1-->/q;');

echo "$eppstatuscode <br>" 

echo '<a class="trigger_popup_fricc" >Click here to show the popup</a> <br>'

lineprint=$( statpopup "$parsedtable"); 
echo "$lineprint";

cat << JAVSCRIPT1

<script>
function myFunction() {
  var x = document.getElementById("$eppstatuscode");
  if (x.style.display === "block") {
    x.style.display = "none";
  } else {
    x.style.display = "block";
  }
} 
</script>

JAVSCRIPT1

cat << HIDESHOWDIV
 <a href=# onclick="myFunction()">Click Me</a>
$parsedtable

</div> 
HIDESHOWDIV


cat << POOHSEECAT1

<script>
$('.targetDiv').hide();
    $('.show').click(function () {
        $('#div' + $(this).attr('target')).toggle('').siblings('.targetDiv').hide('');
    });
</script>

<div class="buttons">
        <a  class="show" target="1">Option 1</a>
        <a  class="show" target="2">Option 2</a>
        <a  class="show" target="3">Option 3</a>
        <a  class="show" target="4">Option 4</a>
    </div>

    <div id="div1" class="targetDiv">Lorum Ipsum 1</div>
    <div id="div2" class="targetDiv">Lorum Ipsum 2</div>
    <div id="div3" class="targetDiv">Lorum Ipsum 3</div>
    <div id="div4" class="targetDiv">Lorum Ipsum 4</div>

POOHSEECAT1

###########################################
echo '</body>'
###########################################

echo '<footer>'

echo '</footer>'

echo '</html>'

exit 0;
