Ninja of port 43 and 53.

MIT License
Copyright (c) 2018 Zyx Rhythm


This is from:
https://github.com/zyxrhythm/bbclive/tree/4353.info


---------------------


How to deploy:

Simply Download the zip from github (link to the repo is above). 
Unzip it on your server's website root directory (like cPanel's "public_html"). 
Make sure webserver is able to to execute bash scripts on the cgi-bin folder.

The scripts supports both whois and jwhois.
The scripts are tried tested on Ubuntu 16.04.6 LTS (xenial) and CentOs 6.10.
-May also run well on Debian and Red-Hat based distro.

---------------------

Cusomizations:

Edit the /zyx/site.vars to change browser tab titles, messages and other 'texts' on the webpages.

Feel free to replace site icon (icon.png) and simple footer banner image (image.png).

The css used on the pages are on the /css directory - feel free to theme the pages as you see fit.



---------------------



#PLEASE NOTE: 
If you do not have enough experience on how bash scripts work for web development DO NOT attempt to edit those inside the /cgi-bin directory.
