<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="homer" />
        <g:set var="entityName" value="\${message(code: '${propertyName}.label', default: '${className}')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <a class="btn btn-outline btn-info" href="\${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        <g:link class="btn btn-outline btn-info" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
        <g:link class="btn btn-outline btn-info" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>

        <div id="edit-${propertyName}" class="form-horizontal" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="\${flash.message}">
            <div class="message" role="status">\${flash.message}</div>
            </g:if>
            <g:hasErrors bean="\${this.${propertyName}}">
            <ul class="errors alert alert-info" role="alert">
                <g:eachError bean="\${this.${propertyName}}" var="error">
                <li <g:if test="\${error in org.springframework.validation.FieldError}">data-field-id="\${error.field}"</g:if>><g:message error="\${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors> </br>
            <g:form resource="\${this.${propertyName}}" method="PUT">
                <g:hiddenField name="version" value="\${this.${propertyName}?.version}" />
                <fieldset class="form">
                    <f:all bean="${propertyName}"/>
                </fieldset>
                <fieldset class="buttons">
                    <input class="btn btn-outline btn-info center-block" type="submit" value="\${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
