<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="appPath" value="${pageContext.request.contextPath}"/>
<%
	String contextPath = request.getContextPath();
	String homePath = contextPath+"/home.action";
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href='<%=contextPath+"/css/bootstrap.min.css" %>' rel="stylesheet">
  <link href='<%=contextPath+"/css/bootstrap-datetimepicker.min.css" %>' rel="stylesheet">

  <link href='<%=contextPath+"/css/application.css" %>' rel="stylesheet">
  <link href='<%=contextPath+"/css/jquery-ui.css" %>' rel="stylesheet">
  <link href='<%=contextPath+"/css/styles2.css" %>' rel="stylesheet">

</head>
<body>
		<nav class="navbar navbar-inverse navbar-global navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">GovSolution</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">GovSolution</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav navbar-user navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> ${user.login}</a></li>
            <li><a href="${appPath}/user/doLogout.action"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
