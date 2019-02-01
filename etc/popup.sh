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

cat << HEADERSCRIPTS

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>
$('.targetDiv').hide();
    $('.show').click(function () {
        $('#div' + $(this).attr('target')).toggle('').siblings('.targetDiv').hide('');
</script>

HEADERSCRIPTS

cat << HEADERSTYLES

HEADERSTYLES

###########################################
echo '</head>'
###########################################
echo '<body>'
###########################################
eppstatuscode="pendingdelete"

parsedtable=$(cat ./eppstatuscodes.sh | sed -n '/^<!--tag'"$eppstatuscode"'0-->/,/^<!--tag'"$eppstatuscode"'1-->/p;/^<!--tag'"$eppstatuscode"'1-->/q;');

echo "$eppstatuscode <br>" 
echo "$parsedtable <br>" 

cat << POOHSEECAT

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

POOHSEECAT

###########################################
echo '</body>'
###########################################

echo '<footer>'

echo '</footer>'

echo '</html>'

exit 0;
