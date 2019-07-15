revcount=$(cat ../zyx/vars/site.vars | gawk '/<-VER/{flag=1;next}/VER->/{flag=0}flag');

SITETITLE=$(cat ../zyx/vars/site.vars | gawk '/<-SITE_TITLE/{flag=1;next}/SITE_TITLE->/{flag=0}flag');
SITEBANNER=$(cat ../zyx/vars/site.vars | gawk '/<-SITE_BANNER/{flag=1;next}/SITE_BANNER->/{flag=0}flag');

CEMAIL=$(cat ../zyx/vars/site.vars | gawk '/<-CEMAIL/{flag=1;next}/CEMAIL->/{flag=0}flag');

DIP=$(cat ../zyx/vars/site.vars | gawk '/<-DIP/{flag=1;next}/DIP->/{flag=0}flag');
SSLC=$(cat ../zyx/vars/site.vars | gawk '/<-SSLCHECK/{flag=1;next}/SSLCHECK->/{flag=0}flag');
WHOIS=$(cat ../zyx/vars/site.vars | gawk '/<-WHOIS/{flag=1;next}/WHOIS->/{flag=0}flag');
DIGGER=$(cat ../zyx/vars/site.vars | gawk '/<-DIGGER/{flag=1;next}/DIGGER->/{flag=0}flag');

ROT13=$(cat ../zyx/vars/site.vars | gawk '/<-ROT13/{flag=1;next}/ROT13->/{flag=0}flag' | tr '[A-Za-z]' '[N-ZA-Mn-za-m]' );
FOOTER_MESSAGE1=$(cat ../zyx/vars/site.vars | gawk '/<-FOOTER_MESSAGE1/{flag=1;next}/FOOTER_MESSAGE1->/{flag=0}flag');
FOOTER_MESSAGE2=$(cat ../zyx/vars/site.vars | gawk '/<-FOOTER_MESSAGE2/{flag=1;next}/FOOTER_MESSAGE2->/{flag=0}flag');
