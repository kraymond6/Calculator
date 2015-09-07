<%--
    Document   : ResultsLab1
    Created on : Sep 6, 2015, 6:51:44 PM
    Author     : Kallie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator</title>
    </head>
    <body>
        <%
            Object areaObj = request.getAttribute("area");
            String area = "";
            if(areaObj != null){
                area = (String) areaObj;
            }
        %>
        <p>
            The area of the rectangle is <% out.println(area); %>
        </p>
    </body>
</html>
