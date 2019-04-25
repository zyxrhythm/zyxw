
#!/bin/bash
#This script was created by Zyx Rhythm (email:zyxrhythm@gmail.com)
#You can download, copy and use it as you see fit.
#If ever you need to post or show the code to people
#Though you are not required to, crediting the the author will be much appreciated.
#################################################
#https://github.com/zyxrhythm
#############################################

SITETITLE=$(cat ./install.config | awk '/#SITE_TITLE/{flag=1;next}/SITE_TITLE#/{flag=0}flag');

TOOLSNAME=$(cat ./install.config | awk '/#TOOLS_NAME/{flag=1;next}/TOOLS_NAME#/{flag=0}flag');

FOOTERMSG=$(cat ./install.config | awk '/#FOOTER_MESSAGE/{flag=1;next}/FOOTER_MESSAGE#/{flag=0}flag');



exit 0;
