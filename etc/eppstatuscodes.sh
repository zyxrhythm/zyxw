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


<center>
<p><h1><a href="/cgi-bin/bbc.sh">Big Black Cactus</a></h1></p>
</center>
<style>
h1 { font-family: courier new;
    font-size: 150%;
}

a:link { color: green; }
a:visited { color: green; }
a:hover { color: green; }
a:active { color: green; }

body	{ background-color:black; color:white;
}

p { font-family: calibri; font-size: 100%;
}


table { font-family: verdana; border: 2px solid green; font-size: 90%;
}

th { border: 2px solid green;
}

td { vertical-align: top; text-align: left; border: 1px solid green;
}

footer{color: green; text-align: center; font-family: verdana; font-size: 65%;
}
</style>
</head>

<body>
<hr>

<br>
<br>
<br>
<br>
<br>
<br>

<!--tagaddperiod0-->
<div id="addperiod">
<table>
<tbody>
<tr>
<th>Status Code</th>
<th>What does it mean?</th>
<th>Should you do something?</th>
</tr>
<tr>
<td>addPeriod</td>
<td><br/>This grace period is provided after the initial registration of a domain name. If the registrar deletes the domain name during this period, the registry may provide credit to the registrar for the cost of the registration.<br/><br/></td>
<td><br/>This is an informative status set for the first several days of your domain's registration. There is no issue with your domain name.<br/><br/></td>
</tr>
</tbody>
</table>
</div>
<!--tagaddperiod1-->

<br>
<br>
<br>
<br>
<br>
<br>

<!--tagautorenewperiod0-->
<div id="autorenewperiod">
<table >
<tbody>
<tr>
<th>Status Code</th>
<th>What does it mean?</th>
<th>Should you do something?</th>
</tr>
<tr>
<td>autoRenewPeriod</td>
<td><br/>This grace period is provided after a domain name registration period expires and is extended (renewed) automatically by the registry. If the registrar deletes the domain name during this period, the registry provides a credit to the registrar for the cost of the renewal.<br/><br/></td>
<td><br/>This is an informative status set for a limited time after your domain's auto- renewal by the registry. If you do not want to keep it (i.e., pay the renewal fee) anymore, you should contact your registrar immediately to discuss what options are available.<br/><br/></td>
</tr>
</tbody>
</table>
</div>
<!--tagautorenewperiod1-->

<br>
<br>
<br>
<br>
<br>
<br>

<!--taginactive0-->
<div id="inactive">
<table>
<tbody>
<tr>
<th>Status Code</th>
<th>What does it mean?</th>
<th>Should you do something?</th>
</tr>
<tr>
<td>inactive</td>
<td><br/>This status code indicates that delegation information (name servers) has not been associated with your domain. Your domain is not activated in the <abbr title="Domain Name System">DNS</abbr> and will not resolve.<br/><br/></td><td>
<br/>If your domain has remained in this status for several days, you may want to contact your registrar to request information about the delay in processing.<br/><br/>
<br/>If the <abbr title="Top Level Domain">TLD</abbr> requires documentation to be provided for registration, you may need to provide the required documentation.<br/><br/></td>
</tr>
</tbody>
</table>
</div>
<!--taginactive1-->

<br>
<br>
<br>
<br>
<br>
<br>

<!--tagok0-->
<div id="ok">
<table>
<tbody>
<tr>
<th>Status Code</th>
<th>What does it mean?</th>
<th>Should you do something?</th>
</tr>
<tr>
<td>ok</td>
</td>
<td><br/>This is the standard status for a domain, meaning it has no pending operations or prohibitions.<br/><br/></td>
<td><br/>Asking your registrar to enact status restrictions, like clientTransferProhibited, clientDeleteProhibited, and clientUpdateProhibited, can help to prevent unauthorized transfers, deletions, or updates to your domain.<br/><br/></td>
</tr>
</tbody>
</table>
</div>
<!--tagok1-->

<br>
<br>
<br>
<br>
<br>
<br>

