<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
	<title>JavaFX | Rich Internet Applications Development | RIAs Java FX</title>

	<!--METAS-->	
	<meta name="description" content="Looking for rich Internet applications and web application development? Check out JavaFX for developing rich Internet experiences for all the screens of your life." />
	<meta name="keywords" content="JavaFX Sun Microsystems [...]" />
	
	<meta name="verify-v1" content="+fDfyBYBLo+68s/U0qDtddoxrwA/nfEs6hlJOR6sJSE=" /> 

	<!--
		Includes the common header elements like (CSS, Common Meta Tags, and Favicon)
	-->
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="author" content="Sun Microsystems" />
	<meta http-equiv="X-UA-Compatible" content="IE=7" />	

	<!--STYLESHEETS-->
	<link rel="stylesheet" type="text/css" href="/css/reset.css" />
	<link rel="stylesheet" type="text/css" href="/css/javafx.css?1.1.1" />
	<link rel="stylesheet" type="text/css" href="/css/source_code_samples.css" />
	<link rel="stylesheet" type="text/css" href="/css/learn.css" />
	<link rel="stylesheet" type="text/css" href="/css/k5.css" />
	
<script language="javascript1.2" type="text/javascript" src="/js/sniff.js"></script>
<script language="javascript1.2" type="text/javascript" src="/js/menucontent.js"></script>
	
	<!-- CONDITIONAL STYLESHEETS -->
	<!--[if IE]>
		<link rel="stylesheet" type="text/css" href="/css/ie.css" />
	<![endif]-->
	
	<!--[if IE 6]>
		<link rel="stylesheet" type="text/css" href="/css/ie6.css" />
	<![endif]-->
	
	<!--[if IE 7]>
		<link rel="stylesheet" type="text/css" href="/css/ie7.css" />
	<![endif]-->
	
	<!--ADDRESS BAR ICON-->

	<link rel="shortcut icon" type="image/ico" href="/images/favicon.ico" />

	<script language="javascript1.2" type="text/javascript" src="/js/platformDetection.js"></script>
	<script language="javascript1.2" type="text/javascript" src="/js/downloadInfo.js"></script>
</head>

<!--
	The ID here is required to indicate the page type.
	Changing this will affect the layout of the page.
-->
<body id="homepage">
	<div id="body">
	<!--
		Include the page header navigation.
		Params: (All values must be lower case.)
			section: optional param specifying the current location. Should be the same as the text in the tab. [explore, see, learn, start]
			sub_section: optional param specifying the sub location. Should be the same as the text in the actual tab. [overview, tutorials, faq]
	-->
		
	<!--
		Header is the main navigation.
		We are using CSS Sprites to apply images across the site, namely the header and subnav.
		
		This has a few implications for you guys, if you want to change the image for selected or hover states,
		you'll find the images embedded next to the header image in the same file. This makes it slightly harder to edit, and
		a lot more difficult to change in the styles, but allows for 1 file and download request which makes it much more performant.
		
		This also means some of the elements that use the sprites have id's that allow us to modify the sprite image based on each element.
		So in header and subnav, we have an id on each LI, these can't be changed or else the image styling will be ruined.
		
		The passed in section parameter is passed in the html as the class of the list, we will use this to style the selected tab in the list.
	-->
	
	<ul id="header" class="jfx null">
	
		<li id="fx" class="first">
			<h1 class="jfx"><a href="/"><span>FX</span></a></h1>
		</li>
		
		<li id="explore">
		
			<a href="http://download.oracle.com/javafx" target="_blank"><span>Learn</span></a>
		
		</li>
		
		<li id="see">
			<a href="/participate/"><span>Participate</span></a>
	
		</li>
	
		<li id="learn">
			<a href="/about-javafx/"><span>About</span></a>
		
		</li>
	
	
		<li id="start" class="last">
	
			<a href="/downloads/"><span>Get</span></a>
		
		</li>
	
	</ul>
	
	


		<div id="main">
			<!-- The masthead for this page is the main image on the page. -->
			<style>
