The "Once upon a time" Name: "The Information Ninja of port 43 and 53 --- also 443." 

Now simply ZYXW
---------------------

### If you just need the power of dip.zyx on a terminal, does not wish to download the pure bash script version and making it an executable. 

   #You can use the following one liner on a Linux/Mac computer:

      curl https://raw.githubusercontent.com/zyxrhythm/zyx-tools/master/nix/zyxw-dip.sh | bash -s github.com

   or if you want the full pawa:

     curl https://raw.githubusercontent.com/zyxrhythm/zyx-tools/master/nix/zyxw-dip.sh | bash -s github.com -f

   And of course do not forget to replace github.com with the domain you want to check.


   #Or If you are on a Windows computer and you have enabled "WSL", you can use the following one liner on the command prompt:

      bash -c "curl https://raw.githubusercontent.com/zyxrhythm/zyx-tools/master/nix/zyxw-dip.sh | bash -s github.com"

   or the FULL PAWAAA!:
   
      bash -c "curl https://raw.githubusercontent.com/zyxrhythm/zyx-tools/master/nix/zyxw-dip.sh | bash -s github.com -f"

   Dont forget the quotes (") they are necessary, and again do not forget to replace github.com with the domain you want to check.
---------------------

Before you deploy this on your server, make sure: 
--
0.    To read the license: https://github.com/zyxrhythm/zyxw/blob/Alpha/LICENSE

0.5   To note: This was created out of my 'not that much of a "free time"' while working as a tech support representative for a web host company. And though every now and then, but NOT that often, I try to test and "optimize" it, this version is far from being "refined". Keep in mind that this is an "Alpha" release. I'm far from being an master when it comes to 'programming with the best practices', and currently, I just do programming for fun, and on my 'not that much of a "free time"'. BUT AFAIK this is stable, gets the job done, and works pretty well for the particular use case I have "conceptualized" while creating it.     :0) 
--

1. Your server/host is running a Unix-like Operating System, like Ubuntu and CentOS! 
Though not necessary, but highly recommended, you should be able to install programs on the server: which can be done if you are able to login as the root user, or you have an account that has 'sudo priviledges'.

2. Bash 4.x is installed on your host and "cgi-bin" can execute Bash scripts. 

3. The following commands/programs are available on the host, and the scripts will be permitted to utilize them:
whois(the scripts can also work with jwhois for Red Hat distros like CentOS), dig, nslookup, openssl/nmap (for ssl checks), gawk, sed, grep, echo, cat, cut, tr, rev, bc, column, host.

(Note: If you prefer to deploy this the CLI way, its is a good thing to have git installed on the host).

4. The conf file of whois / jwhois is up to date. The conf file will dictate what TLDs will be supported by the whois tool and the dip.zyx script, so make sure it is up to date! And if the you are experiencing issues regarding whois result on dip.zyx and whois.zyx, try updating the whois.conf / jwhois.conf.
(Updated and highly recommended conf files for whois and jwhois are available here on this repo, and are located at the /zyx/conf/ directory)

---------------------

How to deploy:

[ The CLI (Command Line Interface) Way: ]

1. SSH to your server.

ssh yourusername@yourservernameorip

2. Change the working directory to your server's website Document Root directory using the cd command.

cd /afolder/anotherfolder/maybeanotherfolder/DocumentRoot

3. Clone this repo with the git command.

git clone -b Alpha https://github.com/zyxrhythm/zyxw
 
4. After step 3 a folder named 'zyxw' should be on the current working directory, copy its content to the document root by excuting the following command:

cp -R ./zyxw/* ..

5. Customize your website. (Details on how to are at 'Customizations and Tweaking')

---------------------

How to deploy:

[ The General GUI (Graphical User Interface) Way: ]

1. Download the zip from this page (https://github.com/zyxrhythm/zyxw) by clicking the green 'Code' button and clicking 'Download ZIP'. 

2. Upload the zip file and unzip/extract/decompress it on the 'document root', like cPanel's "public_html" directory. It is recommended that your webhost provides 'cPanel' to manage the server/host. The cgi-bin on the public_html diretory of cPanel is in most cases given the priviledge to execute a variety of scripts, and usually bash script is included, but it always depends on your hosting provider, it is best to contact them for that.

(Note: upon extraction, inside the 'zyxw-Alpha' folder -- are the files and folders that should be on 'public_html' directory )

3. If necessary, configure the host and make the /cgi-bin folder able to execute bash scripts. And make sure the necessary programs are installed on the host and are usable by the scripts. (The list of the necessary programs are above, on #3 of 'Before you deploy this on your server, make sure:' )

4. Customize the site. (Details on how to! are at 'Customizations and Tweaking')

---------------------

How to deploy:

[ The CLI (Command Line Interface) Way using the ALPHA installer/updater ): ]

1. wget https://raw.githubusercontent.com/zyxrhythm/zyx-tools/master/nix/zuni.sh

2. chmod +x zuni.sh

3 ./zuni.sh

4 Go through the installer wizard.

---------------------

Customizations and Tweaking:

- Edit the /zyx/vars/site.vars to change 'browser tab titles', webmaster email address, name of the tools( the special tool (dip.zyx), dig tool (digger.zyx), whois tool (whois.zyx), ssl info check tool (zyxinfo.zyx) ), and other 'texts' on the website pages.

- The initial message on all the tools page is editable on /zyx/vars/tpage.vars

- Replace site icon (icon.png) and simple footer image (image.png) with your own image and icon.

- The css used on the pages are on the /css directory - feel free to theme the pages as you see fit. You can also find ready to use .css files on .zip archives inside the directory - to use it, simply unzip them on the /css directory and replace the current .css files.

- For google analytics, you can put the snippet from google on /zyx/txt/ganalytics.txt 

- Extra info on the 'About' page can be edited on /zyx/txt/moreinfo.txt

- Logs on the the 'Logs' page can be modified on /zyx/txt/logs.txt

- Thanks page message can be edited on /zyx/txt/salamat.txt

- The site is directed to https by the .htaccess file on the /cgi-bin directory - (if you do not have an ssl cert issued for your domain  modify or delete the .htaccess file).

- TLDs on /zyx/blob/tldlistg.blob will be processed by the 'dip.zyx' script and will display a 'special custom' result.
(this is also the general list of 'gTLDs' supported by the script)

- TLDs on /zyx/blob/tldlist0.blob will be processed by the 'dip.zyx' script and will display the 'raw whois information' along with the dig results. 
( mostly these are ccTLDs -- and they do not follow the typical raw whois info format of gTLDs, so the script simply shows the raw whois result ).

- TLDs on /zyx/blob/tldlistx.blob will be ignored by the 'dip.zyx' script.


---------------------
- AFAIK -- A complete list of gTLDs is on /zyx/blob/gtldx.blob
- AFAIK -- A complete list of ccTLDs is on /zyx/blob/ccldx.blob
---------------------




#MORE NOTES#

#Scripts inside the '/cgi-bin' folder are  bash scripts.
#Bash, though usable, is not as effective as PHP for websites, so this site is a bit deviant.
#Please be careful on editing the contents of the '/cgi-bin' folder.

-The scripts supports both whois and jwhois.

>>>Again... "Updated and highly recommended conf files for whois and jwhois are available on /zyx/conf/ directory" =)

If you have sudo or root access on your host and want to replace the conf file on your host with the jwhois conf file in this repo, you can execute the following one liner:

sudo mv /etc/jwhois.conf /etc/jwhois.conf.bak; curl https://raw.githubusercontent.com/zyxrhythm/zyxw/Alpha/zyx/conf/jwhois.conf -o /etc/jwhois.conf;

If you have sudo or root access on your host and want to replace the conf file on your host with whois conf file in this repo, you can execute the following one liner:

sudo mv /etc/whois.conf /etc/whois.conf.bak; curl https://raw.githubusercontent.com/zyxrhythm/zyxw/Alpha/zyx/conf/whois.conf -o /etc/whois.conf;


You can also use wget:
sudo mv /etc/jwhois.conf /etc/jwhois.conf.bak; wget https://raw.githubusercontent.com/zyxrhythm/zyxw/Alpha/zyx/conf/jwhois.conf -O /etc/jwhois.conf;
sudo mv /etc/whois.conf /etc/whois.conf.bak; wget https://raw.githubusercontent.com/zyxrhythm/zyxw/Alpha/zyx/conf/whois.conf -O /etc/whois.conf;
---------------------









MIT License
Copyright (c) 2018 Zyx Rhythm (zyxrhythm@gmail.com)
https://github.com/zyxrhythm/zyxw
