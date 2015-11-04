<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles-extras" prefix="tilesx"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<tilesx:useAttribute name="current"/>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

  <title><tiles:getAsString name="title"/></title>
</head>
<tilesx:useAttribute name="current"/>
<body>
<div class="container">
  <!-- Static navbar -->
  <nav class="navbar navbar-inverse">
    <div class="container-fluid">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar "></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="<spring:url value='/'/>">Blog</a>
      </div>
      <div id="navbar" class="navbar-collapse collapse">
        <ul class="nav navbar-nav">
          <li class="${current == 'index' ? 'active' : ''}"><a href="<spring:url value='/'/>">Home <span class="glyphicon glyphicon-home" aria-hidden="true"></span></a></li>
          <security:authorize access="hasRole('ROLE_ADMIN')">
            <li class="${current == 'users' ? 'active' : ''}"><a href="<spring:url value='/users'/>">Users <span class="glyphicon glyphicon-user" aria-hidden="true"></span></a></li>
          </security:authorize>
          <security:authorize access="isAuthenticated()">
            <li class="${current == 'account' ? 'active' : ''}"><a href="<spring:url value='/account'/>">Account <span class="glyphicon glyphicon-star" aria-hidden="true"></span></a></li>
          </security:authorize>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <security:authorize access="! isAuthenticated()">
            <li class="${current == 'register' ? 'active' : ''}"><a href="<spring:url value='/register'/>">Registration <span class="glyphicon glyphicon-plus" aria-hidden="true"></span></a></li>
            <li class="${current == 'login' ? 'active' : ''}"><a href="<spring:url value='/login'/>">Login <span class="glyphicon glyphicon-log-in" aria-hidden="true"></span></a></li>
          </security:authorize>
          <security:authorize access="isAuthenticated()">
            <li><a href="<spring:url value='/logout'/>">Logout <span class="glyphicon glyphicon-log-out" aria-hidden="true"></span></a></li>
          </security:authorize>
        </ul>
      </div><!--/.nav-collapse -->
    </div><!--/.container-fluid -->
  </nav>
  <tiles:insertAttribute name="body"/>
  <center>
    <tiles:insertAttribute name="footer"/>
  </center>
</div>
</body>
</html>