<!--tagpendingcreate0-->
<div id="pendingcreate">
<table>
<tbody>
<tr>
<th>Status Code</th>
<th>What does it mean?</th>
<th>Should you do something?</th>
</tr>
<tr>
<td>pendingCreate</td>
<td><br/>This status code indicates that a request to create your domain has been received and is being processed.<br/><br/></td>
<td><br/>If the <abbr title="Top Level Domain">TLD</abbr> is on a special registration period (e.g. sunrise), this may indicate that the domain name will be allocated at the end of such period.<br/><br/>
<br/>If the <abbr title="Top Level Domain">TLD</abbr> is not on a special registration period and you are NOT the listed <abbr title="Registrant">Registrant</abbr>, you should contact your registrar immediately to resolve the issue.<br/><br/></td>
</tr>
</tbody>
</table>
</div>
<!--tagpendingcreate1-->

<br>
<br>
<br>
<br>
<br>
<br>

<!--tagpendingdelete0-->
<div id="pendingdelete">
<table>
<tbody>
<tr>
<th>Status Code</th>
<th>What does it mean?</th>
<th>Should you do something?</th>
</tr>
<tr>
<td>pendingDelete</td>
<td><br/>This status code may be mixed with redemptionPeriod or pendingRestore. In such case, depending on the status (i.e. redemptionPeriod or pendingRestore) set in the domain name, the corresponding description presented above applies. If this status is not combined with the redemptionPeriod or pendingRestore status, the pendingDelete status code indicates that your domain has been in redemptionPeriod status for 30 days and you have not restored it within that 30-day period. Your domain will remain in this status for several days, after which time your domain will be purged and dropped from the registry database.<br/><br/>
<br/>Once deletion occurs, the domain is available for re-registration in accordance with the registry's policies.<br/><br/></td>
<td><br/>If you want to keep your domain name, you must immediately contact your registrar to discuss what options are available.<br/><br/></td>
</tr>
</tbody>
</table>
</div>
<!--tagpendingdelete1-->

<br>
<br>
<br>
<br>
<br>
<br>

<!--tagpendingrenew0-->
<div id="pendingrenew">
<table>
<tbody>
<tr>
<th>Status Code</th>
<th>What does it mean?</th>
<th>Should you do something?</th>
</tr>
<tr>
<td>pendingRenew</td>
<td><br/>This status code indicates that a request to renew your domain has been received and is being processed.<br/><br/></td>
<td><br/>If you did not request to renew your domain and do not want to keep it (i.e., pay the renewal fee) anymore, you should contact your registrar immediately to discuss what options are available.<br/><br/></td>
</tr>
</tbody>
</table>
</div>
<!--tagpendingrenew1-->

<br>
<br>
<br>
<br>
<br>
<br>

<!--tagpendingrestore0-->
<div id="pendingrestore">
<table>
<tbody>
<tr>
<th>Status Code</th>
<th>What does it mean?</th>
<th>Should you do something?</th>
</tr>
<tr>
<td>pendingRestore</td>
<td><br/>This status code indicates that your registrar has asked the registry to restore your domain that was in redemptionPeriod status. Your registry will hold the domain in this status while waiting for your registrar to provide required restoration documentation. If your registrar fails to provide documentation to the registry operator within a set time period to confirm the restoration request, the domain will revert to redemptionPeriod status.<br/><br/></td>
<td><br/>Watch your domain's status codes within this frequently defined seven day period to ensure that your registrar has submitted the correct restoration documentation within the time window. If this period ended and your domain has reverted back to a redemptionPeriod status, contact your registrar to resolve whatever issues that may have halted the delivery of your domain's required restoration documentation.<br/><br/></td>
</tr>
</tbody>
</table>
</div>
<!--tagpendingrestore1-->

<br>
<br>
<br>
<br>
<br>
<br>

<!--tagpendingtransfer0-->
<div id="pendingtransfer">
<table>
<tbody>
<tr>
<th>Status Code</th>
<th>What does it mean?</th>
<th>Should you do something?</th>
</tr>
<tr>
<td>pendingTransfer</td>
<td><br/>This status code indicates that a request to transfer your domain to a new registrar has been received and is being processed.<br/><br/></td>
<td><br/>If you did not request to transfer your domain, you should contact your registrar immediately to request that they deny the transfer request on your behalf.<br/><br/></td>
</tr>
</tbody>
</table>
</div>
<!--tagpendingtransfer1-->

<br>
<br>
<br>
<br>
<br>
<br>

