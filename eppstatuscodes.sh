#!/bin/bash
echo "Content-type: text/html"
echo ""
cat <<EOT

<!DOCTYPE html>
<html>
<link rel="icon" type="image/png" href="/icon.png" />
<head>
<title>BBC ( v 0.7 )</title>

<meta name="description" content="BigBlackCactus.com (BBC) is a website that can fetch the whois information of a domain, dig DNS records of domains and sub domains from name servers, can also do a simple check to identify about the SSL certificate issued for a domain/sub domain name.">
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


<tbody>
<tr class="dark">
		<th>Status Code</th>
		<th>What does it mean?</th>
		<th>Should you do something?</th>
	</tr>
	<tr>
		<td>
<a name="addperiod" id="addperiod"></a><a name="addPeriod" id="addPeriod"></a>addPeriod</td>
		<td><p>This grace period is provided after the initial registration of a domain name. If the registrar deletes the domain name during this period, the registry may provide credit to the registrar for the cost of the registration.</p></td>
		<td><p>This is an informative status set for the first several days of your domain's registration. There is no issue with your domain name.</p></td>
	</tr>
	<tr class="light">
		<td>
<a name="autorenewperiod" id="autorenewperiod"></a><a name="autoRenewPeriod" id="autoRenewPeriod"></a>autoRenewPeriod</td>
		<td><p>This grace period is provided after a domain name registration period expires and is extended (renewed) automatically by the registry. If the registrar deletes the domain name during this period, the registry provides a credit to the registrar for the cost of the renewal.</p></td>
		<td><p>This is an informative status set for a limited time after your domain's auto- renewal by the registry. If you do not want to keep it (i.e., pay the renewal fee) anymore, you should contact your registrar immediately to discuss what options are available.</p></td>
	</tr>
	<tr>
		<td>
<a name="inactive" id="inactive"></a>inactive</td>
		<td><p>This status code indicates that delegation information (name servers) has not been associated with your domain. Your domain is not activated in the <abbr title="Domain Name System">DNS</abbr> and will not resolve.</p></td>
		<td>
<p>If your domain has remained in this status for several days, you may want to contact your registrar to request information about the delay in processing.</p>
			<p>If the <abbr title="Top Level Domain">TLD</abbr> requires documentation to be provided for registration, you may need to provide the required documentation.</p>
</td>
	</tr>
	<tr class="light">
		<td>
<a name="ok" id="ok">ok</a> <!--<a name="OK" id="OK"></a></td>-->
		</td>
<td><p>This is the standard status for a domain, meaning it has no pending operations or prohibitions.</p></td>
		<td><p>Asking your registrar to enact status restrictions, like clientTransferProhibited, clientDeleteProhibited, and clientUpdateProhibited, can help to prevent unauthorized transfers, deletions, or updates to your domain.</p></td>
	</tr>
	<tr>
		<td>
<a name="pendingcreate" id="pendingcreate"></a><a name="pendingCreate" id="pendingCreate"></a>pendingCreate</td>
		<td><p>This status code indicates that a request to create your domain has been received and is being processed.</p></td>
		<td>
<p>If the <abbr title="Top Level Domain">TLD</abbr> is on a special registration period (e.g. sunrise), this may indicate that the domain name will be allocated at the end of such period.</p>
			<p>If the <abbr title="Top Level Domain">TLD</abbr> is not on a special registration period and you are NOT the listed <abbr title="Registrant">Registrant</abbr>, you should contact your registrar immediately to resolve the issue.</p>
</td>
	</tr>
	<tr class="light">
		<td>
<a name="pendingdelete" id="pendingdelete"></a><a name="pendingDelete" id="pendingDelete"></a>pendingDelete</td>
		<td>
<p>This status code may be mixed with redemptionPeriod or pendingRestore. In such case, depending on the status (i.e. redemptionPeriod or pendingRestore) set in the domain name, the corresponding description presented above applies. If this status is not combined with the redemptionPeriod or pendingRestore status, the pendingDelete status code indicates that your domain has been in redemptionPeriod status for 30 days and you have not restored it within that 30-day period. Your domain will remain in this status for several days, after which time your domain will be purged and dropped from the registry database.</p>
			<p>Once deletion occurs, the domain is available for re-registration in accordance with the registry's policies.</p>
