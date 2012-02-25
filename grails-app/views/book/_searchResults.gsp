<div id="searchresults">
    <g:if test="${searchresults}">
       <br/>
       <h3>Search Results</h3>
        <div class="list">
                <table>
                    <thead>
                        <tr>
                            <g:sortableColumn property="title" title="${message(code: 'book.title.label', default: 'Title')}" />
                            <g:sortableColumn property="pages" title="${message(code: 'book.pages.label', default: 'Pages')}" />
                            <th><g:message code="book.author.label" default="Author" /></th>
                            <th><g:message code="book.publisher.label" default="Publisher" /></th>
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${searchresults}" status="i" var="bookInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                            <td>${fieldValue(bean: bookInstance, field: "title")}</td>
                            <td>${fieldValue(bean: bookInstance, field: "pages")}</td>
                            <td>${fieldValue(bean: bookInstance, field: "author")}</td>
                            <td>${fieldValue(bean: bookInstance, field: "publisher")}</td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
    </g:if>
</div>