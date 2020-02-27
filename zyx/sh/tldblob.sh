#This dictates what TLDs are supported by the scripts

#exclulded TLDS for dip.zyx
TLDLISTX=$(cat ../zyx/blob/tldlistx.blob | tr -d '\040\011\012\015');
#general list of supported TLD for dip.zyx
TLDLISTG=$(cat ../zyx/blob/tldlistg.blob | tr -d '\040\011\012\015');
#supported TLD list for dip.zyx - but will output raw whois info
TLDLIST0=$(cat ../zyx/blob/tldlist0.blob | tr -d '\040\011\012\015');


#complete list of gTLDs
GTLDLIST=$(cat ../zyx/blob/gtldx.blob | tr -d '\040\011\012\015');
#complete list of ccTLDs
CCTLDLIST=$(cat ../zyx/blob/cctldx.blob | tr -d '\040\011\012\015');


#ALL supported TLDs by dip.zyx - that is not coded directly on the script.
ALLTLD="$TLDLISTG|$TLDLIST0";
#ALL TLDs.
ALLTLDX="$GTLDLIST|$CCTLDLIST"