</td>
		<td><p>If you want to keep your domain name, you must immediately contact your registrar to discuss what options are available.</p></td>
	</tr>
	<tr>
		<td>
<a name="pendingrenew" id="pendingrenew"></a><a name="pendingRenew" id="pendingRenew"></a>pendingRenew</td>
		<td><p>This status code indicates that a request to renew your domain has been received and is being processed.</p></td>
		<td><p>If you did not request to renew your domain and do not want to keep it (i.e., pay the renewal fee) anymore, you should contact your registrar immediately to discuss what options are available.</p></td>
	</tr>
	<tr class="light">
		<td>
<a name="pendingrestore" id="pendingrestore"></a><a name="pendingRestore" id="pendingRestore"></a>pendingRestore</td>
		<td><p>This status code indicates that your registrar has asked the registry to restore your domain that was in redemptionPeriod status. Your registry will hold the domain in this status while waiting for your registrar to provide required restoration documentation. If your registrar fails to provide documentation to the registry operator within a set time period to confirm the restoration request, the domain will revert to redemptionPeriod status.</p></td>
		<td><p>Watch your domain's status codes within this frequently defined seven day period to ensure that your registrar has submitted the correct restoration documentation within the time window. If this period ended and your domain has reverted back to a redemptionPeriod status, contact your registrar to resolve whatever issues that may have halted the delivery of your domain's required restoration documentation.</p></td>
	</tr>
	<tr>
		<td>
<a name="pendingtransfer" id="pendingtransfer"></a><a name="pendingTransfer" id="pendingTransfer"></a>pendingTransfer</td>
		<td><p>This status code indicates that a request to transfer your domain to a new registrar has been received and is being processed.</p></td>
		<td><p>If you did not request to transfer your domain, you should contact your registrar immediately to request that they deny the transfer request on your behalf.</p></td>
	</tr>
	<tr class="light">
		<td>
<a name="pendingupdate" id="pendingupdate"></a><a name="pendingUpdate" id="pendingUpdate"></a>pendingUpdate</td>
		<td><p>This status code indicates that a request to update your domain has been received and is being processed.</p></td>
		<td><p>If you did not request to update your domain, you should contact your registrar immediately to resolve the issue.</p></td>
	</tr>
	<tr>
		<td>
<a name="redemptionperiod" id="redemptionperiod"></a><a name="redemptionPeriod" id="redemptionPeriod"></a>redemptionPeriod</td>
		<td><p>This status code indicates that your registrar has asked the registry to delete your domain. Your domain will be held in this status for 30 days. After five calendar days following the end of the redemptionPeriod, your domain is purged from the registry database and becomes available for registration.</p></td>
		<td><p>If you want to keep your domain, you must immediately contact your registrar to resolve whatever issues resulted in your registrar requesting that your domain be deleted, which resulted in the redemptionPeriod status for your domain.  Once any outstanding issues are resolved and the appropriate fee has been paid, your registrar should restore the domain on your behalf.</p></td>
	</tr>
	<tr class="light">
		<td>
<a name="renewperiod" id="renewperiod"></a><a name="renewPeriod" id="renewPeriod"></a>renewPeriod</td>
		<td><p>This grace period is provided after a domain name registration period is explicitly extended (renewed) by the registrar. If the registrar deletes the domain name during this period, the registry provides a credit to the registrar for the cost of the renewal.</p></td>
		<td><p>This is an informative status set for a limited period or your domain's renewal by your registrar. If you did not request to renew your domain and do not want to keep it (i.e., pay the renewal fee) anymore, you should contact your registrar immediately to discuss what options are available.</p></td>
	</tr>
	<tr>
		<td>
