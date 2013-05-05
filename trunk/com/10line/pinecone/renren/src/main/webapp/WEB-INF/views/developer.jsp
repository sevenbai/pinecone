<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<!--
		Charisma v1.0.0

		Copyright 2012 Muhammad Usman
		Licensed under the Apache License v2.0
		http://www.apache.org/licenses/LICENSE-2.0

		http://usman.it
		http://twitter.com/halalit_usman
	-->
	<meta charset="utf-8">
	<title>松果网——开发者</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="物联网应用平台，智能你的生活！">
	<meta name="author" content="北京松果科技有限责任公司">

	<!-- The styles -->
	<link id="bs-css" href="css/bootstrap-cerulean.css" rel="stylesheet">
	<style type="text/css">
	  body {
		padding-bottom: 40px;
	  }
	  .sidebar-nav {
		padding: 9px 0;
	  }
	</style>
	<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:宋体;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:黑体;
	panose-1:2 1 6 9 6 1 1 1 1 1;}
@font-face
	{font-family:黑体;
	panose-1:2 1 6 9 6 1 1 1 1 1;}
@font-face
	{font-family:楷体_GB2312;}
@font-face
	{font-family:"\@宋体";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"\@黑体";
	panose-1:2 1 6 9 6 1 1 1 1 1;}
@font-face
	{font-family:"\@楷体_GB2312";}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:"Times New Roman","serif";}
h1
	{margin-top:17.0pt;
	margin-right:0cm;
	margin-bottom:16.5pt;
	margin-left:21.6pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-indent:-21.6pt;
	line-height:240%;
	page-break-after:avoid;
	font-size:22.0pt;
	font-family:"Times New Roman","serif";
	font-weight:bold;}
h2
	{margin-top:13.0pt;
	margin-right:0cm;
	margin-bottom:13.0pt;
	margin-left:28.8pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-indent:-28.8pt;
	line-height:172%;
	page-break-after:avoid;
	font-size:16.0pt;
	font-family:"Arial","sans-serif";
	font-weight:bold;}
h3
	{margin-top:13.0pt;
	margin-right:0cm;
	margin-bottom:13.0pt;
	margin-left:36.0pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-indent:-36.0pt;
	line-height:172%;
	page-break-after:avoid;
	font-size:16.0pt;
	font-family:"Times New Roman","serif";
	font-weight:bold;}
h4
	{margin-top:14.0pt;
	margin-right:0cm;
	margin-bottom:14.5pt;
	margin-left:43.2pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-indent:-43.2pt;
	line-height:155%;
	page-break-after:avoid;
	font-size:14.0pt;
	font-family:"Arial","sans-serif";
	font-weight:bold;}
h5
	{margin-top:14.0pt;
	margin-right:0cm;
	margin-bottom:14.5pt;
	margin-left:50.4pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-indent:-50.4pt;
	line-height:156%;
	page-break-after:avoid;
	font-size:14.0pt;
	font-family:"Times New Roman","serif";
	font-weight:bold;}
h6
	{margin-top:12.0pt;
	margin-right:0cm;
	margin-bottom:3.2pt;
	margin-left:57.6pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-indent:-57.6pt;
	line-height:133%;
	page-break-after:avoid;
	font-size:12.0pt;
	font-family:"Arial","sans-serif";
	font-weight:bold;}
p.MsoHeading7, li.MsoHeading7, div.MsoHeading7
	{margin-top:12.0pt;
	margin-right:0cm;
	margin-bottom:3.2pt;
	margin-left:64.8pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-indent:-64.8pt;
	line-height:133%;
	page-break-after:avoid;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	font-weight:bold;}
p.MsoHeading8, li.MsoHeading8, div.MsoHeading8
	{margin-top:12.0pt;
	margin-right:0cm;
	margin-bottom:3.2pt;
	margin-left:72.0pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-indent:-72.0pt;
	line-height:133%;
	page-break-after:avoid;
	font-size:12.0pt;
	font-family:"Arial","sans-serif";}
