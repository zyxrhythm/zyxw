############################
#exclulded TLDS for dip.zyx
TLDLISTX=$(cat ../zyx/lib/blob/tldlistx.blob | tr -d '\040\011\012\015');
#general list of TLD that dip.zyx can chew on
TLDLISTG=$(cat ../zyx/lib/blob/tldlistg.blob | tr -d '\040\011\012\015');
#TLD list that dip.zyx can chew on bu will spit out a raw whois result
TLDLIST0=$(cat ../zyx/lib/blob/tldlist0.blob | tr -d '\040\011\012\015');
############################

############################
#complete list of gTLDs
GTLDLIST=$(cat ../zyx/lib/blob/gtldx.blob | tr -d '\040\011\012\015');
#complete list of ccTLDs
CCTLDLIST=$(cat ../zyx/lib/blob/cctldx.blob | tr -d '\040\011\012\015');
############################

############################
#ALL supported TLDs.
ALLTLD="$TLDLISTG|$TLDLIST0";
#ALL TLDs.
ALLTLDX="$GTLDLIST|$CCTLDLIST"
############################
