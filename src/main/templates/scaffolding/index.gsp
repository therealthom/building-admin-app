<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="homer"/>
    <g:set var="entityName" value="\${message(code: '${propertyName}.label', default: '${className}')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>

<div>
    <a class="btn btn-outline btn-info" href="\${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    <g:link class="btn btn-outline btn-info" action="create"><g:message code="default.new.label"
                                                                        args="[entityName]"/></g:link>
</div>

<div id="list-${propertyName}" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="\${flash.message}">
        <div class="message" role="status">\${flash.message}</div>
    </g:if>
    <f:table collection="\${${propertyName}List}"/>

    <div class="pagination">
        <g:paginate total="\${${propertyName}Count ?: 0}"/>
    </div>
</div>
</body>
</html>