<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<h1>${accountUser.name}</h1>

<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#createBlog">
    New blog
</button>

<form:form commandName="blog" cssClass="form-horizontal blogForm" method="post">
<!-- Modal -->
    <div class="modal fade" id="createBlog" tabindex="-1" role="dialog" aria-labelledby="titleId">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="titleId">Create New Blog</h4>
                </div>
                <div class="modal-body">

                    <div class="form-group">
                        <label for="name" class="col-sm-2 control-label">Name:</label>
                        <div class="col-sm-10">
                            <form:input path="name" cssClass="form-control" />
                            <%--<form:errors path="name" />--%>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="name" class="col-sm-2 control-label">URL:</label>
                        <div class="col-sm-10">
                            <form:input path="url" cssClass="form-control" />
                            <%--<form:errors path="url" />--%>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary">Create</button>
                </div>
            </div>
        </div>
    </div>
</form:form>


<table class="table table-bordered table-hover table-striped">
    <thead>
    <tr>
        <th>Blogs</th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${accountUser.blogs}" var="blog">
        <tr>
            <td>
                <a href='<spring:url value="/account/blog-detail/${blog.id}"/>'>
                        ${blog.name}
                </a>
            </td>
            <td align="right">
                <%--<a  class="btn btn-danger" href='<spring:url value="/account/delete/${blog.id}"/>'>--%>
                    <%--Delete--%>
                <%--</a>--%>
                <%--<button id="deleteBlogTrigger"  data-toggle="modal" data-target="#deleteBlog"  class="btn btn-danger" data-id="${blog.id}">--%>
                    <%--Delete--%>
                <%--</button>--%>

            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>



<%--<script type="text/javascript">--%>

    <%--$(function(){--%>
        <%--var deleteUrl = '<spring:url value="/account/delete/"/>';--%>
        <%--var blogId = null;--%>

        <%--$('#deleteBlog').on('show.bs.modal', function (event) {--%>
            <%--$('#deleteBlogBtn').attr('href', '');--%>
            <%--blogId = $(event.relatedTarget).data('id');--%>

            <%--$('#deleteBlogBtn').attr('href',deleteUrl + blogId);--%>
            <%--console.log( $('#deleteBlogBtn').attr('href'))--%>
        <%--});--%>
    <%--});--%>

<%--</script>--%>


<%--<div class="modal fade" id = "deleteBlog">--%>
    <%--<div class="modal-dialog">--%>
        <%--<div class="modal-content">--%>
            <%--<div class="modal-header" align="center">--%>
                <%--<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>--%>
                <%--<h4 class="modal-title">Detele Blog</h4>--%>
            <%--</div>--%>
            <%--<div class="modal-body" align="center">--%>
                <%--<p>Are you really want delete this blog ?</p>--%>
            <%--</div>--%>
            <%--<div class="modal-footer">--%>
                <%--<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>--%>
                <%--<button id="deleteBlogBtn" class="btn btn-danger" href="" >--%>
                    <%--Delete--%>
                <%--</button>--%>
            <%--</div>--%>
        <%--</div><!-- /.modal-content -->--%>
    <%--</div><!-- /.modal-dialog -->--%>
<%--</div><!-- /.modal -->--%>


<%--<div>--%>

    <%--<!-- Nav tabs -->--%>
    <%--<ul class="nav nav-tabs">--%>
        <%--<c:forEach items="${accountUser.blogs}" var="blog">--%>
            <%--<li>--%>
                <%--<a href="#blog_${blog.id}" data-toggle="tab">--%>
                    <%--<c:out value="${blog.name}" />--%>
                <%--</a>--%>
            <%--</li>--%>
        <%--</c:forEach>--%>
    <%--</ul>--%>

    <%--<!-- Tab panes -->--%>
    <%--<div class="tab-content">--%>
        <%--<c:forEach items="${accountUser.blogs}" var="blog">--%>
            <%--<div class="tab-pane" id="blog_${blog.id}">--%>
                <%--<h2><c:out value="${blog.name}"/> </h2>--%>
                <%--<br/>--%>
                <%--&lt;%&ndash;todo &ndash;%&gt;--%>
                <%--<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#createItem">--%>
                    <%--New Item--%>
                <%--</button>--%>

                <%--<form:form commandName="item" cssClass="form-horizontal itemForm">--%>
                    <%--<div class="modal fade" id="createItem" role="dialog" aria-labelledby="itemTitle">--%>
                        <%--<div class="modal-dialog" role="document">--%>
                            <%--<div class="modal-content">--%>
                                <%--<div class="modal-header">--%>
                                    <%--<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>--%>
                                    <%--<h4 class="modal-title" id="itemTitle">Create New Item</h4>--%>
                                <%--</div>--%>
                                <%--<div class="modal-body">--%>

                                    <%--<div class="form-group">--%>
                                        <%--<label for="name" class="col-sm-2 control-label">Title:</label>--%>
                                        <%--<div class="col-sm-10">--%>
                                            <%--<form:input path="title" cssClass="form-control" />--%>
                                                <%--&lt;%&ndash;<form:errors path="name" />&ndash;%&gt;--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<div class="form-group">--%>
                                        <%--<label for="name" class="col-sm-2 control-label">Description:</label>--%>
                                        <%--<div class="col-sm-10">--%>
                                            <%--<form:input path="description" cssClass="form-control" />--%>
                                                <%--&lt;%&ndash;<form:errors path="url" />&ndash;%&gt;--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <%--<div class="modal-footer">--%>
                                    <%--<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>--%>
                                    <%--<button type="submit" class="btn btn-primary">Create</button>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</form:form>--%>

                <%--<br/>--%>

                <%--<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="false">--%>
                    <%--<c:forEach items="${blog.items}" var="item">--%>

                        <%--<div class="panel panel-default">--%>
                            <%--<div class="panel-heading" role="tab" id="item_${item.id}">--%>
                                <%--<h4 class="panel-title">--%>
                                    <%--<a role="button" data-toggle="collapse" data-parent="#accordion" href="#$desc_${item.id}" aria-expanded="true" aria-controls="$desc_${item.id}">--%>
                                       <%--<c:out value="${item.title}"/>--%>
                                    <%--</a>--%>
                                <%--</h4>--%>
                            <%--</div>--%>
                            <%--<div id="$desc_${item.id}" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="item_${item.id}">--%>
                                <%--<div class="panel-body">--%>
                                   <%--<c:out value="${item.description}"/>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>

                    <%--</c:forEach>--%>
                <%--</div>--%>

            <%--</div>--%>
        <%--</c:forEach>--%>
    <%--</div>--%>

<%--</div>--%>

<%--<script type="text/javascript">--%>
    <%--$(document).ready(function() {--%>
        <%--$('.nav-tabs a:first').tab('show');--%>
    <%--});--%>
<%--</script>--%>

