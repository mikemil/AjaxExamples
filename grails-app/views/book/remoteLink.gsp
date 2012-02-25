<%@ page import="ajax.Book" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title>Remote Link Example</title>
    </head>
    <body>
        <div class="dialog">
            <h1>Book Titles (Click on a title to see more details)</h1>
            <g:if test="${flash.message}">
               <div class="message">${flash.message}</div>
            </g:if> 
            <g:if test="${bookInstanceList}">
				<div class="list">
				<table>
					<thead>
						<tr>
							<g:sortableColumn property="title" title="${message(code: 'book.title.label', default: 'Title')}" />
						</tr>
					</thead>
					<tbody>
					<g:each in="${bookInstanceList}" status="i" var="bookInstance">
						<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
							<td>
							   <g:remoteLink action="showDetails" id="${bookInstance.id}" update="bookDetails" onLoading="showSpinner(true);" 
							        onComplete="showSpinner(false);">${fieldValue(bean: bookInstance, field: "title")}</g:remoteLink>
                            </td>
						</tr>
					</g:each>
					</tbody>
				</table>
				</div>
			</g:if>
            <div id="bookDetails">
            </div>
        </div>
    </body>
</html>