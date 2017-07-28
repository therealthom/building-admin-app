<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="homer" />
        <g:set var="entityName" value="\${message(code: '${propertyName}.label', default: '${className}')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a class="btn btn-outline btn-info" href="\${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <g:link class="btn btn-outline btn-info" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
        <g:link class="btn btn-outline btn-info" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>

        <div id="show-${propertyName}" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="\${flash.message}">
            <div class="message" role="status">\${flash.message}</div>
            </g:if>
            <f:display bean="${propertyName}" />
            <g:form resource="\${this.${propertyName}}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="btn btn-outline btn-info" action="edit" resource="\${this.${propertyName}}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="btn btn-outline btn-danger" type="submit" value="\${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('\${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