p.MsoHeading9, li.MsoHeading9, div.MsoHeading9
	{margin-top:12.0pt;
	margin-right:0cm;
	margin-bottom:3.2pt;
	margin-left:79.2pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-indent:-79.2pt;
	line-height:133%;
	page-break-after:avoid;
	font-size:10.5pt;
	font-family:"Arial","sans-serif";}
p.MsoToc1, li.MsoToc1, div.MsoToc1
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.MsoToc2, li.MsoToc2, div.MsoToc2
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:21.0pt;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.MsoToc3, li.MsoToc3, div.MsoToc3
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:42.0pt;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.MsoToc4, li.MsoToc4, div.MsoToc4
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:63.0pt;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.MsoCommentText, li.MsoCommentText, div.MsoCommentText
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.5pt;
	font-family:"Times New Roman","serif";}
p.MsoHeader, li.MsoHeader, div.MsoHeader
	{mso-style-link:"页眉 Char";
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:center;
	layout-grid-mode:char;
	border:none;
	padding:0cm;
	font-size:9.0pt;
	font-family:"Times New Roman","serif";}
p.MsoFooter, li.MsoFooter, div.MsoFooter
	{mso-style-link:"页脚 Char";
	margin:0cm;
	margin-bottom:.0001pt;
	layout-grid-mode:char;
	font-size:9.0pt;
	font-family:"Times New Roman","serif";}
p.MsoCaption, li.MsoCaption, div.MsoCaption
	{margin-top:7.6pt;
	margin-right:0cm;
	margin-bottom:8.0pt;
	margin-left:0cm;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.0pt;
	font-family:"Arial","sans-serif";}
p.MsoTof, li.MsoTof, div.MsoTof
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-indent:-10.0pt;
	font-size:10.5pt;
	font-family:"Times New Roman","serif";}
p.MsoDate, li.MsoDate, div.MsoDate
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:5.0pt;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{color:purple;
	text-decoration:underline;}
p.MsoDocumentMap, li.MsoDocumentMap, div.MsoDocumentMap
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	background:navy;
	font-size:10.5pt;
	font-family:"Times New Roman","serif";}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:宋体;}
p
	{margin-right:0cm;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:宋体;}
p.MsoCommentSubject, li.MsoCommentSubject, div.MsoCommentSubject
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.5pt;
	font-family:"Times New Roman","serif";
	font-weight:bold;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:8.0pt;
	font-family:"Times New Roman","serif";}
span.Char
	{mso-style-name:"页脚 Char";
	mso-style-link:页脚;}
span.Char0
	{mso-style-name:"页眉 Char";
	mso-style-link:页眉;}
