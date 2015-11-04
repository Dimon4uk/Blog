<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<form:form commandName="user" cssClass="form-horizontal">
  <div class="form-group">
    <label for="name" class="col-sm-2 control-label">Name</label>
    <div class="col-sm-10">
      <form:input path="name" cssClass="form-control" placeholder="Name"/>
    </div>
  </div>

  <div class="form-group">
    <label for="email" class="col-sm-2 control-label">Email</label>
    <div class="col-sm-10">
      <form:input path="email" cssClass="form-control" placeholder="Email"/>
    </div>
  </div>

  <div class="form-group">
    <label for="password" class="col-sm-2 control-label">Password</label>
    <div class="col-sm-10">
      <form:password path="password" cssClass="form-control" placeholder="Password"/>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-10">
      <input type="submit" value="Save" class="btn btn-lg btn-primary">
    </div>
  </div>
</form:form>


<%--<form class="form-horizontal">--%>
    <%--<div class="form-group">--%>
    <%--<label for="inputEmail3" class="col-sm-2 control-label">Email</label>--%>
    <%--<div class="col-sm-10">--%>
      <%--<input type="email" class="form-control" id="inputEmail3" placeholder="Email">--%>
    <%--</div>--%>
  <%--</div>--%>
  <%--<div class="form-group">--%>
    <%--<label for="inputPassword3" class="col-sm-2 control-label">Password</label>--%>
    <%--<div class="col-sm-10">--%>
      <%--<input type="password" class="form-control" id="inputPassword3" placeholder="Password">--%>
    <%--</div>--%>
  <%--</div>--%>
  <%--<div class="form-group">--%>
    <%--<div class="col-sm-offset-2 col-sm-10">--%>
      <%--<div class="checkbox">--%>
        <%--<label>--%>
          <%--<input type="checkbox"> Remember me--%>
        <%--</label>--%>
      <%--</div>--%>
    <%--</div>--%>
  <%--</div>--%>
  <%--<div class="form-group">--%>
    <%--<div class="col-sm-offset-2 col-sm-10">--%>
      <%--<button type="submit" class="btn btn-default">Sign in</button>--%>
    <%--</div>--%>
  <%--</div>--%>
<%--</form>--%>