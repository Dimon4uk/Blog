<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<h1>
  ${blog.name}</h1>
  <br/>
<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#createItem">
  New item
</button>


<br/>
<br/>
<table class="table table-bordered table-hover table-striped">
    <thead>
    <tr>
      <th>Items</th>
      <th>Desc</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${blog.items}" var="item">
      <tr>
        <td>
          <%--<a href='<spring:url value="/blogs/${blog.id}/"/>'>--%>
              ${item.title}
          <%--</a>--%>
        </td>
        <td align="right">
            <%--<button id="deleteTriggerBtn" data-toggle="modal" data-target="#deleteUser" type="button" class="btn btn-danger" data-id="${user.id}">--%>
            <%--Delete--%>
            <%--</button>--%>
          ${item.description}
        </td>
      </tr>
    </c:forEach>
    </tbody>
</table>


<form:form commandName="item" cssClass="form-horizontal itemForm" method="post">
  <div class="modal fade" id="createItem" role="dialog" aria-labelledby="itemTitle">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="itemTitle">Create New Item</h4>
        </div>
        <div class="modal-body">

          <div class="form-group">
            <label for="title" class="col-sm-2 control-label">Title:</label>
            <div class="col-sm-10">
              <form:input path="title" cssClass="form-control" />
                <%--<form:errors path="name" />--%>
            </div>
          </div>
          <div class="form-group">
            <label for="description" class="col-sm-2 control-label">Description:</label>
            <div class="col-sm-10">
              <form:input path="description" cssClass="form-control" />
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

