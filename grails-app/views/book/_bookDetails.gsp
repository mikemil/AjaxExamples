            <div class="dialog">
                <br/>
                <h3>Book Details:</h3>
               
                <table>
                    <tbody>
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="book.id.label" default="Id" /></td>
                            <td valign="top" class="value">${fieldValue(bean: bookInstance, field: "id")}</td>
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="book.title.label" default="Title" /></td>
                            <td valign="top" class="value">${fieldValue(bean: bookInstance, field: "title")}</td>
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="book.pages.label" default="Pages" /></td>
                            <td valign="top" class="value">${fieldValue(bean: bookInstance, field: "pages")}</td>
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="book.author.label" default="Author" /></td>
                            <td valign="top" class="value">${bookInstance?.author?.encodeAsHTML()}</td>
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="book.publisher.label" default="Publisher" /></td>
                            <td valign="top" class="value">${fieldValue(bean: bookInstance, field: "publisher")}</td>
                        </tr>
                    </tbody>
                </table>
            </div>