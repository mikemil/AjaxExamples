
<%@ page import="ajax.Book" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title>Ajax search using remoteField</title>
    </head>
    <body>
        <div class="dialog">
          <br/>
          <br/>
          <div id="searchbox">
              Title Search: <g:remoteField name="search" update="searchresults" paramName="searchvalue" 
                                           url="[controller:'book', action:'searchTitle']"
                                           onLoading="showSpinner(true);" onComplete="showSpinner(false);">
                            </g:remoteField>
          </div>
          <g:render template="searchResults"/>  
        </div>
    </body>
</html>
