<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="homer"/>
    <g:set var="entityName" value="\${message(code: '${propertyName}.label', default: '${className}')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a class="btn btn-outline btn-info" href="\${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
<g:link class="btn btn-outline btn-info" action="index"><g:message code="default.list.label"
                                                                   args="[entityName]"/></g:link>
<g:link class="btn btn-outline btn-info" action="create"><g:message code="default.new.label"
                                                                    args="[entityName]"/></g:link>

<div id="show-${propertyName}" class="table-condensed" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="\${flash.message}">
        <div class="message" role="status">\${flash.message}</div>
    </g:if>
    <f:display bean="${propertyName}"/>
    <g:form name="actionForm" resource="\${this.${propertyName}}" method="DELETE">
        <fieldset class="buttons">
            <g:link class="btn btn-outline btn-info" action="edit" resource="\${this.${propertyName}}">
                <g:message code="default.button.edit.label" default="Edit"/>
            </g:link>

            <button class="btn btn-outline btn-danger">Eliminar</button>
        </fieldset>
    </g:form>
</div>
<script>
    document.querySelector('#actionForm').addEventListener('submit', function(e) {
        var form = this;
        e.preventDefault();
        swal({
                title: "Are you sure?",
                text: "You will not be able to recover this imaginary file!",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: '#DD6B55',
                confirmButtonText: 'Yes, I am sure!',
                cancelButtonText: "No, cancel it!",
                closeOnConfirm: false,
                closeOnCancel: false
            },
            function(isConfirm) {
                if (isConfirm) {
                    swal({
                        title: 'Shortlisted!',
                        text: 'Candidates are successfully shortlisted!',
                        type: 'success'
                    }, function() {
                        form.submit();
                    });

                } else {
                    swal("Cancelled", "Your imaginary file is safe :)", "error");
                }
            });
    });

</script>
</body>
</html>