<!--tagpendingupdate0-->
<div id="pendingupdate">
<table>
<tbody>
<tr>
<th>Status Code</th>
<th>What does it mean?</th>
<th>Should you do something?</th>
</tr>
<tr>
<td>pendingUpdate</td>
<td><br/>This status code indicates that a request to update your domain has been received and is being processed.<br/><br/></td>
<td><br/>If you did not request to update your domain, you should contact your registrar immediately to resolve the issue.<br/><br/></td>
</tr>
</tbody>
</table>
</div>
<!--tagpendingupdate1-->

<br>
<br>
<br>
<br>
<br>
<br>

<!--tagredemptionperiod0-->
<div id="redemptionperiod">
<table>
<tbody>
<tr>
<th>Status Code</th>
<th>What does it mean?</th>
<th>Should you do something?</th>
</tr>
<tr>
<td>redemptionPeriod</td>
<td><br/>This status code indicates that your registrar has asked the registry to delete your domain. Your domain will be held in this status for 30 days. After five calendar days following the end of the redemptionPeriod, your domain is purged from the registry database and becomes available for registration.<br/><br/></td>
<td><br/>If you want to keep your domain, you must immediately contact your registrar to resolve whatever issues resulted in your registrar requesting that your domain be deleted, which resulted in the redemptionPeriod status for your domain.  Once any outstanding issues are resolved and the appropriate fee has been paid, your registrar should restore the domain on your behalf.<br/><br/></td>
</tr>
</tbody>
</table>
</div>
<!--tagredemptionperiod1-->

<br>
<br>
<br>
<br>
<br>
<br>

<!--tagrenewperiod0-->
<div id="renewperiod">
<table>
<tbody>
<tr>
<th>Status Code</th>
<th>What does it mean?</th>
<th>Should you do something?</th>
</tr>
<tr>
<td>renewPeriod</td>
<td><br/>This grace period is provided after a domain name registration period is explicitly extended (renewed) by the registrar. If the registrar deletes the domain name during this period, the registry provides a credit to the registrar for the cost of the renewal.<br/><br/></td>
<td><br/>This is an informative status set for a limited period or your domain's renewal by your registrar. If you did not request to renew your domain and do not want to keep it (i.e., pay the renewal fee) anymore, you should contact your registrar immediately to discuss what options are available.<br/><br/></td>
</tr>
</tbody>
</table>
</div>
<!--tagrenewperiod1-->

<br>
<br>
<br>
<br>
<br>
<br>

<!--tagserverdeleteprohibited0-->
<div id="serverdeleteprohibited">
<table>
<tbody>
<tr>
<th>Status Code</th>
<th>What does it mean?</th>
<th>Should you do something?</th>
</tr>
<tr>
<td>serverDeleteProhibited</td>
<td><br/>This status code prevents your domain from being deleted. It is an uncommon status that is usually enacted during legal disputes, at your request, or when a redemptionPeriod status is in place.<br/><br/></td>
<td><br/>This status may indicate an issue with your domain that needs resolution. If so, you should contact your registrar to request more information and to resolve the issue. If your domain does not have any issues, and you simply want to delete it, you must first contact your registrar and request that they work with the Registry Operator to remove this status code.<br/><br/>
<br/>Alternatively, some Registry Operators offer a Registry Lock Service that allows registrants, through their registrars to set this status as an extra protection against unauthorized deletions. Removing this status can take longer than it does for clientDeleteProhibited because your registrar has to forward your request to your domain's registry and wait for them to lift the restriction.<br/><br/></td>
</tr>
</tbody>
</table>
</div>
<!--tagserverdeleteprohibited1-->

<br>
<br>
<br>
<br>
<br>
<br>

<!--tagserverhold0-->
<div id="serverhold">
<table>
<tbody>
<tr>
<th>Status Code</th>
<th>What does it mean?</th>
<th>Should you do something?</th>
</tr>
<tr>
<td>serverHold</td>
<td><br/>This status code is set by your domain's Registry Operator.  Your domain is not activated in the <abbr title="Domain Name System">DNS</abbr>.<br/><br/></td>
<td><br/>If you provided delegation information (name servers), this status may indicate an issue with your domain that needs resolution. If so, you should contact your registrar to request more information. If your domain does not have any issues, but you need it to resolve in the <abbr title="Domain Name System">DNS</abbr>, you must first contact your registrar in order to provide the necessary delegation information.<br/><br/></td>
</tr>
</tbody>
</table>
</div>
<!--tagserverhold1-->