<a name="serverdeleteprohibited" id="serverdeleteprohibited"></a><a name="serverDeleteProhibited" id="serverDeleteProhibited"></a>serverDeleteProhibited</td>
		<td><p>This status code prevents your domain from being deleted. It is an uncommon status that is usually enacted during legal disputes, at your request, or when a redemptionPeriod status is in place.</p></td>
		<td>
<p>This status may indicate an issue with your domain that needs resolution. If so, you should contact your registrar to request more information and to resolve the issue. If your domain does not have any issues, and you simply want to delete it, you must first contact your registrar and request that they work with the Registry Operator to remove this status code.</p>
			<p>Alternatively, some Registry Operators offer a Registry Lock Service that allows registrants, through their registrars to set this status as an extra protection against unauthorized deletions. Removing this status can take longer than it does for clientDeleteProhibited because your registrar has to forward your request to your domain's registry and wait for them to lift the restriction.</p>
</td>
	</tr>
	<tr class="light">
		<td>
<a name="serverhold" id="serverhold"></a><a name="serverHold" id="serverHold"></a>serverHold</td>
		<td><p>This status code is set by your domain's Registry Operator.  Your domain is not activated in the <abbr title="Domain Name System">DNS</abbr>.</p></td>
		<td><p>If you provided delegation information (name servers), this status may indicate an issue with your domain that needs resolution. If so, you should contact your registrar to request more information. If your domain does not have any issues, but you need it to resolve in the <abbr title="Domain Name System">DNS</abbr>, you must first contact your registrar in order to provide the necessary delegation information.</p></td>
	</tr>
	<tr>
		<td>
<a name="serverrenewprohibited" id="serverrenewprohibited"></a><a name="serverRenewProhibited" id="serverRenewProhibited"></a>serverRenewProhibited</td>
		<td><p>This status code indicates your domain's Registry Operator will not allow your registrar to renew your domain. It is an uncommon status that is usually enacted during legal disputes or when your domain is subject to deletion.</p></td>
		<td><p>Often, this status indicates an issue with your domain that needs to be addressed promptly. You should contact your registrar to request more information and resolve the issue. If your domain does not have any issues, and you simply want to renew it, you must first contact your registrar and request that they work with the Registry Operator to remove this status code. This process can take longer than it does for clientRenewProhibited because your registrar has to forward your request to your domain's registry and wait for them to lift the restriction.</p></td>
	</tr>
	<tr class="light">
		<td>
<a name="servertransferprohibited" id="servertransferprohibited"></a><a name="serverTransferProhibited" id="serverTransferProhibited"></a>serverTransferProhibited</td>
		<td><p>This status code prevents your domain from being transferred from your current registrar to another. It is an uncommon status that is usually enacted during legal or other disputes, at your request, or when a redemptionPeriod status is in place.</p></td>
		<td>
<p>This status may indicate an issue with your domain that needs to be addressed promptly. You should contact your registrar to request more information and resolve the issue. If your domain does not have any issues, and you simply want to transfer it to another registrar, you must first contact your registrar and request that they work with the Registry Operator to remove this status code.</p>
			<p>Alternatively, some Registry Operators offer a Registry Lock Service that allows registrants, through their registrars to set this status as an extra protection against unauthorized transfers. Removing this status can take longer than it does for clientTransferProhibited because your registrar has to forward your request to your domain's registry and wait for them to lift the restriction.</p>
</td>
	</tr>
	<tr>
		<td>
<a name="serverupdateprohibited" id="serverupdateprohibited"></a><a name="serverUpdateProhibited" id="serverUpdateProhibited"></a>serverUpdateProhibited</td>
		<td><p>This status code locks your domain preventing it from being updated. It is an uncommon status that is usually enacted during legal disputes, at your request, or when a redemptionPeriod status is in place.</p></td>
		<td>
<p>This status may indicate an issue with your domain that needs resolution. If so, you should contact your registrar for more information or to resolve the issue. If your domain does not have any issues, and you simply want to update it, you must first contact your registrar and request that they work with the Registry Operator to remove this status code.</p>
		<p>Alternatively, some Registry Operators offer a Registry Lock Service that allows registrants, through their registrars to set this status as an extra protection against unauthorized updates. Removing this status can take longer than it does for clientUpdateProhibited because your registrar has to forward your request to your domain's registry and wait for them to lift the restriction.</p>
