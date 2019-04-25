#!/bin/bash
#This script was created by Zyx Rhythm (email:zyxrhythm@gmail.com)
#You can download, copy and use it as you see fit.
#If ever you need to post or show the code to people
#Though you are not required to, crediting the the author will be much appreciated.
################################################
#https://github.com/zyxrhythm
#############################################
# TEST SH - 
####################################
#start the html header
echo "Content-type: text/html"
echo ""

echo '<!DOCTYPE html>'

echo '<html>'

#Tab title
echo '<title>TSH</title>'

#start of head
echo '<head>'
echo '<link rel="icon" type="image/png" href="/icon.png" />'

echo '<meta name="viewport" content="width=device-width, initial-scale=1.0">'

#CSS
cat <<EOS
<style>

a:link { color: red;  }
a:active { color: red;  }
a:hover { color: red;  }
a:visited { color: red;  }

p  {
    font-family: verdana;
    font-size: 85%;
}

h1 {font-family: verdana;
	font-size: 70%;
}


body {background-color:black;color:white;
}

pre{
    white-space: pre-wrap;font-size: 110%;
}

</style>

EOS

#end of head
echo '</head>'

echo '<body>'

echo "+++++++++++++++TEST PAGE++++++++++++++++"

qs=$(echo $QUERY_STRING | awk '{print tolower($0)}' );

domain=$(echo $qs | cut -f2 -d"=" );

echo "<br/>Domain:<br/>$domain <br/>"

#zyx=$(whois $domain);

deeg=$(dig +short $domain @8.8.8.8 );

echo "<br/><pre>A:<br/>$deeg</pre> <br/>"

#function my1stwfunc()
#{
#while IFS= read -r line
#do
#   ar0=$(whois $line );
#   ar1=$( echo "$ar0" | grep -i -e 'orgname' );
#   if [[ -z "$ar1" ]]; then ar2=$( echo "$ar0" | grep -i -e 'netname' ); else ar2="$ar1"; fi;
#   arx=$( echo "$ar2" | sort -u );
#   echo "<br/>   $line --- <a href=/cgi-bin/etc/bbcws.sh?doi=$line target=_blank style=color:tomato >[?]</a> " "${arx#*:}";
#done < <(printf '%s\n' "$deeg");
#}

#result="$(my1stwfunc)"
#echo "$result"

#SHARKS 2
function my2ndwfunc()
{
while IFS= read -r line2
do
   ar02=$(whois $line2 );
   ar12=$( echo "$ar02" | grep -i -e 'orgname' );
   if [[ -z "$ar12" ]]; then ar22=$( echo "$ar02" | grep -i -e 'netname' ); else ar22="$ar12"; fi;
   arx2=$( echo "$ar22" | sort -u );
   echo "<br/>   $line2 --- <a href=/cgi-bin/etc/bbcws.sh?doi=$line2 target=_blank style=color:tomato >[?]</a> " "${arx2#*:}";
done < <(printf '%s\n' "$1");
}

#FEEDING THE SHARK
result2=$( my2ndwfunc "$deeg" )
echo "$result2"

cat << EOHF

</body>
</html>

EOHF

exit 0;

