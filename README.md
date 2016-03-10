<h1>Status Check</h1>
<p>This is a script designed for Web Developers to easily check their web server status. This is designed <b>only</b> for Debian based systems, as other systems will use different commands. This <b>has not</b> been tested on other systems, and if you do not use it on a Debian based system, it is not gurantted to work 100%. This has been tested on: Elementary OS & Ubuntu. If you wish to do testing for this script, please contact growl@protonmail.com

<h3> Disclaimer </h3>
<p> Black Network Services is not responsible for any damage that this script may inflict on your server. By downloading and using our script, you acknowledge that Black Network Services is not responsible for any damages that your server may endure after running this script.</p>

<h2>Functions</h2>
<p>Currently this script will do check the following services on your server.<p>
<ul>
  <li>Apache 2</li>
  <li>Nginx</li>
  <li>Mysql</li>
</ul>
<p>More services will be added!</p>
<br>
<p>The script will prompt you to select between Apache2 or Nginx. Please choose the one that is installed on your server, so the script can check it's status! If you choose a option that is not listed, the script will exit.</p>
<br>
<h1>How to identify errors</h1>
<p>If the text is <span style="color:red">red</span>, it means that the service is not working</p>
<p>If the text is <span style="color:green">green</span>, it means that the service is up and running!</p>
<br>
<p>In the event that the service that the script is checking is not on your server, it will return a <span style="color:red">red</span> text saying the service is down.</p>
