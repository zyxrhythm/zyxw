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

testvar="WHAT DOES THE FOX SAY"


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

pre{ white-space: pre-wrap; font-size: 85%; font-family: verdana;
}
table { font-family: verdana; border: 2px solid green; font-size: 90%;
}
th { border: 2px solid green;
}
td { vertical-align: top; text-align: left; border: 1px solid green;
}
</style>

<script type="text/javascript">
var qrcode = new QRCode(document.getElementById("qrcode"), {
	width : 100,
	height : 100
});

function makeCode () {		
	var elText = document.getElementById("text");
	
	if (!elText.value) {
		alert("Input a text");
		elText.focus();
		return;
	}
	
	qrcode.makeCode(elText.value);
}

makeCode();

$("#text").
	on("blur", function () {
		makeCode();
	}).
	on("keydown", function (e) {
		if (e.keyCode == 13) {
			makeCode();
		}
	});
</script>


</head>
EOCSS

cat << EOH2

<body>


<script type="text/javascript" src="http://hiddencloud.zyxrhythm.ninja/jquery.min.js"></script>
<script type="text/javascript" src="http://hiddencloud.zyxrhythm.ninja/qrcode.js"></script>

<input id="text" type="text" value="$testvar" style="width:80%; " /><br />
<div id="qrcode" style="width:100px; height:100px; margin-top:15px;"></div>



</body>


</html>
EOH2



exit 0;
