<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
       <g:javascript library="prototype" plugin="prototype" />
       <g:javascript>
           function showSpinner(visible) {
              $('spinner').style.display = visible ? "inline" : "none";
           }
           Ajax.Responders.register({
           onLoading: function() {
                 showSpinner(true);
           },
           onComplete: function() {
             if(!Ajax.activeRequestCount) showSpinner(false);
           }
           });
         </g:javascript>
         <r:layoutResources/>
    </head>
    <body>
        <div id="spinner" class="spinner" style="display:none;">
            <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
        </div>
        <div id="grailsLogo"><a href="http://grails.org"><img src="${resource(dir:'images',file:'grails_logo.png')}" alt="Grails" border="0" /></a></div>
        <div id="menu">
            <g:render template="/common/menu" />
        </div>
        <g:layoutBody />
        <div id="footer">
            <g:render template="/common/footer" />
        </div>
        <r:layoutResources/>
    </body>
</html>