p.a, li.a, div.a
	{mso-style-name:首行缩进正文;
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-indent:24.0pt;
	line-height:150%;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.1, li.1, div.1
	{mso-style-name:样式1;
	margin-top:13.0pt;
	margin-right:0cm;
	margin-bottom:13.0pt;
	margin-left:70.9pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-indent:-1.0cm;
	line-height:172%;
	page-break-after:avoid;
	font-size:16.0pt;
	font-family:"Times New Roman","serif";
	font-weight:bold;}
p.test, li.test, div.test
	{mso-style-name:test;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:57.6pt;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-indent:-57.6pt;
	font-size:10.5pt;
	font-family:"Times New Roman","serif";}
span.apple-style-span
	{mso-style-name:apple-style-span;}
 /* Page Definitions */
 @page WordSection1
	{size:595.3pt 841.9pt;
	margin:79.4pt 70.9pt 70.9pt 70.9pt;
	layout-grid:15.6pt;}
div.WordSection1
	{page:WordSection1;}
@page WordSection2
	{size:595.3pt 841.9pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;
	layout-grid:15.6pt;}
div.WordSection2
	{page:WordSection2;}
@page WordSection3
	{size:841.9pt 595.3pt;
	margin:89.85pt 72.0pt 89.85pt 72.0pt;
	layout-grid:15.6pt;}
div.WordSection3
	{page:WordSection3;}
 /* List Definitions */
 ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
-->
</style>
	<link href="css/bootstrap-responsive.css" rel="stylesheet">
	<link href="css/charisma-app.css" rel="stylesheet">
	<link href="css/jquery-ui-1.8.21.custom.css" rel="stylesheet">
	<link href='css/fullcalendar.css' rel='stylesheet'>
	<link href='css/fullcalendar.print.css' rel='stylesheet'  media='print'>
	<link href='css/chosen.css' rel='stylesheet'>
	<link href='css/uniform.default.css' rel='stylesheet'>
	<link href='css/colorbox.css' rel='stylesheet'>
	<link href='css/jquery.cleditor.css' rel='stylesheet'>
	<link href='css/jquery.noty.css' rel='stylesheet'>
	<link href='css/noty_theme_default.css' rel='stylesheet'>
	<link href='css/elfinder.min.css' rel='stylesheet'>
	<link href='css/elfinder.theme.css' rel='stylesheet'>
	<link href='css/jquery.iphone.toggle.css' rel='stylesheet'>
	<link href='css/opa-icons.css' rel='stylesheet'>
	<link href='css/uploadify.css' rel='stylesheet'>

	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- The fav icon -->
	<link rel="shortcut icon" href="img/favicon.ico">
		
</head>

<body>
		<!-- topbar starts -->
	<div class="navbar">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" style="width:250px" href="index.html"> <img style="width:250px;height:50px" alt="Pinecone Logo" src="img/logo_title.png" /></a>
				
				<!-- theme selector starts -->
				<!--
				<div class="btn-group pull-right theme-container" >
					<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
						<i class="icon-tint"></i><span class="hidden-phone"> Change Theme / Skin</span>
						<span class="caret"></span>
					</a>
					<ul class="dropdown-menu" id="themes">
						<li><a data-value="classic" href="#"><i class="icon-blank"></i> Classic</a></li>
						<li><a data-value="cerulean" href="#"><i class="icon-blank"></i> Cerulean</a></li>
						<li><a data-value="cyborg" href="#"><i class="icon-blank"></i> Cyborg</a></li>
						<li><a data-value="redy" href="#"><i class="icon-blank"></i> Redy</a></li>
						<li><a data-value="journal" href="#"><i class="icon-blank"></i> Journal</a></li>
						<li><a data-value="simplex" href="#"><i class="icon-blank"></i> Simplex</a></li>
						<li><a data-value="slate" href="#"><i class="icon-blank"></i> Slate</a></li>
						<li><a data-value="spacelab" href="#"><i class="icon-blank"></i> Spacelab</a></li>
						<li><a data-value="united" href="#"><i class="icon-blank"></i> United</a></li>
					</ul>
				</div>
				-->
				<!-- theme selector ends -->
				
				<!-- user dropdown starts -->
				<!--<div class="btn-group pull-right" >
					<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
						<i class="icon-user"></i><span class="hidden-phone"> admin</span>
						<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="#">Profile</a></li>
						<li class="divider"></li>
						<li><a href="login.html">Logout</a></li>
					</ul>
				</div> -->
				<!-- user dropdown ends -->
				
				<!-- <div class="top-nav nav-collapse">
					<ul class="nav">
						<li><a href="#" style="padding-top:10px;">浏览网站</a></li>
						<li>
							<form class="navbar-search pull-left">
								<input placeholder="检索" class="search-query span2" name="query" type="text">
							</form>
						</li>
					</ul>
				</div> --><!--/.nav-collapse -->
			</div>
		</div>
	</div>
	<!-- topbar ends -->
		<div class="container-fluid">
		<div class="row-fluid">
				
			<!-- left menu starts -->
			<div class="span2 main-menu-span">
				<div class="well nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li class="nav-header hidden-tablet">菜单</li>
						<li><a class="ajax-link" href="home.html"><i class="icon-home"></i><span class="hidden-tablet"> 主页</span></a></li>
						<li><a class="ajax-link" href="products.html"><i class="icon-shopping-cart"></i><span class="hidden-tablet"> 产品</span></a></li>
						<li><a class="ajax-link" href="developer.html"><i class="icon-wrench"></i><span class="hidden-tablet"> 开发者</span></a></li>
						<li><a class="ajax-link" href="sensation.html"><i class="icon-globe"></i><span class="hidden-tablet"> 感知</span></a></li>
						<li><a href="login.html"><i class="icon-lock"></i><span class="hidden-tablet"> 登陆</span></a></li>
					</ul>
				</div><!--/.well -->
			</div><!--/span-->
			<!-- left menu ends -->
			
			<noscript>
				<div class="alert alert-block span10">
					<h4 class="alert-heading">Warning!</h4>
					<p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
				</div>
			</noscript>
			
			<div id="content" class="span10">
			<!-- content starts -->

			<div class="row-fluid sortable"><!--/span-->
			
			</div><!--/row-->

			<div class="row-fluid sortable">
				<div style="margin-top:0px" class="box span12">
					<div class="box-content">
						<div class="page-header">
							<h1 style='text-align:center'>开发者手册<small>（Version 0.1）</small></h1>
						</div>
						<div class="row-fluid ">

<div class=WordSection2 style='layout-grid:15.6pt'>

<p class=MsoNormal align=center><b><span lang=EN-US
style='font-size:16pt'>目录</span></b></p>

<p class=MsoToc1><span
class=MsoHyperlink><span lang=EN-US><a href="#_Toc339397981"><span
style='font-family:宋体'>1</span><span style='font-size:10.5pt;color:windowtext;
text-decoration:none'>&nbsp;&nbsp;&nbsp;&nbsp; </span><span style='font-family:
宋体'>REST API</span><span style='color:windowtext;display:none;
text-decoration:none'>. </span><span
style='color:windowtext;display:none;text-decoration:none'>1</span></a></span></span></p>

<p class=MsoToc2><span class=MsoHyperlink><span lang=EN-US><a
href="#_Toc339397982">1.1<span style='font-size:10.5pt;color:windowtext;
text-decoration:none'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Device
API<span style='color:windowtext;display:none;text-decoration:none'>. </span><span
style='color:windowtext;display:none;text-decoration:none'>1</span></a></span></span></p>

<p class=MsoToc3><span class=MsoHyperlink><span lang=EN-US><a
href="#_Toc339397983">1.1.1<span style='font-size:10.5pt;color:windowtext;
text-decoration:none'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Create Device<span
style='color:windowtext;display:none;text-decoration:none'>. </span><span
style='color:windowtext;display:none;text-decoration:none'>1</span></a></span></span></p>

<p class=MsoToc3><span class=MsoHyperlink><span lang=EN-US><a
href="#_Toc339397984">1.1.2<span style='font-size:10.5pt;color:windowtext;
text-decoration:none'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Delete Device<span
style='color:windowtext;display:none;text-decoration:none'>. </span><span
style='color:windowtext;display:none;text-decoration:none'>1</span></a></span></span></p>

<p class=MsoToc3><span class=MsoHyperlink><span lang=EN-US><a
href="#_Toc339397985">1.1.3<span style='font-size:10.5pt;color:windowtext;
text-decoration:none'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Update Device<span
style='color:windowtext;display:none;text-decoration:none'>. </span><span
style='color:windowtext;display:none;text-decoration:none'>2</span></a></span></span></p>

<p class=MsoToc3><span class=MsoHyperlink><span lang=EN-US><a
href="#_Toc339397986">1.1.4<span style='font-size:10.5pt;color:windowtext;
text-decoration:none'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Update Device’s
User<span style='color:windowtext;display:none;text-decoration:none'> </span><span
style='color:windowtext;display:none;text-decoration:none'>2</span></a></span></span></p>

<p class=MsoToc3><span class=MsoHyperlink><span lang=EN-US><a
href="#_Toc339397987">1.1.5<span style='font-size:10.5pt;color:windowtext;
text-decoration:none'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Update Device’s
Variables<span style='color:windowtext;display:none;text-decoration:none'>. </span><span
style='color:windowtext;display:none;text-decoration:none'>2</span></a></span></span></p>

<p class=MsoToc3><span class=MsoHyperlink><span lang=EN-US><a
href="#_Toc339397988">1.1.6<span style='font-size:10.5pt;color:windowtext;
text-decoration:none'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Find Device<span
style='color:windowtext;display:none;text-decoration:none'>. </span><span
style='color:windowtext;display:none;text-decoration:none'>3</span></a></span></span></p>

<p class=MsoToc3><span class=MsoHyperlink><span lang=EN-US><a
href="#_Toc339397989">1.1.7<span style='font-size:10.5pt;color:windowtext;
text-decoration:none'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Find Devices<span
style='color:windowtext;display:none;text-decoration:none'>. </span><span
style='color:windowtext;display:none;text-decoration:none'>4</span></a></span></span></p>

<p class=MsoToc3><span class=MsoHyperlink><span lang=EN-US><a
href="#_Toc339397990">1.1.8<span style='font-size:10.5pt;color:windowtext;
text-decoration:none'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Find Device’s User<span
style='color:windowtext;display:none;text-decoration:none'> </span><span
style='color:windowtext;display:none;text-decoration:none'>5</span></a></span></span></p>

<p class=MsoToc3><span class=MsoHyperlink><span lang=EN-US><a
href="#_Toc339397991">1.1.9<span style='font-size:10.5pt;color:windowtext;
text-decoration:none'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Find Device’s
Variables<span style='color:windowtext;display:none;text-decoration:none'>. </span><span
style='color:windowtext;display:none;text-decoration:none'>6</span></a></span></span></p>

<p class=MsoNormal align=center><span lang=EN-US
style='font-size:9.0pt;color:red'>&nbsp;</span></p>

</div>

<span lang=EN-US style='font-size:10.5pt;font-family:"Times New Roman","serif"'><br
clear=all style='page-break-before:always'>
</span>

<div class=WordSection3 style='layout-grid:15.6pt'>

<h1 align=center><a name="_Toc339397981"><span
lang=EN-US style='font-family:宋体'>1<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span><span lang=EN-US style='font-family:宋体'>REST API</span></a></h1>

<h2><a name="_Toc113421360"></a><a name="_Toc113549281"></a><a
name="_Toc113550020"></a><a name="_Toc113550059"></a><a name="_Toc113621831"></a><a
name="_Toc339397982"><span lang=EN-US style='font-weight:normal'>1.1<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span><span
lang=EN-US>Device API</span></a></h2>

<h3><a name="_Toc339397983"><span lang=EN-US>1.1.1<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span><span lang=EN-US>Create Device</span></a></h3>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>1.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>URL: Http://{host}:{port}/rest/device</span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>2.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>Method:
POST</span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>3.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>Request
Format: application/json</span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>4.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>Request
Body:</span></p>

<p class=MsoNormal style='margin-left:42.0pt;line-height:150%'><span lang=NL
style='font-size:12.0pt;line-height:150%;font-family:宋体'>{ &quot;name&quot; :
&quot;XXX&quot;, </span><span lang=EN-US style='font-size:12.0pt;line-height:
150%;font-family:宋体'>&quot;code&quot; : &quot;XXX&quot; </span><span lang=NL
style='font-size:12.0pt;line-height:150%;font-family:宋体'>}</span></p>

<h3><a name="_Toc339397984"><span lang=EN-US>1.1.2<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span><span lang=EN-US>Delete Device</span></a></h3>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>1.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>URL: Http://{host}:{port}/rest/device/{id}</span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>2.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>Method: DELETE</span></p>

<h3><a name="_Toc339397985"><span lang=EN-US>1.1.3<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span><span lang=EN-US>Update Device</span></a></h3>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>1.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>URL: Http://{host}:{port}/rest/device/{id}</span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>2.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>Method: PUT</span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>3.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>Request
Format: application/json</span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>4.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>Request
Body: </span></p>

<p class=MsoNormal style='margin-left:42.0pt;line-height:150%'><span lang=NL
style='font-size:12.0pt;line-height:150%;font-family:宋体'>{ &quot;name&quot; :
&quot;XXX&quot;, | </span><span lang=EN-US style='font-size:12.0pt;line-height:
150%;font-family:宋体'>&quot;code&quot; : &quot;XXX&quot; </span><span lang=NL
style='font-size:12.0pt;line-height:150%;font-family:宋体'>}</span></p>

<h3><a name="_Toc339397986"><span lang=EN-US>1.1.4<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span><span lang=EN-US>Update Device’s User</span></a></h3>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>1.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>URL: Http://{host}:{port}/rest/device/{id}/user</span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>2.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>Method: PUT</span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>3.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>Request
Format: text/uri-list</span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>4.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>Request
Body:</span></p>

<p class=MsoNormal style='margin-left:42.0pt;line-height:150%'><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>http://{host}:{port}/rest/user/{id}</span></p>

<h3><a name="_Toc339397987"><span lang=EN-US>1.1.5<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span><span lang=EN-US>Update Device’s Variables</span></a></h3>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>1.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>URL: Http://{host}:{port}/rest/device/{id}/variables</span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>2.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>Method: PUT</span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>3.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>Request
Format: text/uri-list</span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>4.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>Request
Body:</span></p>

<p class=MsoNormal style='margin-left:42.0pt;line-height:150%'><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>http://{host}:{port}/rest/variable/{id}
……</span></p>

<h3><a name="_Toc339397988"><span lang=EN-US>1.1.6<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span><span lang=EN-US>Find Device</span></a></h3>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>1.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>URL: Http://{host}:{port}/rest/device/{id}</span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>2.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>Method: GET</span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>3.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>Response
Body:</span></p>

<p class=MsoNormal style='margin-left:42.0pt;line-height:150%'><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>{ </span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>&quot;name&quot; : &quot;XXX&quot;, </span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>&quot;code&quot; : &quot;XXX&quot;,</span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>&quot;_links&quot; : </span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>[ </span></p>

<p class=MsoNormal style='margin-left:63.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>{ &quot;rel&quot; : &quot;device.Device.user&quot;, &quot;href&quot; :
&quot;http://{host}:{port}/rest/device/{id}/user&quot; }, </span></p>

<p class=MsoNormal style='margin-left:63.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>{ &quot;rel&quot; : &quot;device.Device.variables&quot;, &quot;href&quot; :
&quot;http://{host}:{port}/rest/device/{id}/variables&quot; }, </span></p>

<p class=MsoNormal style='margin-left:63.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>{ &quot;rel&quot; : &quot;self&quot;, &quot;href&quot; :
&quot;http://{host}:{port}/rest/device/{id}&quot; } </span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>] </span></p>

<p class=MsoNormal style='margin-left:45.0pt;line-height:150%'><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>}</span></p>

<h3><a name="_Toc339397989"><span lang=EN-US>1.1.7<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span><span lang=EN-US>Find Devices</span></a></h3>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>1.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>URL: Http://{host}:{port}/rest/device</span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>2.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>Method: GET</span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>3.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>Response
Body:</span></p>

<p class=MsoNormal style='margin-left:42.0pt;line-height:150%'><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>{ </span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>&quot;results&quot; : </span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>[ </span></p>

<p class=MsoNormal style='margin-left:63.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>{ </span></p>

<p class=MsoNormal style='margin-left:84.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>&quot;name&quot; : &quot;XXX&quot;, </span></p>

<p class=MsoNormal style='margin-left:84.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>&quot;code&quot; : &quot;XXX&quot;,</span></p>

<p class=MsoNormal style='margin-left:84.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>&quot;_links&quot; : </span></p>

<p class=MsoNormal style='margin-left:84.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>[ </span></p>

<p class=MsoNormal style='margin-left:105.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>{ &quot;rel&quot; : &quot;device.Device.user&quot;, &quot;href&quot; :
&quot;http://{host}:{port}/rest/device/{id}/user&quot; }, </span></p>

<p class=MsoNormal style='margin-left:105.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>{ &quot;rel&quot; : &quot;device.Device.variables&quot;, &quot;href&quot; :
&quot;http://{host}:{port}/rest/device/{id}/variables&quot; }, </span></p>

<p class=MsoNormal style='margin-left:105.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>{ &quot;rel&quot; : &quot;self&quot;, &quot;href&quot; :
&quot;http://{host}:{port}/rest/device/{id}&quot; } </span></p>

<p class=MsoNormal style='margin-left:84.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>]</span></p>

<p class=MsoNormal style='margin-left:63.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>}, ……</span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>], </span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>&quot;totalCount&quot; : XXX, </span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>&quot;totalPages&quot; : XXX, </span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>&quot;currentPage&quot; : XXX, </span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>&quot;_links&quot; : </span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>[ </span></p>

<p class=MsoNormal style='margin-left:63.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>{ &quot;rel&quot; : &quot;device.search&quot;, &quot;href&quot; :
&quot;http://{host}:{port}/rest/device/search&quot; }</span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>] </span></p>

<p class=MsoNormal style='margin-left:42.0pt;line-height:150%'><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>}</span></p>

<h3><a name="_Toc339397990"><span lang=EN-US>1.1.8<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span><span lang=EN-US>Find Device’s User</span></a></h3>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>1.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>URL:
Http://{host}:{port}/rest/device/{id}/user</span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>2.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>Method: GET</span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>3.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>Response
Body:</span></p>

<p class=MsoNormal style='margin-left:42.0pt;line-height:150%'><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>{ </span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>&quot;_links&quot; : </span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>[ </span></p>

<p class=MsoNormal style='margin-left:63.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>{ &quot;rel&quot; : &quot;device.Device.user&quot;, &quot;href&quot; :
&quot;http://{host}:{port}/rest/device/{id}/user/{id}&quot; } </span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>] </span></p>

<p class=MsoNormal style='margin-left:42.0pt;line-height:150%'><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>}</span></p>

<h3><a name="_Toc339397991"><span lang=EN-US>1.1.9<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;
</span></span><span lang=EN-US>Find Device’s Variables</span></a></h3>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>1.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>URL:
Http://{host}:{port}/rest/device/{id}/variables</span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>2.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>Method: GET</span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:-21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>3.<span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp; </span></span><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>Response
Body:</span></p>

<p class=MsoNormal style='margin-left:42.0pt;line-height:150%'><span
lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:宋体'>{ </span></p>

<p class=MsoNormal style='margin-left:42.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>&quot;_links&quot; : </span></p>

<p class=MsoNormal style='margin-left:63.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>[ </span></p>

<p class=MsoNormal style='margin-left:84.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>{ &quot;rel&quot; : &quot;device.Device.Variable&quot;, &quot;href&quot; :
&quot;http://{host}:{port}/rest/device/{id}/variables/{id}&quot; },</span></p>

<p class=MsoNormal style='margin-left:84.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>……</span></p>

<p class=MsoNormal style='margin-left:63.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>] </span></p>

<p class=MsoNormal style='margin-left:21.0pt;text-indent:21.0pt;line-height:
150%'><span lang=EN-US style='font-size:12.0pt;line-height:150%;font-family:
宋体'>}</span></p>

<p class=MsoNormal style='margin-left:42.0pt;line-height:150%'><span
lang=EN-US>&nbsp;</span></p>

</div>
						</div>
					</div>
					
				</div><!--/span--><!--/span-->
			</div><!--/row-->
			
			<div class="row-fluid sortable"><!--/span--><!--/span-->
			
			</div><!--/row-->
			
			<div class="row-fluid sortable"><!--/span-->
	  </div><!--/row-->
    
					<!-- content ends -->
			</div><!--/#content.span10-->
				</div><!--/fluid-row-->
				
		<hr>

		<div class="modal hide fade" id="myModal">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">×</button>
				<h3>Settings</h3>
			</div>
			<div class="modal-body">
				<p>Here settings can be configured...</p>
			</div>
			<div class="modal-footer">
				<a href="#" class="btn" data-dismiss="modal">Close</a>
				<a href="#" class="btn btn-primary">Save changes</a>
			</div>
		</div>

		<footer>
			<p class="pull-left"><a href="#" target="_blank">常见问题</a> <a href="#" target="_blank">隐私条款</a> <a href="#" target="_blank">联系我们</a> </p>
			<p class="pull-right" style="color: #2071A1;">©2011-2012 北京松果科技有限责任公司, 版权所有</p>
		</footer>
		
	</div><!--/.fluid-container-->

	<!-- external javascript
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

	<!-- jQuery -->
	<script src="js/jquery-1.7.2.min.js"></script>
	<!-- jQuery UI -->
	<script src="js/jquery-ui-1.8.21.custom.min.js"></script>
	<!-- transition / effect library -->
	<script src="js/bootstrap-transition.js"></script>
	<!-- alert enhancer library -->
	<script src="js/bootstrap-alert.js"></script>
	<!-- modal / dialog library -->
	<script src="js/bootstrap-modal.js"></script>
	<!-- custom dropdown library -->
	<script src="js/bootstrap-dropdown.js"></script>
	<!-- scrolspy library -->
	<script src="js/bootstrap-scrollspy.js"></script>
	<!-- library for creating tabs -->
	<script src="js/bootstrap-tab.js"></script>
	<!-- library for advanced tooltip -->
	<script src="js/bootstrap-tooltip.js"></script>
	<!-- popover effect library -->
	<script src="js/bootstrap-popover.js"></script>
	<!-- button enhancer library -->
	<script src="js/bootstrap-button.js"></script>
	<!-- accordion library (optional, not used in demo) -->
	<script src="js/bootstrap-collapse.js"></script>
	<!-- carousel slideshow library (optional, not used in demo) -->
	<script src="js/bootstrap-carousel.js"></script>
	<!-- autocomplete library -->
	<script src="js/bootstrap-typeahead.js"></script>
	<!-- tour library -->
	<script src="js/bootstrap-tour.js"></script>
	<!-- library for cookie management -->
	<script src="js/jquery.cookie.js"></script>
	<!-- calander plugin -->
	<script src='js/fullcalendar.min.js'></script>
	<!-- data table plugin -->
	<script src='js/jquery.dataTables.min.js'></script>

	<!-- chart libraries start -->
	<script src="js/excanvas.js"></script>
	<script src="js/jquery.flot.min.js"></script>
	<script src="js/jquery.flot.pie.min.js"></script>
	<script src="js/jquery.flot.stack.js"></script>
	<script src="js/jquery.flot.resize.min.js"></script>
	<!-- chart libraries end -->

	<!-- select or dropdown enhancer -->
	<script src="js/jquery.chosen.min.js"></script>
	<!-- checkbox, radio, and file input styler -->
	<script src="js/jquery.uniform.min.js"></script>
	<!-- plugin for gallery image view -->
	<script src="js/jquery.colorbox.min.js"></script>
	<!-- rich text editor library -->
	<script src="js/jquery.cleditor.min.js"></script>
	<!-- notification plugin -->
	<script src="js/jquery.noty.js"></script>
	<!-- file manager library -->
	<script src="js/jquery.elfinder.min.js"></script>
	<!-- star rating plugin -->
	<script src="js/jquery.raty.min.js"></script>
	<!-- for iOS style toggle switch -->
	<script src="js/jquery.iphone.toggle.js"></script>
	<!-- autogrowing textarea plugin -->
	<script src="js/jquery.autogrow-textarea.js"></script>
	<!-- multiple file upload plugin -->
	<script src="js/jquery.uploadify-3.1.min.js"></script>
	<!-- history.js for cross-browser state change on ajax -->
	<script src="js/jquery.history.js"></script>
	<!-- application script for Charisma demo -->
	<script src="js/charisma.js"></script>
	
		
</body>
</html>