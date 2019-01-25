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

#<SCRIPT LANGUAGE="JavaScript" SRC="/etc/script.js"></SCRIPT>

cat <<EOS

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	
<script type="text/javascript" src="https://www.google.com/jsapi"></script>

EOS

echo "<script>"
echo "	\$(window).load(function () {"
echo "	\$('.trigger_popup_fricc').click(function(){"
echo "	\$('.hover_bkgr_fricc').show(); });"
echo "	\$('.hover_bkgr_fricc').click(function(){"
echo "	\$('.hover_bkgr_fricc').hide(); });"
echo "	\$('.popupCloseButton').click(function(){"
echo "	\$('.hover_bkgr_fricc').hide(); }); });"
echo "</script>"

cat <<EOC

<style>
/* Popup box BEGIN */
.hover_bkgr_fricc{
    background:rgba(0,0,0,.4);
    cursor:pointer;
    display:none;
    height:100%;
    position:fixed;
    text-align:center;
    top:0;
    width:100%;
    z-index:10000;
}
.hover_bkgr_fricc .helper{
    display:inline-block;
    height:100%;
    vertical-align:middle;
}
.hover_bkgr_fricc > div {
    background-color: #fff;
    box-shadow: 10px 10px 60px #555;
    display: inline-block;
    height: auto;
    max-width: 551px;
    min-height: 100px;
    vertical-align: middle;
    width: 60%;
    position: relative;
    border-radius: 8px;
    padding: 15px 5%;
}
.popupCloseButton {
    background-color: #fff;
    border: 3px solid #999;
    border-radius: 50px;
    cursor: pointer;
    display: inline-block;
    font-family: arial;
    font-weight: bold;
    position: absolute;
    top: -20px;
    right: -20px;
    font-size: 25px;
    line-height: 30px;
    width: 30px;
    height: 30px;
    text-align: center;
}
.popupCloseButton:hover {
    background-color: #ccc;
}
.trigger_popup_fricc {
    cursor: pointer;
    font-size: 20px;
    margin: 20px;
    display: inline-block;
    font-weight: bold;
}
/* Popup box BEGIN */
</style>

EOC

echo '</head>'

cat << EOH
<body>

<a class="trigger_popup_fricc">Click here to show the popup</a>

<div class="hover_bkgr_fricc">
    <span class="helper"></span>
    <div>
        <div class="popupCloseButton">X</div>
        <p>
	<table scr="#addperiod" >
	</table>
	</p>
    </div>
</div>

<table id="addperiod">
<tbody>
<tr>
<th>Status Code</th>
<th>What does it mean?</th>
<th>Should you do something?</th>
</tr>
<tr>
<td>addPeriod</td>
<td><p>This grace period is provided after the initial registration of a domain name. If the registrar deletes the domain name during this period, the registry may provide credit to the registrar for the cost of the registration.</p></td>
<td><p>This is an informative status set for the first several days of your domain's registration. There is no issue with your domain name.</p></td>
</tr>
</tbody>
</table>

</body>
</html>



<a data-toggle="modal" href="#myModal" class="btn btn-primary btn-lg">Launch demo modal</a>

<div class="modal fade" id="myModal">
<div class="modal-dialog">
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
      <h4 class="modal-title">Modal title</h4>
    </div>
    <div class="modal-body">
      <table>
          <thead>
          </thead>
          <tbody class="table">
              <tr>
                  <td>1</td>
                  <td>2</td>
              </tr>
              <tr>
                  <td>3</td>
                  <td>4</td>
              </tr>
          </tbody>
      </table>
    </div>
    <div class="modal-footer">
      <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
    </div>
  </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
</div><!-- /.modal -->

EOH

exit 0;
