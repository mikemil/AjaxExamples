
<%@ page import="ajax.Book" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="dialog">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:select name="filter" from="${['All', 'Apress', 'InfoQ', 'Manning', 'Pragmatic Bookshelf']}"
                      valueMessagePrefix="filter" value="${filter}"
                      onchange="${remoteFunction(controller:'book', action:'listByPublisher', update:'searchresults',params:'\'filter=\' + escape(this.value)' )}" />
            <div id="searchresults">
            </div>
        </div>
    </body>
</html>
