<%-- 
    Document   : TestELFunction
    Created on : Mar 28, 2018, 2:14:35 PM
    Author     : bas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/tlds/MyTagLib.tld" prefix="mf" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        ${mf:addMethod(param.x, param.y)}
    </body>
</html>
