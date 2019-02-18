#!/bin/bash
#This script was created by Zyx Rhythm (email:zyxrhythm@gmail.com)
#You can download, copy and use it as you see fit.
#If ever you need to post or show the code to people
#Though you are not required to, crediting the the author will be much appreciated.
################################################
#https://github.com/zyxrhythm
#############################################

#start the html header
echo "Content-type: text/html"
echo ""

echo '<!DOCTYPE html>'

echo '<html>'

#Tab title
echo '<title>BBC Special</title>'

#start of head
echo '<head>'

echo '<link rel="icon" type="image/png" href="/icon.png" />'

cat <<EOCSS
<style>
a {text-decoration: none; }
a:link { color: red;  }
a:active { color: red;  }
a:hover { color: red;  }
a:visited { color: red;  }
div a:link { color: tomato;  font-size: 90%; }
div a:active { color: tomato;  font-size: 90%; }
div a:hover { color: tomato;  font-size: 90%; }
div a:visited { color: tomato;  font-size: 90%; }
strong {color: green;
}
p  { font-family: verdana; font-size: 85%;
}
h1 { font-family: verdana; font-size: 70%;
}
body { background-color:black; color:white;
}
pre{ white-space: pre-wrap; font-size: 85%; font-family: verdana;
}
table { font-family: verdana; border: 2px solid green; font-size: 90%;
}
th { border: 2px solid green;
}
td { vertical-align: top; text-align: left; border: 1px solid green;
}
</style>

</head>
EOCSS

cat << EOH2

<body>
<SCRIPT LANGUAGE="JavaScript">
function testResults (form) {
    var TestVar = form.inputbox.value;
    alert ("You typed: " + TestVar);
}
</SCRIPT>

<FORM NAME="myform" ACTION="" METHOD="GET">Enter something in the box: <BR>
<INPUT TYPE="text" NAME="inputbox" VALUE=""><P>
<INPUT TYPE="button" NAME="button" Value="Click" onClick="testResults(this.form)">
</FORM>



</body>


</html>
EOH2



exit 0;
