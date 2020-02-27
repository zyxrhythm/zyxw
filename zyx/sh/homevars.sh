#https://github.com/zyxrhythm (email:zyxrhythm@gmail.com)
#this feeds the home.zyx script its variables

#Version info on the bottom of the home page
revcount=$(cat ../zyx/vars/site.vars | gawk '/<-VER/{flag=1;next}/VER->/{flag=0}flag');
#What displays on browsers tabs
SITETITLE=$(cat ../zyx/vars/site.vars | gawk '/<-SITE_TITLE/{flag=1;next}/SITE_TITLE->/{flag=0}flag');
#The big text on the front page
SITEBANNER=$(cat ../zyx/vars/site.vars | gawk '/<-SITE_X_BANNER/{flag=1;next}/SITE_X_BANNER->/{flag=0}flag');
#Txt for meta tags
SITEBANNERX=$(cat ../zyx/vars/site.vars | gawk '/<-SITE_BANNER/{flag=1;next}/SITE_BANNER->/{flag=0}flag');
#contact email for the admin
CEMAIL=$(cat ../zyx/vars/site.vars | gawk '/<-CEMAIL/{flag=1;next}/CEMAIL->/{flag=0}flag');

#The four tools:
#dip.zyx
DIP=$(cat ../zyx/vars/site.vars | gawk '/<-DIP/{flag=1;next}/DIP->/{flag=0}flag');
#sslinfo.zyx
SSLC=$(cat ../zyx/vars/site.vars | gawk '/<-SSLCHECK/{flag=1;next}/SSLCHECK->/{flag=0}flag');
#whois.zyx
WHOIS=$(cat ../zyx/vars/site.vars | gawk '/<-WHOIS/{flag=1;next}/WHOIS->/{flag=0}flag');
#digger.zyx
DIGGER=$(cat ../zyx/vars/site.vars | gawk '/<-DIGGER/{flag=1;next}/DIGGER->/{flag=0}flag');

#the encoded message below the site image on the footer of the front page
ROT13=$(cat ../zyx/vars/site.vars | gawk '/<-ROT13/{flag=1;next}/ROT13->/{flag=0}flag' | tr '[A-Za-z]' '[N-ZA-Mn-za-m]' );
#the message below the ecoded message
FOOTER_MESSAGE1=$(cat ../zyx/vars/site.vars | gawk '/<-FOOTER_MESSAGE1/{flag=1;next}/FOOTER_MESSAGE1->/{flag=0}flag');
#the message above the copy left notice
FOOTER_MESSAGE2=$(cat ../zyx/vars/site.vars | gawk '/<-FOOTER_MESSAGE2/{flag=1;next}/FOOTER_MESSAGE2->/{flag=0}flag');