</td>
	</tr>
	<tr class="light">
		<td>
<a name="transferperiod" id="transferperiod"></a><a name="transferPeriod" id="transferPeriod"></a>transferPeriod</td>
		<td><p>This grace period is provided after the successful transfer of a domain name from one registrar to another.  If the new registrar deletes the domain name during this period, the registry provides a credit to the registrar for the cost of the transfer.</p></td>
		<td><p>This is an informative status set for a limited period or your domain's transfer to a new registrar. If you did not request to transfer your domain, you should contact your original registrar.</p></td>
	</tr>


</tbody>


<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<table class="convey">
<tbody>



<tr>
		<td>
<a name="clientdeleteprohibited" id="clientdeleteprohibited"></a><a name="clientDeleteProhibited" id="clientDeleteProhibited"></a>clientDeleteProhibited</td>
		<td><p>This status code tells your domain's registry to reject requests to delete the domain.</p></td>
		<td><p>This status indicates that it is not possible to delete the domain name registration, which can prevent unauthorized deletions resulting from hijacking and/or fraud. If you do want to delete your domain, you must first contact your registrar and request that they remove this status code.</p></td>
	</tr>
	<tr class="light">
		<td>
<a name="clienthold" id="clienthold"></a><a name="clientHold" id="clientHold"></a>clientHold</td>
		<td><p>This status code tells your domain's registry to not activate your domain in the <abbr title="Domain Name System">DNS</abbr> and as a consequence, it will not resolve. It is an uncommon status that is usually enacted during legal disputes, non-payment, or when your domain is subject to deletion.</p></td>
		<td><p>Often, this status indicates an issue with your domain that needs resolution. If so, you should contact your registrar to resolve the issue. If your domain does not have any issues, but you need it to resolve, you must first contact your registrar and request that they remove this status code.</p></td>
	</tr>
	<tr>
		<td>
<a name="clientrenewprohibited" id="clientrenewprohibited"></a><a name="clientRenewProhibited" id="clientRenewProhibited"></a>clientRenewProhibited</td>
		<td><p>This status code tells your domain's registry to reject requests to renew your domain. It is an uncommon status that is usually enacted during legal disputes or when your domain is subject to deletion.</p></td>
		<td><p>Often, this status indicates an issue with your domain that needs resolution. If so, you should contact your registrar to resolve the issue. If your domain does not have any issues, and you simply want to renew it, you must first contact your registrar and request that they remove this status code.</p></td>
	</tr>
	<tr class="light">
		<td>
<a name="clienttransferprohibited" id="clienttransferprohibited"></a><a name="clientTransferProhibited" id="clientTransferProhibited"></a>clientTransferProhibited</td>
		<td><p>This status code tells your domain's registry to reject requests to transfer the domain from your current registrar to another.</p></td>
		<td><p>This status indicates that it is not possible to transfer the domain name registration, which will help prevent unauthorized transfers resulting from hijacking and/or fraud. If you do want to transfer your domain, you must first contact your registrar and request that they remove this status code.</p></td>
	</tr>
	<tr>
		<td>
<a name="clientupdateprohibited" id="clientupdateprohibited"></a><a name="clientUpdateProhibited" id="clientUpdateProhibited"></a>clientUpdateProhibited</td>
		<td><p>This status code tells your domain's registry to reject requests to update the domain.</p></td>
		<td><p>This domain name status indicates that it is not possible to update the domain, which can help prevent unauthorized updates resulting from fraud. If you do want to update your domain, you must first contact your registrar and request that they remove this status code.</p></td>
	</tr>

</tbody>
</table>


<br>

<hr>
The above table is from <a href="https://www.icann.org/resources/pages/epp-status-codes-2014-06-16-en">ICANNS's Article</a> about EPP Status codes.
<hr>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

</body>
<footer>
Copyleft 2018
</footer>
</html>

EOT

exit 0;