<br>
<br>
<br>
<br>
<br>
<br>

<!--tagserverrenewprohibited0-->
<div id="serverrenewprohibited">
<table>
<tbody>
<tr>
<th>Status Code</th>
<th>What does it mean?</th>
<th>Should you do something?</th>
</tr>
<tr>
<td>serverRenewProhibited</td>
<td><br/>This status code indicates your domain's Registry Operator will not allow your registrar to renew your domain. It is an uncommon status that is usually enacted during legal disputes or when your domain is subject to deletion.<br/><br/></td>
<td><br/>Often, this status indicates an issue with your domain that needs to be addressed promptly. You should contact your registrar to request more information and resolve the issue. If your domain does not have any issues, and you simply want to renew it, you must first contact your registrar and request that they work with the Registry Operator to remove this status code. This process can take longer than it does for clientRenewProhibited because your registrar has to forward your request to your domain's registry and wait for them to lift the restriction.<br/><br/></td>
</tr>
</tbody>
</table>
</div>
<!--tagserverrenewprohibited1-->

<br>
<br>
<br>
<br>
<br>
<br>

<!--tagservertransferprohibited0-->
<div id="servertransferprohibited">
<table>
<tbody>
<tr>
<th>Status Code</th>
<th>What does it mean?</th>
<th>Should you do something?</th>
</tr>
<tr>
<td>serverTransferProhibited</td>
<td><br/>This status code prevents your domain from being transferred from your current registrar to another. It is an uncommon status that is usually enacted during legal or other disputes, at your request, or when a redemptionPeriod status is in place.<br/><br/></td>
<td><br/>This status may indicate an issue with your domain that needs to be addressed promptly. You should contact your registrar to request more information and resolve the issue. If your domain does not have any issues, and you simply want to transfer it to another registrar, you must first contact your registrar and request that they work with the Registry Operator to remove this status code.<br/><br/>
<br/>Alternatively, some Registry Operators offer a Registry Lock Service that allows registrants, through their registrars to set this status as an extra protection against unauthorized transfers. Removing this status can take longer than it does for clientTransferProhibited because your registrar has to forward your request to your domain's registry and wait for them to lift the restriction.<br/><br/></td>
</tr>
</tbody>
</table>
</div>
<!--tagservertransferprohibited1-->

<br>
<br>
<br>
<br>
<br>
<br>

<!--tagserverupdateprohibited0-->
<div id="serverupdateprohibited">
<table>
<tbody>
<tr>
<th>Status Code</th>
<th>What does it mean?</th>
<th>Should you do something?</th>
</tr>
<tr>
<td>serverUpdateProhibited</td>
<td><br/>This status code locks your domain preventing it from being updated. It is an uncommon status that is usually enacted during legal disputes, at your request, or when a redemptionPeriod status is in place.<br/><br/></td>
<td><br/>This status may indicate an issue with your domain that needs resolution. If so, you should contact your registrar for more information or to resolve the issue. If your domain does not have any issues, and you simply want to update it, you must first contact your registrar and request that they work with the Registry Operator to remove this status code.<br/><br/>
<br/>Alternatively, some Registry Operators offer a Registry Lock Service that allows registrants, through their registrars to set this status as an extra protection against unauthorized updates. Removing this status can take longer than it does for clientUpdateProhibited because your registrar has to forward your request to your domain's registry and wait for them to lift the restriction.<br/><br/></td>
</tr>
</tbody>
</table>
</div>
<!--tagserverupdateprohibited1-->

<br>
<br>
<br>
<br>
<br>
<br>

<!--tagtransferperiod0-->
<div id="transferperiod">
<table>
<tbody>
<tr>
<th>Status Code</th>
<th>What does it mean?</th>
<th>Should you do something?</th>
</tr>
<tr>
<td>transferPeriod</td>
<td><br/>This grace period is provided after the successful transfer of a domain name from one registrar to another.  If the new registrar deletes the domain name during this period, the registry provides a credit to the registrar for the cost of the transfer.<br/><br/></td>
<td><br/>This is an informative status set for a limited period or your domain's transfer to a new registrar. If you did not request to transfer your domain, you should contact your original registrar.<br/><br/></td>
</tr>
</tbody>
</table>
</div>
<!--tagtransferperiod1-->

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<!--tagclientdeleteprohibited0-->
<div id="clientdeleteprohibited">
<table>
<tbody>
<tr>
<th>Status Code</th>
<th>What does it mean?</th>
<th>Should you do something?</th>
</tr>
<tr>
<td>clientDeleteProhibited</td>
<td><br/>This status code tells your domain's registry to reject requests to delete the domain.<br/><br/></td>
<td><br/>This status indicates that it is not possible to delete the domain name registration, which can prevent unauthorized deletions resulting from hijacking and/or fraud. If you do want to delete your domain, you must first contact your registrar and request that they remove this status code.<br/><br/></td>
</tr>
</tbody>
</table>
</div>
<!--tagclientdeleteprohibited1-->