#accordion {width:204px; float:right; *clear:both;}
.outer_wrapper{width:980px; margin:auto;}
.banner_wrapper{width: 980px; height: 414px; clear:both; position:relative; display:block;
background:url("../images/home_screens_background.gif")}
.highlight_wrapper{position:absolute;}
.navigator{position:absolute; right:375px; top:37px; clear:both;}
/*#hm1w1 .hm1w2{left:0}
.hm1w2{top:0;position:absolute;width:640px;height:410px;z-index:10000;float:left;left:-20000px;_overflow:hidden}*/
.hm1w2 h3{background:url("../images/hm1-hm1-png.png") no-repeat 0 100%;position:absolute;left:0;top:170px;font-weight:normal;color:#fff;text-transform:uppercase;padding:4px 8px 4px 14px;margin:0;font-size:12px}

.hm1w3{background:url("../images/hm1-hm1-png.png") no-repeat 0 0;position:absolute;left:55px;top:215px;width:491px;padding:11px 16px 8px 16px;_background:#fff}
.hm1w3 h2{font-size:16px;font-weight:bold;background:transparent;margin:0;padding:0;line-height:20px}
.hm1w3 p{margin:8px 0 0;font-size:12px;padding:0}
.hm1w3 p.metainfo{color:#0364B5;font-size:14px;text-align:right;}

.hm1w3 h2 a, .hm1w3 h2 a:hover{ text-decoration:none; color:#000;}
.hm1w3 p a, .hm1w3 p a:hover{ text-decoration:none; color:#000;}
.hm1w3 p.metainfo a, .hm1w3 p.metainfo a:hover{ text-decoration:none; color:#0364B5;}

.feature1{background-image:url('../images/home_screens_bg1.jpg');background-repeat:no-repeat;opacity:1;display:none;cursor:pointer;width:640px; height:395px;position:absolute;margin-top:21px;}
.feature2{background-image:url('../images/home_screens_bg2.jpg');background-repeat:no-repeat;opacity:1;display:none;cursor:pointer;width:640px; height:395px;position:absolute;margin-top:21px;}
.feature3{background-image:url('../images/home_screens_bg4.jpg');background-repeat:no-repeat;opacity:1;display:none;cursor:pointer;width:640px; height:395px;position:absolute;margin-top:21px;}

/* Start  New Code for OCOM Home Page Banner */
#prev{background:url(../images/arrow-prev-off.gif) left top no-repeat;  width:18px; height:25px; cursor:pointer;}
#prev:hover{background:url(../images/arrow-prev-over.gif) left top no-repeat;  width:18px; height:25px; cursor:pointer;}

#next{background:url(../images/arrow-next-off.gif) left top no-repeat;  width:18px; height:25px; cursor:pointer;}
#next:hover{background:url(../images/arrow-next-over.gif) left top no-repeat;  width:18px; height:25px; cursor:pointer;}

.one_on{background:url(../images/one-on.gif) left top no-repeat; width:18px; height:25px; cursor:pointer;}
.two_on{background:url(../images/two-on.gif) left top no-repeat; width:18px; height:25px; cursor:pointer;}
.three_on{background:url(../images/three-on.gif) left top no-repeat; width:18px; height:25px; cursor:pointer;}

.one_off{background:url(../images/one-off.gif) left top no-repeat; width:18px; height:25px; cursor:pointer;}
.one_off:hover{background:url(../images/one-over.gif) left top no-repeat; width:18px; height:25px; cursor:pointer;}

.two_off{background:url(../images/two-off.gif) left top no-repeat; width:18px; height:25px; cursor:pointer;}
.two_off:hover{background:url(../images/two-over.gif) left top no-repeat; width:18px; height:25px; cursor:pointer;}

.three_off{background:url(../images/three-off.gif) left top no-repeat; width:18px; height:25px; cursor:pointer;}
.three_off:hover{background:url(../images/three-over.gif) left top no-repeat; width:18px; height:25px; cursor:pointer;}
/* End  New Code */
</style>

<script type="text/javascript">
   var g_navNode_Path = new Array();
       g_navNode_Path[0] = '8';
   var g_ssSourceNodeId = "8";
   var g_ssSourceSiteId = "ocomen";
   var g_strLanguageId = "en";
</script>

<script language="JavaScript" src="/js/masterhp.js">
</script>
  
<div class="outer_wrapper">
<div style="display: block;">
<div class="banner_wrapper">

<div style="display: none; background-image: url(&quot;../images/home_screens_bg1.jpg&quot;); background-repeat: no-repeat; margin-top:21px; opacity: 0.01;" id="0" class="feature1">
<div class="hm1w2 first">
<h3>WHAT'S NEW</h3> 
<div class="hm1w3"><h2><a href="http://www.oracle.com/technetwork/java/javafx/downloads/" target="_blank">Moving Java Forward: JavaFX 2.0 Now Available!</a></h2> 
<p><a href="http://www.oracle.com/technetwork/java/javafx/downloads/" target="_blank">JavaFX 2.0 is the next step in the evolution of Java as a rich client platform. It is designed to provide a lightweight, hardware-accelerated Java UI platform for enterprise business applications. Start developing JavaFX applications with the JavaFX SDK and your favorite Java development tools.</a></p> 
<p class="metainfo"><a href="http://www.oracle.com/technetwork/java/javafx/downloads/" target="_blank"><strong>Download Now &gt;</strong></a></p>
</div>
</div>
</div> 

<div style="display: none; background-image: url(&quot;../images/home_screens_bg2.jpg&quot;); background-repeat: no-repeat; margin-top:21px; opacity: 0.01;" id="1" class="feature2">
<div class="hm1w2">
<h3>WHAT'S NEW</h3>
<div class="hm1w3"><h2><a href="http://docs.oracle.com/javafx/2.0/get_started/jfxpub-get_started.htm" target="_blank">Build rich visual user interfaces in Java</a></h2> 
<p><a href="http://docs.oracle.com/javafx/2.0/get_started/jfxpub-get_started.htm" target="_blank">JavaFX 2.0 applications are completely developed in Java, one of the most popular software development technologies, while leveraging the power of standards-based programming practices and design patterns.</a></p> 
<p class="metainfo"><a href="http://docs.oracle.com/javafx/2.0/get_started/jfxpub-get_started.htm" target="_blank"><strong>Learn More &gt;</strong></a></p>
</div>
</div>
</div>

<div style="display: none; background-image: url(&quot;../images/home_screens_bg4.jpg&quot;); background-repeat: no-repeat; margin-top:21px; opacity: 0.01;" id="2" class="feature3">
<div class="hm1w2">
<h3>WHAT'S NEW</h3> 
<div class="hm1w3">
<h2><a href="/participate/">Join us in making JavaFX successful</a></h2> 
<p><a href="/participate/">Many ways to participate: Build a JavaFX application and talk about it in your blogs. Participate in the JavaFX developer forums. Share your experience with your local Java User Group or at your favorite developer conference.</a></p> 
<p class="metainfo"><a href="/participate/"><strong>Learn More &gt;</strong></a></p>
</div>
</div>
</div>

<div class="highlight_wrapper">
</div>
<div class="navigator"><!--[if IE]>
<div class="absIE" style="position: relative; top:  0px;">
<![endif]-->
<table border="0" cellpadding="0" cellspacing="0">
    <tbody>
        <tr>
            <td>
            <div onclick="javascript:animate((active + arrayLength - 1) % 
arrayLength,true);" alt="Previous Feature" title="Previous Feature" id="prev">&nbsp;</div>
            </td>
            <td>
            <div class="one_off" onclick="javascript:animate(0,true);" alt="Feature 1" id="myImage1">&nbsp;</div>
            </td>
            <td>
            <div class="two_on" onclick="javascript:animate(1,true);" alt="Feature 2" id="myImage2">&nbsp;</div>
            </td>
            <td>
            <div class="three_off" onclick="javascript:animate(2,true);" alt="Feature 3" id="myImage3">&nbsp;</div>
            </td>

            <td>
            <div onclick="javascript:animate((active+1) % arrayLength,true);" alt="Next Feature" title="Next Feature" id="next">&nbsp;</div>
            </td>
        </tr>
    </tbody>
</table>
<!--[if IE]>
</div>
<![endif]-->
</div>

<div id="menu">
<!--[if IE]>
<div class="absIE" style="position: relative; top: 0px; right: 0px;">
<![endif]-->
	<a href="http://www.oracle.com/technetwork/java/javafx/downloads/"><img src="../images/home_dl_orange3.png" alt="Get Started" width="324" height="70"></a>
<!--[if IE]>
</div>
<![endif]-->
</div>

<div id="news-ticker">
<h3><span>Latest News &amp; Updates</span></h3>
<!--[if IE]>
<div class="absIE" style="position: relative; top: 0px; right:0px;">
<![endif]-->
	<ul>
	    <li>JavaFX 2.0.2 <a href="http://www.oracle.com/technetwork/java/javafx/downloads/index.html" target="_blank">release</a> adds <a href="http://javafx.com/faq/#10" target="_blank">redistribution</a> rights, <a href="http://javafx.com/faq/#12" target="_blank">support plan</a>, and SWT/JavaFX integration
	    <li><a href="http://medianetwork.oracle.com/video/player/1191127359001" target="_blank">Video: Introducing JavaFX 2.0</a></li>
	    <li><a href="http://www.oracle.com/technetwork/java/javafx/overview/javafx-2-datasheet-496523.pdf" target="_blank">JavaFX 2.0 Data Sheet</a></li>
	    <li><a href="http://download.oracle.com/javafx/2.0/get_started/jfxpub-get_started.htm" target="_blank">Getting started with JavaFX</a></li>
	    <li><a href="http://fxexperience.com/" target="_blank">FX Experience: JavaFX News, Demos & Insight</a></li>
	    <li><a href="http://www.oracle.com/technetwork/java/javafx/downloads/javafx2-macosx-487281.html" target="_blank">Download JavaFX 2.0 Developer Preview for Mac</a></li>
	    <li><a href=" http://www.oracle.com/technetwork/java/javase/downloads/index.html" target="_blank">Download JDK 7</a></li>
	</ul>
<!--[if IE]>
</div>
<![endif]-->
</div>

</div>
</div>

<div id="accordionNon">
<div id="slider" class="accordionNon">
</div>
</div>

<script type="text/javascript">
var slider1=new accordion.slider("slider1");
slider1.init("slider",0,"open");
animate(active,"first");
</script>

</div>
</div>

			
			<!-- Featured section is the blue bar section at the bottom of page with the gallery, news and some summary content. -->
			<div id="featured">

				<style>
.fourcolumn h3 {
	font: normal 18px "Helvetica Neue", Helvetica, Arial, Geneva, sans-serif;
	color: #FFFFFF;
	margin-left: 15px;
	margin-top: 18px;
	margin-bottom: 14px;
	line-height:20px;
}
.fourcolumn p{
	font-size:12px;
	line-height:15px;
	color:#FFFFFF;
	margin-left: 15px;
	margin-right: 10px;
	margin-top: 0px;
	margin-bottom: 12px;
}
.fourcolumn ul {
 margin: 0 0 -3 0px;
 padding: 0 0 0 0px;
 }
 
.fourcolumn li{
	font-size:12px;
	line-height:15px;
	list-style: none;
	color:#FFFFFF;
	border:0;
	background:transparent url('/images/bullet_white.png');
	background-repeat: no-repeat;
	background-position: 15px 6px; 
	padding-left:25px;
	padding-right:5px;
}
.fourcolumn li.last{
	font-size:12px;
	line-height:15px;
	list-style: none;
	color:#FFFFFF;
	border:0;
	background:transparent url('/images/bullet_white.png');
	background-repeat: no-repeat;
	background-position: 15px 6px; 
	padding-left:25px;
	padding-right:5px;
	padding-bottom:8px;
}
.fourcolumn p a, .fourcolumn p a:hover {
	text-decoration:none; 
	font-size:11px;
	color:#0364B5;
}
.fourcolumn p.more{
	color:#0364B5;
	font-size:13px;
	line-height:12px;
	text-align:left;
	font-weight: normal;

}
.fourcolumn p.more a, .fourcolumn p.more a:hover { 
	text-decoration:none; 
	color:#0364B5;
	font-size:13px;
	line-height:12px;
	font-weight: normal;
}
</style>

<div style="position:absolute;width:250px;height:180px;left:5px;top:5px;">
<div class="fourcolumn"><h3>Why Use JavaFX</h3>
	<p class="fourcolumn">JavaFX provides a powerful Java-based UI platform capable of handling large-scale data-driven business applications. Developers can preserve existing investments by reusing Java libraries in their JavaFX applications. </p>
	<p class="more"><a href="http://docs.oracle.com/javafx/" target="_blank">Learn More &gt;</a></p>
	</div>
</div>

<div style="position:absolute;width:260px;height:180px;left:250px;top:5px;">
<div class="fourcolumn"><h3>What's New</h3>
	<p class="fourcolumn">
	JavaFX 2.0 is a major update to the JavaFX platform. Starting with this version, developers can create JavaFX applications completely in Java. It provides a rich set of graphics and media API to simplify development of visual applications.</p>
	<p class="more"><a href="/roadmap/">See Overview of Features &gt;</a></p>
	</div>
</div>

<div style="position:absolute;width:260px;height:180px;left:510px;top:5px;">
<div class="fourcolumn"><h3>Benefits</h3>
	<p class="fourcolumn">
<ul class="fourcolumn">
<li>Create JavaFX applications completely in Java using standard development tools</li>
<li>Integrate JavaFX into Swing; leverage high-performance graphics; embed Web content; play media</li>
<li class="last">Gain flexibility to create rich applications for desktops and browsers with improved UI controls</li>
</ul></p>
	<p class="more"><a href="/faq/">Read More &gt;</a></p>
	</div>
</div>

<div style="position:absolute;width:220px;height:180px;left:770px;top:5px;">
<div class="fourcolumn"><h3>Get Started</h3>
	<p class="more"><a href="http://www.oracle.com/technetwork/java/javafx/downloads/" target="_blank">Download JavaFX &gt;</a></p>
	<p class="more"><a href="http://forums.oracle.com/forums/forum.jspa?forumID=1385" target="_blank">Join the JavaFX Forums &gt;</a></p>
	<p class="more"><a href="http://dlc.sun.com.edgesuite.net/netbeans/7.1/rc2/" target="_blank">Download NetBeans 7.1 RC2 &gt;</a></p>
	<p class="more"><a href="http://www.oracle.com/technetwork/java/javafx/overview/index.html?ssSourceSiteId=ocomen#more_videos" target="_blank">Watch JavaFX videos &gt;</a></p>
    <p class="more"><a href="http://javafx-jira.kenai.com/" target="_blank">File a bug &gt;</a></p>
	
	</div>
</div>
				
			</div> <!-- /#content -->
	
		<!--
			Includes common page footer
		-->
		
		<div id="footer">

			<span class="copy">&copy; 2011, Oracle Corporation and/or its affiliates.</span>
			<ul class="jfx">
				<li class="first"><a href="http://www.oracle.com/us/legal/privacy/index.html" target="_blank">Privacy</a></li>
				<li><a href="http://www.oracle.com/us/legal/terms/index.html" target="_blank">Terms of Use</a></li>
				<li><a href="http://www.oracle.com/us/legal/third-party-trademarks/index.html" target="_blank">Trademarks</a></li>
				<li><a href="http://www.oracle.com/us/support/licensecodes/index.html" target="_blank">Licensing</a></li>

			</ul>
			<a href="http://www.oracle.com/" id="footer_link"><span>Oracle.com</span></a>
		</div>



<script src="/js/omi/s_code_remote.js" type="text/javascript"></script>
 
		
	</div>
	
</body>
</html>
<!--
	Includes common javascript.
	At the bottom of the page for faster page loading.
-->
<!--
	JAVASCRIPT
	At the bottom of the page so that we download and render all the visual elements, before we start handling the javascript. This provides for a faster perceived loading time.
-->

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.2.6/jquery.min.js"></script>
<!--[if lte IE 6]>
	<script type="text/javascript" src="/js/jquery.ifixpng.js"></script>
<![endif]-->
<script type="text/javascript" src="/js/jquery.history.js"></script>
<script type="text/javascript" src="/js/javafx.js"></script>
<script type="text/javascript" src="/js/popUp.js"></script>
<script type="text/javascript" src="/partners/ps.js"></script>

 
