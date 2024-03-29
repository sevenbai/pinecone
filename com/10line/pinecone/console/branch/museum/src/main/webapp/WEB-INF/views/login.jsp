<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<title><fmt:message key="application.title" /></title>
<link rel="icon" href="img/favicon.ico" mce_href="img/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="img/favicon.ico" ce_href="img/favicon.ico" type="image/x-icon">
<link href="css/main.css" rel="stylesheet" type="text/css" />
<!--[if IE 8]><link href="css/ie8.css" rel="stylesheet" type="text/css" /><![endif]-->
<!--[if IE 9]><link href="css/ie9.css" rel="stylesheet" type="text/css" /><![endif]-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script>

<script type="text/javascript" src="js/plugins/forms/jquery.uniform.min.js"></script>

<script type="text/javascript" src="js/files/bootstrap.min.js"></script>

<script type="text/javascript" src="js/files/login.js"></script>

<script type="text/javascript">
window.onload = function(){
	var error = <%=request.getParameter("error")%>;
	if(error){
		//$("#name_input").before(
		//	"<div class='control-group info'>"+
		//		"<span class='help-block'>Welcome!</span>"+
		//	"</div>"
		//);
		$("#name_input").before(
			"<div class='control-group warning'>"+
				"<span class='help-block'>"+"<fmt:message key="login.fail.authentication" />"+"</span>"+
			"</div>"
		);
	}
	
	var isregister = <%=(String)request.getAttribute("isregister")%>;
	if(isregister){
		$("#name_input").before(
			"<div class='control-group warning'>"+
				"<span class='help-block'>"+"<fmt:message key='login.success.registry' />"+"</span>"+
			"</div>"
		);
	}
}
</script>

</head>

<body class="no-background">

	<!-- Fixed top -->
	<div id="top">
		<div class="fixed">
			<a href="login.html" title="" class="logo"><img src="img/logo.png" alt="" /></a>
		</div>
	</div>
	<!-- /fixed top -->


    <!-- Login block -->
    <div class="login">
        <div class="navbar">
            <div class="navbar-inner">
                <h6><i class="icon-user"></i><fmt:message key="login.page" /></h6>
            </div>
        </div>
        <div class="well">
            <form action="${pageContext.request.contextPath}/j_spring_security_check" class="row-fluid" method="post">
                <div id="name_input" class="control-group">
                    <label class="control-label"><fmt:message key="login.username" /></label>
                    <div class="controls"><input class="span12" type="text" name="j_username" placeholder="<fmt:message key="login.username" />" /></div>
                </div>
                
                <div id="password_input" class="control-group">
                    <label class="control-label"><fmt:message key="login.password" /></label>
                    <div class="controls"><input class="span12" type="password" name="j_password" placeholder="<fmt:message key="login.password" />" /></div>
                </div>

                <div id="remember_input" class="control-group">
                    <div class="controls"><label class="checkbox inline"><input id="_spring_security_remember_me" type="checkbox" name="_spring_security_remember_me" class="styled" value="true" checked="checked"><fmt:message key="login.remember" /></label></div>
                </div>

                <div class="login-btn">
                	<div class="span6"><input name="submit" type="submit" value="<fmt:message key="login.login" />" class="btn btn-danger btn-block" /></div>
                	<div class="span6"><a href="register.html" class="btn btn-success btn-block bs-prompt"><fmt:message key="login.gotoregistry" /></a></div>
                	<div class="controls" style="visibility:hidden"><a href="#"><fmt:message key="login.gotoregistry" />→</a></div>
                </div>
                
            </form>
        </div>
    </div>
    <!-- /login block -->


	<!-- Footer -->
	<div id="footer">
		<div class="copyrights"><fmt:message key="application.company" /></div>
		<ul class="footer-links">
			<li><a href="mailto:liugyang@gmail.com?Subject=helpme" title=""><i class="icon-cogs"></i><fmt:message key="application.contact.admin" /></a></li>
			<li><a href="http://www.pinecone.cc" title=""><i class="icon-screenshot"></i><fmt:message key="application.home.page" /></a></li>
		</ul>
	</div>
	<!-- /footer -->

</body>
</html>
