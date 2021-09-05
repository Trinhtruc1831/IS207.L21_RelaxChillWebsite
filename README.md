#  RelaxChill

UIT web project 07/2021



## Install necessary apps

1. ### Xampp/Wamp
Xampp or Wamp is used as a local development server. But we recommend to install Xampp since it works with almost platforms like Mac, Linux, Windows, etc,...and Xampp also supports Perl, PHP, MySQL whereas WAMP supports only PHP & MySQL and is not available for Mac.
So, all the steps below will be instructed as using Xampp.
Link download Xampp: https://www.apachefriends.org/download.html
After installing, open "XAMPP Control Panel" and start two modules "Apache" and "MySQL". When two modules turns green it means XAMPP is available.
* If two modules that you have started doesn't turn to green (maybe yellow or red) that means you have some trouble in the default port (80).
* But it doesn't matter! You could solve this problem by the keyword "change XAMPP apache server port".

![](https://imgur.com/ylj93Zm.png)

2. ### Visual studio code

VSCode is an IDE used to develop the website.

## Usage

1. ### Step 1:
* Go to the "xampp" folder that you have install in your computer (find in the main hard disk (C:)).
* Then go to "htdocs" folder and git clone the repo here.

![](https://imgur.com/wI5ko4m.png)

2. ### Step 2:
* Open the "RelaxChill" folder that you have just cloned by VSCode, so you could edit codes from now.

![](https://imgur.com/I0DAuT7.png)

3. ### Step 3:
* Access to "http://localhost:80/phpmyadmin"
**Note:** <:80> is a default port when you install XAMPP, but if you have changed XAMPP apache server port, so change 80 as a port that you have edit in config file. 
(Ex: http://localhost:8080/phpmyadmin)

![](https://imgur.com/pXGpgNf.png)

* Create a new database name "relax&chill".
* Set db collation as "utf8_unicode_ci"

![](https://imgur.com/ejTJaGO.png)

* Import our database
Link download database: https://drive.google.com/file/d/1bpoEUOycWQxGdm51n0dcdukrYzWAmKV1/view?usp=sharing

![](https://imgur.com/maXT9z2.png)

* Finally, click "Go" button.

![](https://imgur.com/Ol9Dapg.png)

3. ### Step 3:
* Now, all the necessary pre-setups has completed.
* You can display our website by open any web browser and access to the link: 
http://localhost:80/RelaxChill/
**Note:** For who have changed the XAMPP apache server port, you also change port in our code by search "localhost:80" and replace with "localhost:<your-port>".

![](https://imgur.com/wuPSY5e.png)

You also have to change the link to the website. 
(Ex: http://localhost:8080/RelaxChill/)
 
<img src="https://media.giphy.com/media/89aw0r2YeRcCzklmPs/giphy.gif" width="900">
 
<img src="https://media.giphy.com/media/VKb8rtNWtfZAPOJJF5/giphy.gif" width="900">

3. ### Note:
 Our web was built in MVC so that all the codes was totally divided into 3 part Model-View-Controller.
 For more in formation, you could search keyword "MVC for web development".
