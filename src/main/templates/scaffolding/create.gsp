<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="homer" />
        <g:set var="entityName" value="\${message(code: '${propertyName}.label', default: '${className}')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a class="btn btn-outline btn-info" href="\${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
        <g:link class="btn btn-outline btn-info" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>

        <div id="create-${propertyName}" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="\${flash.message}">
            <div class="message" role="status">\${flash.message}</div>
            </g:if>
            <g:hasErrors bean="\${this.${propertyName}}">
            <ul class="errors" role="alert">
                <g:eachError bean="\${this.${propertyName}}" var="error">
                <li <g:if test="\${error in org.springframework.validation.FieldError}">data-field-id="\${error.field}"</g:if>><g:message error="\${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="\${this.${propertyName}}" method="POST">
                <fieldset class="form">
                    <f:all bean="${propertyName}"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="btn btn-outline btn-info" value="\${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