<br>
<br>
<br>
<br>
<br>
<br>

<!--tagclienthold0-->
<div id="clienthold">
<table>
<tbody>
<tr>
<th>Status Code</th>
<th>What does it mean?</th>
<th>Should you do something?</th>
</tr>
<tr>
<td>clientHold</td>
<td><br/>This status code tells your domain's registry to not activate your domain in the <abbr title="Domain Name System">DNS</abbr> and as a consequence, it will not resolve. It is an uncommon status that is usually enacted during legal disputes, non-payment, or when your domain is subject to deletion.<br/><br/></td>
<td><br/>Often, this status indicates an issue with your domain that needs resolution. If so, you should contact your registrar to resolve the issue. If your domain does not have any issues, but you need it to resolve, you must first contact your registrar and request that they remove this status code.<br/><br/></td>
</tr>
</tbody>
</table>
</div>
<!--tagclienthold1-->

<br>
<br>
<br>
<br>
<br>
<br>

<!--tagclientrenewprohibited0-->
<div id="clientrenewprohibited">
<table>
<tbody>
<tr>
<th>Status Code</th>
<th>What does it mean?</th>
<th>Should you do something?</th>
</tr>
<tr>
<td>clientRenewProhibited</td>
<td><br/>This status code tells your domain's registry to reject requests to renew your domain. It is an uncommon status that is usually enacted during legal disputes or when your domain is subject to deletion.<br/><br/></td>
<td><br/>Often, this status indicates an issue with your domain that needs resolution. If so, you should contact your registrar to resolve the issue. If your domain does not have any issues, and you simply want to renew it, you must first contact your registrar and request that they remove this status code.<br/><br/></td>
</tr>
</tbody>
</table>
</div>
<!--tagclientrenewprohibited1-->

<br>
<br>
<br>
<br>
<br>
<br>

<!--tagclienttransferprohibited0-->
<div id="clienttransferprohibited">
<table>
<tbody>
<tr>
<th>Status Code</th>
<th>What does it mean?</th>
<th>Should you do something?</th>
</tr>
<tr>
<td>clientTransferProhibited</td>
<td><br/>This status code tells your domain's registry to reject requests to transfer the domain from your current registrar to another.<br/><br/></td>
<td><br/>This status indicates that it is not possible to transfer the domain name registration, which will help prevent unauthorized transfers resulting from hijacking and/or fraud. If you do want to transfer your domain, you must first contact your registrar and request that they remove this status code.<br/><br/></td>
</tr>
</tbody>
</table>
</div>
<!--tagclienttransferprohibited1-->

<br>
<br>
<br>
<br>
<br>
<br>

<!--tagclientupdateprohibited0-->
<div id="clientupdateprohibited">
<table>
<tbody>
<tr>
<th>Status Code</th>
<th>What does it mean?</th>
<th>Should you do something?</th>
</tr>
<tr>
<td>clientUpdateProhibited</td>
<td><br/>This status code tells your domain's registry to reject requests to update the domain.<br/><br/></td>
<td><br/>This domain name status indicates that it is not possible to update the domain, which can help prevent unauthorized updates resulting from fraud. If you do want to update your domain, you must first contact your registrar and request that they remove this status code.<br/><br/></td>
</tr>
</tbody>
</table>
</div>
<!--tagclientupdateprohibited1-->

<br>
<br>
<br>
<br>
<br>
<br>
<br>

<hr>
The tables above are from <a href="https://www.icann.org/resources/pages/epp-status-codes-2014-06-16-en">ICANN's Article</a> about EPP Status codes.
<hr>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<center>
******
</center>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<center>
******
</center>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<center>
******
</center>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
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

