<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="jumbotron">
    <center><h1>The latest items </h1></center>
</div>

<h1>
<c:forEach items="${allItems}" var="item">
    <div class="blog-post">

            <h1 class="blog-post-title"><c:out value="${item.title}"/></h1>
                <%--todo: user names--%>
            <p class="blog-post-meta">Created <i><c:out value="${item.date}"/></i> by <a href="#">user</a></p>
            <p><h3><c:out value="${item.description}"/></h3></p>
            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        <br/>
    </div>

</c:forEach>
</h1>


