---------------------

Before you deploy this on your server, make sure: 

1. Your host is running a Unix-based / Unix-like Operating System, like Ubuntu and CentOS.
2. Make sure Bash 4.x is installed on your host and "cgi-bin" can execute Bash scripts. 
3. The following commands/programs are available on the host, and the scripts will be permitted to utilize them:
whois (the scripts can also work with jwhois for Red Hat distros like CentOS), dig, nslookup, openssl, nmap, lsb_release, gawk, sed, grep, echo, cat, cut, tr, rev, bc, column, host (also script also utilizes 'Shell Parameter Expansion').
4. The conf file of whois / jwhois is up to date. The conf file will dictate what TLDs will be supported so make sure it is up to date ( Updated conf files are available on /zyx/conf/ directory)

---------------------

How to deploy:

1. Simply Download the zip from github (link to the repo is https://github.com/zyxrhythm/bbclive/tree/4353.info ).
2. Unzip it on your server's website root directory, like cPanel's "public_html" directory. 
3. Configure the host and make the /cgi-bin folder able to execute bash scripts. 

---------------------

Customizations and Preferences:

- Edit the /zyx/site.vars to change 'browser tab titles', 'messages' and other 'texts' on the pages.

- Feel free to replace site icon (icon.png) and simple footer banner image (image.png).

- The css used on the pages are on the /css/ directory - feel free to theme the pages as you see fit.

- For google analytics you can put the snippet from google on /zyx/ganalytics.txt 

- Extra info on the About page can be edited on /zyx/moreinfo.txt

- Logs on the the Logs page can be modified on /zyx/logs.txt

- To access the website via https you can modify the "HTML meta tag" method redirection on index.html accordingly.

---------------------

#PLEASE NOTE: 
Scripts inside the 'cgi-bin' folder are  bash scripts.
Bash, though usable, is not intended for web development, so this site is a bit deviant.
So, please be careful on editing the contents of the 'cgi-bin' folder.

-The scripts supports both whois and jwhois.
-The scripts are tried tested on a Ubuntu 16.04.6 LTS (a Debian based distro).
-Though the scripts are tested on CentOs 6.10 (a Red Hat based distro), tests done on this are still on a juvinile phase.
-May also run well on other Debian and Red-Hat based distro.

---------------------









Ninja of port 43 and 53 information .

MIT License
Copyright (c) 2018 Zyx Rhythm
