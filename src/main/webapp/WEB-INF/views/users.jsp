<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<table class="table table-bordered table-hover table-striped">
    <thead>
    <tr>
        <th>Users</th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${users}" var="user">
        <tr>
            <td>
                <a href='<spring:url value="/users/${user.id}"/>'>
                        ${user.name}
                </a>
            </td>
            <td align="right">
                <buttonm id="deleteTriggerBtn" data-toggle="modal" data-target="#deleteUser" type="button" class="btn btn-danger" data-id="${user.id}">
                    Delete
                </buttonm>

            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<script type="text/javascript">

    $(function(){


        function deleteUser(url) {
           return location.url;
        }

        $('#deleteUser').on('show.bs.modal', function (event) {
            var id = $(event.relatedTarget).data('id');
            console.log(id);

            var url = '<spring:url value="/users/delete/"/>';
            url = url + id;
            console.log(url);
            $('#deleteUserBtn').on('click', deleteUser(url));

        })
    });

//        $("#deleteTriggerBtn").on('button', function(event){
//            var id = $(event.relatedTarget).data("id");
//
//            $("#deleteUser").on(function(id){
//                $(this).modal('show');
//            })
//        });

//    $("deleteTrigger").onclick(function(e) {
//        e.preventDefault();
//        $("#deleteUser .deleteBtn").attr("href",$(this).attr("href"));
//        $("#deleteUser").modal();
//    });
</script>


<div class="modal fade" id = "deleteUser">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header" align="center">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Detele user</h4>
            </div>
            <div class="modal-body" align="center">
                <p>Are you sure?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                <%--<button id="deleteUserBtn" type="button" class="btn btn-danger" data-dismiss="modal">Delete</button>--%>
                <button id="deleteUserBtn" type="button" class="btn btn-danger" data-dismiss="modal">
                    Delete
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->