TLDLISTX=$(cat ../zyx/tldlistx.txt | tr -d '\040\011\012\015');
TLDLISTG=$(cat ../zyx/tldlistg.txt | tr -d '\040\011\012\015');
TLDLIST0=$(cat ../zyx/tldlist0.txt | tr -d '\040\011\012\015');

ALLTLD="$TLDLISTX|$TLDLISTG|$TLDLIST0";