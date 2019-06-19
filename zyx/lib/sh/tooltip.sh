#below are the cat gawks for the homepage toold tips
HOMEDIPT=$(cat ../zyx/vars/tooltip.vars | gawk '/<-HOMEDIPT/{flag=1;next}/HOMEDIPT->/{flag=0}flag');
HOMESSLT=$(cat ../zyx/vars/tooltip.vars | gawk '/<-HOMESSLT/{flag=1;next}/HOMESSLT->/{flag=0}flag');
HOMEWHOIST=$(cat ../zyx/vars/tooltip.vars | gawk '/<-HOMEWHOIST/{flag=1;next}/HOMEWHOIST->/{flag=0}flag');
HOMEDIGT=$(cat ../zyx/vars/tooltip.vars | gawk '/<-HOMEDIGT/{flag=1;next}/HOMEDIGT->/{flag=0}flag');
