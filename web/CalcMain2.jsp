<%-- 
    Document   : CalcMain2
    Created on : Sep 8, 2015, 3:30:02 PM
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
            else
                area = "";
        %>
        <form id="rectangle" name="rectangle" method="POST" action="ControllerLab2">
            
            Length: <input type="text" name="length"><br/>
            Width: <input type="text" name="width"><br/>
            <input type="submit" value="Submit"><br />
            Area: <label id="result"><%= area %></label>
        </form>
    </body>
</html>
