#This feeds the common vars on the /zyx/vars/site.vars

# SITE BANNER - th eBIG TEXT on the very top of the home page
SITEBANNER=$(cat ../zyx/vars/site.vars | gawk '/<-SB_META_TAG/{flag=1;next}/SB_META_TAG->/{flag=0}flag');

#Name of Tool 1 - special tool - dip.zyx
DIP=$(cat ../zyx/vars/site.vars | gawk '/<-DIP/{flag=1;next}/DIP->/{flag=0}flag');
#Name of Tool 2 - SSL checker - sslinfo.zyx
SSLC=$(cat ../zyx/vars/site.vars | gawk '/<-SSLCHECK/{flag=1;next}/SSLCHECK->/{flag=0}flag');
#Name of Tool 3 - whois tool - whois.zyx
WHOIS=$(cat ../zyx/vars/site.vars | gawk '/<-WHOIS/{flag=1;next}/WHOIS->/{flag=0}flag');
#Name of Tool 4 - DIG tool - digger.zyx
DIGGER=$(cat ../zyx/vars/site.vars | gawk '/<-DIGGER/{flag=1;next}/DIGGER->/{flag=0}flag');
