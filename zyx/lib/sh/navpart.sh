echo "<script> 
function jsxtable() { var x = document.getElementById('xtable'); 
if (x.style.display === 'none') 
{ x.style.display = 'inline'; } 
else { x.style.display = 'none'; } } 
</script>
<script> 
function jsx2table() { var x = document.getElementById('navtable'); 
if (x.style.display === 'none') 
{ x.style.display = 'inline'; } 
else { x.style.display = 'none'; } } 
</script>
<script> 
function jsxmenu() { var x = document.getElementById('navmenu'); 
if (x.style.display === 'none') 
{ x.style.display = 'inline'; } 
else { x.style.display = 'none'; } } 
</script>
<p><a href='/cgi-bin/home.zyx' style='float:left'>[ &#127968;Home ]</a>
<div id='navtable' style='display:none; float:right;' >
<a style='font-size: 126%; cursor: pointer; float:right; ' onclick='jsxtable(); jsx2table(); jsxmenu()' > &#9776;</a>
<br><br>
<table id='navlinkz'> <tbody>
<tr><td><a href='/cgi-bin/dip.zyx' >&#8625; $DIP &#8626;</a></td></tr>
</tbody></table><br>
<table id='navlinkz'> <tbody>
<tr><td><a href='/cgi-bin/whois.zyx' >&#8625; $WHOIS &#8626;</a></td></tr>
</tbody></table><br>
<table id='navlinkz'> <tbody>
<tr><td><a href='/cgi-bin/sslinfo.zyx' >&#8625; $SSLC &#8626;</a></td></tr>
</tbody></table><br>
<table id='navlinkz'> <tbody>
<tr><td><a href='/cgi-bin/digger.zyx' >&#8625; $DIGGER &#8626;</a></td></tr>
</tbody></table><br>
</div>
<div id='navmenu' >
<a style='color:tomato; cursor: pointer; font-size:126%; float:right;' onclick='jsxtable(); jsx2table(); jsxmenu();'> &#9776; </a>
</div>
<br><br>";