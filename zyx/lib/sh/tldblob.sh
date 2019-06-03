TLDLISTX=$(cat ../zyx/lib/blob/tldlistx.blob | tr -d '\040\011\012\015');
TLDLISTG=$(cat ../zyx/lib/blob/tldlistg.blob | tr -d '\040\011\012\015');
TLDLIST0=$(cat ../zyx/lib/blob/tldlist0.blob | tr -d '\040\011\012\015');

GTLDLIST=$(cat ../zyx/lib/blob/gtldx.blob | tr -d '\040\011\012\015');
CCTLDLIST$(cat ../zyx/lib/blob/cctldx.blob | tr -d '\040\011\012\015');


ALLTLD="$TLDLISTX|$TLDLISTG|$TLDLIST0";