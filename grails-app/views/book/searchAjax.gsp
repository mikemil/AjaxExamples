
<%@ page import="ajax.Book" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title>Ajax search using Submit to Remote</title>
    </head>
    <body>
        <div class="dialog">
          <br/>
          <br/>
          <div id="searchbox">
            <g:form action="search">
               <table>
                 <tbody>
                    <tr class="prop">
                       <td valign="top" class="name">Title:</td>
                       <td valign="top" class="value"><input name="title" type="text" value="${title}"/></td>
                    </tr>
                    <tr class="prop">
                       <td valign="top" class="name">Publisher:</td>
                       <td valign="top" class="value"><input name="publisher" type="text" value="${publisher}"/></td>
                    </tr>
                 </tbody>
              </table>
              <g:submitToRemote update="searchresults" value="Search" url="[controller:'book', action:'search']"
                   onLoading="showSpinner(true)"  onComplete="showSpinner(false)" >
              </g:submitToRemote>
            </g:form>
          </div>
            
          <g:render template="searchResults"/>
    </body>
</html>
