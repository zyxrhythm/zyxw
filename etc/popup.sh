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
echo '<title>POP UP</title>'
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
echo "+++++++++++++++++++++++++++ <br>"
echo "$eppstatuscode <br>" 
echo "+++++++++++++++++++++++++++ <br>"
echo "+++++++++++++++++++++++++++ <br>"

cat << POOHSEECAT


POOHSEECAT

echo "<script>
function myFunction() { var x = document.getElementById('$eppstatuscode'); 
if (x.style.display === 'none') { x.style.display = 'block'; } 
else { x.style.display = 'none'; } } 
</script>
"
echo "<a href="" class='button' onclick='myFunction()'>Click Me</a>"

echo "<div id='$eppstatuscode' style="display:none" >$parsedtable</div>"
###########################################
echo '</body>'
###########################################

echo '<footer>'

echo '</footer>'

echo '</html>'

exit 0;
