#!/bin/bash
echo "Content-type: text/html"
echo ""
cat <<EOT

<!DOCTYPE html>
<html>
<link rel="icon" type="image/png" href="/icon.png" />
<head>
<title>EPP Status</title>

<meta name="description" content="BigBlackCactus.com (BBC) is a website that can look up the whois information of a domain from whois servers, dig DNS records of domains and sub domains from name servers, etc...">
<meta name="keywords" content="DIG, DNS, WHOIS, SSL CHECK">
<meta name="author" content="Zyx Rhythm">
 
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-32625644-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-32625644-1');
</script>

<style>
h1 { font-family: courier new; font-size: 150%;}
a:link { color: green; }
a:visited { color: green; }
a:hover { color: green; }
a:active { color: green; }
body { background-color:black; color:white;}
p { font-family: calibri; font-size: 100%;}
table { font-family: verdana; border: 2px solid green; font-size: 90%;}
th { border: 2px solid green;}
td { vertical-align: top; text-align: left; border: 1px solid green;}
footer{color: green; text-align: center; font-family: verdana; font-size: 65%;}
</style>

<center>
<p><h1><a href="/cgi-bin/bbc.sh">Big Black Cactus</a></h1></p>
<p><a href="/cgi-bin/bbc.sh" style='text-decoration: none; color: red; '>[ &#127968;Home ]</a></p>
</center>
</head>

<body>
<hr><br><br><br><br><br><br>
<!--tagaddperiod0-->
<table id="addperiod">
<table>
<tbody>
<tr>
<th id='noselect'>Status Code</th>
<th id='noselect'>What does it mean?</th>
<th id='noselect'>Should you do something?</th>
</tr>
<tr>
<td>addPeriod<br></td>
<td><p>This grace period is provided after the initial registration of a domain name. If the registrar deletes the domain name during this period, the registry may provide credit to the registrar for the cost of the registration.</p></td>
<td><p>This is an informative status set for the first several days of your domain's registration. There is no issue with your domain name.</p></td>
</tr>
</tbody>
</table>

<!--tagaddperiod1-->

<br><br><br><br><br><br>

<!--tagautorenewperiod0-->
<table id="autorenewperiod">
<tbody>
<tr>
<th id='noselect'>Status Code</th>
<th id='noselect'>What does it mean?</th>
<th id='noselect'>Should you do something?</th>
</tr>
<tr>
<td>autoRenewPeriod<br></td>
<td><p>This grace period is provided after a domain name registration period expires and is extended (renewed) automatically by the registry. If the registrar deletes the domain name during this period, the registry provides a credit to the registrar for the cost of the renewal.</p></td>
<td><p>This is an informative status set for a limited time after your domain's auto- renewal by the registry. If you do not want to keep it (i.e., pay the renewal fee) anymore, you should contact your registrar immediately to discuss what options are available.</p></td>
</tr>
</tbody>
</table>
<!--tagautorenewperiod1-->

<br><br><br><br><br><br>

<!--taginactive0-->
<table id="inactive">
<tbody>
<tr>
<th id='noselect'>Status Code</th>
<th id='noselect'>What does it mean?</th>
<th id='noselect'>Should you do something?</th>
</tr>
<tr>
<td>inactive<br></td>
<td><p>This status code indicates that delegation information (name servers) has not been associated with your domain. Your domain is not activated in the <abbr title="Domain Name System">DNS</abbr> and will not resolve.</p></td><td>
<p>If your domain has remained in this status for several days, you may want to contact your registrar to request information about the delay in processing.</p>
<p>If the <abbr title="Top Level Domain">TLD</abbr> requires documentation to be provided for registration, you may need to provide the required documentation.</p></td>
</tr>
</tbody>
</table>
<!--taginactive1-->

<br><br><br><br><br><br>

<!--tagok0-->
<table id="ok">
<tbody>
<tr>
<th id='noselect'>Status Code</th>
<th id='noselect'>What does it mean?</th>
<th id='noselect'>Should you do something?</th>
</tr>
<tr>
<td>ok<br></td>
</td>
<td><p>This is the standard status for a domain, meaning it has no pending operations or prohibitions.</p></td>
<td><p>Asking your registrar to enact status restrictions, like clientTransferProhibited, clientDeleteProhibited, and clientUpdateProhibited, can help to prevent unauthorized transfers, deletions, or updates to your domain.</p></td>
</tr>
</tbody>
</table>
<!--tagok1-->

<br><br><br><br><br><br>

<!--tagpendingcreate0-->
<table id="pendingcreate">
<tbody>
<tr>
<th id='noselect'>Status Code</th>
<th id='noselect'>What does it mean?</th>
<th id='noselect'>Should you do something?</th>
</tr>
<tr>
<td>pendingCreate<br></td>
<td><p>This status code indicates that a request to create your domain has been received and is being processed.</p></td>
<td><p>If the <abbr title="Top Level Domain">TLD</abbr> is on a special registration period (e.g. sunrise), this may indicate that the domain name will be allocated at the end of such period.</p>
<p>If the <abbr title="Top Level Domain">TLD</abbr> is not on a special registration period and you are NOT the listed <abbr title="Registrant">Registrant</abbr>, you should contact your registrar immediately to resolve the issue.</p></td>
</tr>
</tbody>
</table>
<!--tagpendingcreate1-->

<br><br><br><br><br><br>

<!--tagpendingdelete0-->
<table id="pendingdelete">
<tbody>
<tr>
<th id='noselect'>Status Code</th>
<th id='noselect'>What does it mean?</th>
<th id='noselect'>Should you do something?</th>
</tr>
<tr>
<td>pendingDelete<br></td>
<td><p>This status code may be mixed with redemptionPeriod or pendingRestore. In such case, depending on the status (i.e. redemptionPeriod or pendingRestore) set in the domain name, the corresponding description presented above applies. If this status is not combined with the redemptionPeriod or pendingRestore status, the pendingDelete status code indicates that your domain has been in redemptionPeriod status for 30 days and you have not restored it within that 30-day period. Your domain will remain in this status for several days, after which time your domain will be purged and dropped from the registry database.</p>
<p>Once deletion occurs, the domain is available for re-registration in accordance with the registry's policies.</p></td>
<td><p>If you want to keep your domain name, you must immediately contact your registrar to discuss what options are available.</p></td>
</tr>
</tbody>
</table>
<!--tagpendingdelete1-->

<br><br><br><br><br><br>

<!--tagpendingrenew0-->
<table id="pendingrenew">
<tbody>
<tr>
<th id='noselect'>Status Code</th>
<th id='noselect'>What does it mean?</th>
<th id='noselect'>Should you do something?</th>
</tr>
<tr>
<td>pendingRenew<br></td>
<td><p>This status code indicates that a request to renew your domain has been received and is being processed.</p></td>
<td><p>If you did not request to renew your domain and do not want to keep it (i.e., pay the renewal fee) anymore, you should contact your registrar immediately to discuss what options are available.</p></td>
</tr>
</tbody>
</table>
<!--tagpendingrenew1-->

<br><br><br><br><br><br>

<!--tagpendingrestore0-->
<table id="pendingrestore">
<tbody>
<tr>
<th id='noselect'>Status Code</th>
<th id='noselect'>What does it mean?</th>
<th id='noselect'>Should you do something?</th>
</tr>
<tr>
<td>pendingRestore<br></td>
<td><p>This status code indicates that your registrar has asked the registry to restore your domain that was in redemptionPeriod status. Your registry will hold the domain in this status while waiting for your registrar to provide required restoration documentation. If your registrar fails to provide documentation to the registry operator within a set time period to confirm the restoration request, the domain will revert to redemptionPeriod status.</p></td>
<td><p>Watch your domain's status codes within this frequently defined seven day period to ensure that your registrar has submitted the correct restoration documentation within the time window. If this period ended and your domain has reverted back to a redemptionPeriod status, contact your registrar to resolve whatever issues that may have halted the delivery of your domain's required restoration documentation.</p></td>
</tr>
</tbody>
</table>
<!--tagpendingrestore1-->

<br><br><br><br><br><br>

<!--tagpendingtransfer0-->
<table id="pendingtransfer">
<tbody>
<tr>
<th id='noselect'>Status Code</th>
<th id='noselect'>What does it mean?</th>
<th id='noselect'>Should you do something?</th>
</tr>
<tr>
<td>pendingTransfer<br></td>
<td><p>This status code indicates that a request to transfer your domain to a new registrar has been received and is being processed.</p></td>
<td><p>If you did not request to transfer your domain, you should contact your registrar immediately to request that they deny the transfer request on your behalf.</p></td>
</tr>
</tbody>
</table>
<!--tagpendingtransfer1-->

<br><br><br><br><br><br>

<!--tagpendingupdate0-->
<table id="pendingupdate">
<tbody>
<tr>
<th id='noselect'>Status Code</th>
<th id='noselect'>What does it mean?</th>
<th id='noselect'>Should you do something?</th>
</tr>
<tr>
<td>pendingUpdate<br></td>
<td><p>This status code indicates that a request to update your domain has been received and is being processed.</p></td>
<td><p>If you did not request to update your domain, you should contact your registrar immediately to resolve the issue.</p></td>
</tr>
</tbody>
</table>
<!--tagpendingupdate1-->

<br><br><br><br><br><br>

<!--tagredemptionperiod0-->
<table id="redemptionperiod">
<tbody>
<tr>
<th id='noselect'>Status Code</th>
<th id='noselect'>What does it mean?</th>
<th id='noselect'>Should you do something?</th>
</tr>
<tr>
<td>redemptionPeriod<br></td>
<td><p>This status code indicates that your registrar has asked the registry to delete your domain. Your domain will be held in this status for 30 days. After five calendar days following the end of the redemptionPeriod, your domain is purged from the registry database and becomes available for registration.</p></td>
<td><p>If you want to keep your domain, you must immediately contact your registrar to resolve whatever issues resulted in your registrar requesting that your domain be deleted, which resulted in the redemptionPeriod status for your domain.  Once any outstanding issues are resolved and the appropriate fee has been paid, your registrar should restore the domain on your behalf.</p></td>
</tr>
</tbody>
</table>
<!--tagredemptionperiod1-->

<br><br><br><br><br><br>

<!--tagrenewperiod0-->
<table id="renewperiod">
<tbody>
<tr>
<th id='noselect'>Status Code</th>
<th id='noselect'>What does it mean?</th>
<th id='noselect'>Should you do something?</th>
</tr>
<tr>
<td>renewPeriod<br></td>
<td><p>This grace period is provided after a domain name registration period is explicitly extended (renewed) by the registrar. If the registrar deletes the domain name during this period, the registry provides a credit to the registrar for the cost of the renewal.</p></td>
<td><p>This is an informative status set for a limited period or your domain's renewal by your registrar. If you did not request to renew your domain and do not want to keep it (i.e., pay the renewal fee) anymore, you should contact your registrar immediately to discuss what options are available.</p></td>
</tr>
</tbody>
</table>
<!--tagrenewperiod1-->

<br><br><br><br><br><br>

<!--tagserverdeleteprohibited0-->
<table id="serverdeleteprohibited">
<tbody>
<tr>
<th id='noselect'>Status Code</th>
<th id='noselect'>What does it mean?</th>
<th id='noselect'>Should you do something?</th>
</tr>
<tr>
<td>serverDeleteProhibited<br></td>
<td><p>This status code prevents your domain from being deleted. It is an uncommon status that is usually enacted during legal disputes, at your request, or when a redemptionPeriod status is in place.</p></td>
<td><p>This status may indicate an issue with your domain that needs resolution. If so, you should contact your registrar to request more information and to resolve the issue. If your domain does not have any issues, and you simply want to delete it, you must first contact your registrar and request that they work with the Registry Operator to remove this status code.</p>
<p>Alternatively, some Registry Operators offer a Registry Lock Service that allows registrants, through their registrars to set this status as an extra protection against unauthorized deletions. Removing this status can take longer than it does for clientDeleteProhibited because your registrar has to forward your request to your domain's registry and wait for them to lift the restriction.</p></td>
</tr>
</tbody>
</table>
<!--tagserverdeleteprohibited1-->

<br><br><br><br><br><br>

<!--tagserverhold0-->
<table id="serverhold">
<tbody>
<tr>
<th id='noselect'>Status Code</th>
<th id='noselect'>What does it mean?</th>
<th id='noselect'>Should you do something?</th>
</tr>
<tr>
<td>serverHold<br></td>
<td><p>This status code is set by your domain's Registry Operator.  Your domain is not activated in the <abbr title="Domain Name System">DNS</abbr>.</p></td>
<td><p>If you provided delegation information (name servers), this status may indicate an issue with your domain that needs resolution. If so, you should contact your registrar to request more information. If your domain does not have any issues, but you need it to resolve in the <abbr title="Domain Name System">DNS</abbr>, you must first contact your registrar in order to provide the necessary delegation information.</p></td>
</tr>
</tbody>
</table>
<!--tagserverhold1-->

<br><br><br><br><br><br>

<!--tagserverrenewprohibited0-->
<table id="serverrenewprohibited">
<tbody>
<tr>
<th id='noselect'>Status Code</th>
<th id='noselect'>What does it mean?</th>
<th id='noselect'>Should you do something?</th>
</tr>
<tr>
<td>serverRenewProhibited<br></td>
<td><p>This status code indicates your domain's Registry Operator will not allow your registrar to renew your domain. It is an uncommon status that is usually enacted during legal disputes or when your domain is subject to deletion.</p></td>
<td><p>Often, this status indicates an issue with your domain that needs to be addressed promptly. You should contact your registrar to request more information and resolve the issue. If your domain does not have any issues, and you simply want to renew it, you must first contact your registrar and request that they work with the Registry Operator to remove this status code. This process can take longer than it does for clientRenewProhibited because your registrar has to forward your request to your domain's registry and wait for them to lift the restriction.</p></td>
</tr>
</tbody>
</table>
<!--tagserverrenewprohibited1-->

<br><br><br><br><br><br>

<!--tagservertransferprohibited0-->
<table id="servertransferprohibited">
<tbody>
<tr>
<th id='noselect'>Status Code</th>
<th id='noselect'>What does it mean?</th>
<th id='noselect'>Should you do something?</th>
</tr>
<tr>
<td>serverTransferProhibited<br></td>
<td><p>This status code prevents your domain from being transferred from your current registrar to another. It is an uncommon status that is usually enacted during legal or other disputes, at your request, or when a redemptionPeriod status is in place.</p></td>
<td><p>This status may indicate an issue with your domain that needs to be addressed promptly. You should contact your registrar to request more information and resolve the issue. If your domain does not have any issues, and you simply want to transfer it to another registrar, you must first contact your registrar and request that they work with the Registry Operator to remove this status code.</p>
<p>Alternatively, some Registry Operators offer a Registry Lock Service that allows registrants, through their registrars to set this status as an extra protection against unauthorized transfers. Removing this status can take longer than it does for clientTransferProhibited because your registrar has to forward your request to your domain's registry and wait for them to lift the restriction.</p></td>
</tr>
</tbody>
</table>
<!--tagservertransferprohibited1-->

<br><br><br><br><br><br>

<!--tagserverupdateprohibited0-->
<table id="serverupdateprohibited">
<tbody>
<tr>
<th id='noselect'>Status Code</th>
<th id='noselect'>What does it mean?</th>
<th id='noselect'>Should you do something?</th>
</tr>
<tr>
<td>serverUpdateProhibited<br></td>
<td><p>This status code locks your domain preventing it from being updated. It is an uncommon status that is usually enacted during legal disputes, at your request, or when a redemptionPeriod status is in place.</p></td>
<td><p>This status may indicate an issue with your domain that needs resolution. If so, you should contact your registrar for more information or to resolve the issue. If your domain does not have any issues, and you simply want to update it, you must first contact your registrar and request that they work with the Registry Operator to remove this status code.</p>
<p>Alternatively, some Registry Operators offer a Registry Lock Service that allows registrants, through their registrars to set this status as an extra protection against unauthorized updates. Removing this status can take longer than it does for clientUpdateProhibited because your registrar has to forward your request to your domain's registry and wait for them to lift the restriction.</p></td>
</tr>
</tbody>
</table>
<!--tagserverupdateprohibited1-->

<br><br><br><br><br><br>

<!--tagtransferperiod0-->
<table id="transferperiod">
<tbody>
<tr>
<th id='noselect'>Status Code</th>
<th id='noselect'>What does it mean?</th>
<th id='noselect'>Should you do something?</th>
</tr>
<tr>
<td>transferPeriod<br></td>
<td><p>This grace period is provided after the successful transfer of a domain name from one registrar to another.  If the new registrar deletes the domain name during this period, the registry provides a credit to the registrar for the cost of the transfer.</p></td>
<td><p>This is an informative status set for a limited period or your domain's transfer to a new registrar. If you did not request to transfer your domain, you should contact your original registrar.</p></td>
</tr>
</tbody>
</table>
<!--tagtransferperiod1-->

<br><br><br><br><br><br>

<!--tagclientdeleteprohibited0-->
<table id="clientdeleteprohibited">
<tbody>
<tr>
<th id='noselect'>Status Code</th>
<th id='noselect'>What does it mean?</th>
<th id='noselect'>Should you do something?</th>
</tr>
<tr>
<td>clientDeleteProhibited<br></td>
<td><p>This status code tells your domain's registry to reject requests to delete the domain.</p></td>
<td><p>This status indicates that it is not possible to delete the domain name registration, which can prevent unauthorized deletions resulting from hijacking and/or fraud. If you do want to delete your domain, you must first contact your registrar and request that they remove this status code.</p></td>
</tr>
</tbody>
</table>
<!--tagclientdeleteprohibited1-->

<br><br><br><br><br><br>

<!--tagclienthold0-->
<table id="clienthold">
<tbody>
<tr>
<th id='noselect'>Status Code</th>
<th id='noselect'>What does it mean?</th>
<th id='noselect'>Should you do something?</th>
</tr>
<tr>
<td>clientHold<br></td>
<td><p>This status code tells your domain's registry to not activate your domain in the <abbr title="Domain Name System">DNS</abbr> and as a consequence, it will not resolve. It is an uncommon status that is usually enacted during legal disputes, non-payment, or when your domain is subject to deletion.</p></td>
<td><p>Often, this status indicates an issue with your domain that needs resolution. If so, you should contact your registrar to resolve the issue. If your domain does not have any issues, but you need it to resolve, you must first contact your registrar and request that they remove this status code.</p></td>
</tr>
</tbody>
</table>
<!--tagclienthold1-->

<br><br><br><br><br><br>

<!--tagclientrenewprohibited0-->
<table id="clientrenewprohibited">
<tbody>
<tr>
<th id='noselect'>Status Code</th>
<th id='noselect'>What does it mean?</th>
<th id='noselect'>Should you do something?</th>
</tr>
<tr>
<td>clientRenewProhibited<br></td>
<td><p>This status code tells your domain's registry to reject requests to renew your domain. It is an uncommon status that is usually enacted during legal disputes or when your domain is subject to deletion.</p></td>
<td><p>Often, this status indicates an issue with your domain that needs resolution. If so, you should contact your registrar to resolve the issue. If your domain does not have any issues, and you simply want to renew it, you must first contact your registrar and request that they remove this status code.</p></td>
</tr>
</tbody>
</table>
<!--tagclientrenewprohibited1-->

<br><br><br><br><br><br>

<!--tagclienttransferprohibited0-->
<table id="clienttransferprohibited">
<tbody>
<tr>
<th id='noselect'>Status Code</th>
<th id='noselect'>What does it mean?</th>
<th id='noselect'>Should you do something?</th>
</tr>
<tr>
<td>clientTransferProhibited<br></td>
<td><p>This status code tells your domain's registry to reject requests to transfer the domain from your current registrar to another.</p></td>
<td><p>This status indicates that it is not possible to transfer the domain name registration, which will help prevent unauthorized transfers resulting from hijacking and/or fraud. If you do want to transfer your domain, you must first contact your registrar and request that they remove this status code.</p></td>
</tr>
</tbody>
</table>
<!--tagclienttransferprohibited1-->

<br><br><br><br><br><br>

<!--tagclientupdateprohibited0-->
<table id="clientupdateprohibited">
<tbody>
<tr>
<th id='noselect'>Status Code</th>
<th id='noselect'>What does it mean?</th>
<th id='noselect'>Should you do something?</th>
</tr>
<tr>
<td>clientUpdateProhibited<br></td>
<td><p>This status code tells your domain's registry to reject requests to update the domain.</p></td>
<td><p>This domain name status indicates that it is not possible to update the domain, which can help prevent unauthorized updates resulting from fraud. If you do want to update your domain, you must first contact your registrar and request that they remove this status code.</p></td>
</tr>
</tbody>
</table>
<!--tagclientupdateprohibited1-->

<br><br><br><br><br><br>

<hr>
The tables above are from <a href="https://www.icann.org/resources/pages/epp-status-codes-2014-06-16-en">ICANN's Article</a> about EPP Status codes.
<hr>
<p style='color: red; text-decoration: none; font-family: calibri'><small><<</small><input type='button' style='background:none; border:none; font-size:95%; color: red;' value='back | track' onClick='history.go(-1);'></p>
<br><br><br><br><br><br>
<center>
******
</center>
<br><br><br><br><br><br>
<center>
******
</center>
<br><br><br><br><br><br>
<center>
******
</center>
<br><br><br><br><br><br>
<center>
******
</center>

</body>
<footer>
Copyleft 2018
</footer>
</html>

EOT

exit 0;
