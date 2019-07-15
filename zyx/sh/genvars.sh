SITEBANNER=$(cat ../zyx/vars/site.vars | gawk '/<-SITE_BANNER/{flag=1;next}/SITE_BANNER->/{flag=0}flag');

DIP=$(cat ../zyx/vars/site.vars | gawk '/<-DIP/{flag=1;next}/DIP->/{flag=0}flag');
SSLC=$(cat ../zyx/vars/site.vars | gawk '/<-SSLCHECK/{flag=1;next}/SSLCHECK->/{flag=0}flag');
WHOIS=$(cat ../zyx/vars/site.vars | gawk '/<-WHOIS/{flag=1;next}/WHOIS->/{flag=0}flag');
DIGGER=$(cat ../zyx/vars/site.vars | gawk '/<-DIGGER/{flag=1;next}/DIGGER->/{flag=0}flag');
