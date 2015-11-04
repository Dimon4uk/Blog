<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<style>
    .form-signin {
        max-width: 330px;
        padding: 15px;
        margin: 0 auto;
    }
    .form-signin .form-signin-heading,
    .form-signin .checkbox {
        margin-bottom: 10px;
    }
    .form-signin .checkbox {
        font-weight: normal;
    }
    .form-signin .form-control {
        position: relative;
        height: auto;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
        padding: 10px;
        font-size: 16px;
    }
    .form-signin .form-control:focus {
        z-index: 2;
    }
    .form-signin input[type="username"] {
        margin-bottom: -1px;
        border-bottom-right-radius: 0;
        border-bottom-left-radius: 0;
    }
    .form-signin input[type="password"] {
        margin-bottom: 10px;
        border-top-left-radius: 0;
        border-top-right-radius: 0;
    }
</style>
<%--<form class="form-signin" role="form" action="<spring:url value='/j_spring_security_check'/>" method="post">--%>
<form class="form-signin" role="form" action="<spring:url value='/login'/>" method="post">
    <h2 class="form-signin-heading">Please sign in</h2>

    <%--<c:if test="${error != null}">--%>
        <%--<div class="alert alert-danger" role="alert"><spring:message code="${error}" /></div>--%>
    <%--</c:if>--%>

    <%--<c:if test="${success != null}">--%>
        <%--<div class="alert alert-success" role="alert"><spring:message code="${success}" /></div>--%>
    <%--</c:if>--%>
    <input name="username" type="text" class="form-control" placeholder="Name or Email" required autofocus>
    <input name="password" type="password" class="form-control" placeholder="Password" required>
    <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>

</form>
