<%--
    Document   : CalculatorView3
    Created on : Sep 12, 2015, 2:49:52 PM
    Author     : Kallie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>3 form</title>
    </head>
    <body>
        <%
            Object areaRecObj = request.getAttribute("areaRec");
            String areaRec = "";
            if(areaRecObj != null){
                areaRec = (String) areaRecObj;
            }
            else
                areaRec = "";
        %>
       <form id="rectangle" name="rectangle" method="POST" action="Controller3?formId=rectangle">
            Length: <input type="text" name="length"><br/>
            Width: <input type="text" name="width"><br/>
            <input type="submit" value="Submit"><br />
            Area: <label id="resultRec"><%= areaRec %></label>
        </form> 
        <%
            Object areaTriObj = request.getAttribute("areaTri");
            String areaTri = "";
            if(areaTriObj != null){
                areaTri = (String) areaTriObj;
            }
            else
                areaTri = "";
        %>
        <form id="triangle" name="triangle" method="POST" action="Controller3?formId=triangle">
            Base: <input type="text" name="length"><br/>
            Height: <input type="text" name="width"><br/>
            <input type="submit" value="Submit"><br />
            Area: <label id="resultTri"><%= areaTri %></label>
        </form>
        <%
            Object areaCirObj = request.getAttribute("areaCir");
            String areaCir = "";
            if(areaCirObj != null){
                areaCir = (String) areaCirObj;
            }
            else
                areaCir = "";
        %>
        <form id="circle" name="circle" method="POST" action="Controller3?formId=circle">
            
            Radius: <input type="text" name="length"><br/>
            <input type="submit" value="Submit"><br />
            Area: <label id="resultCir"><%= areaCir %></label>
        </form>
    </body>
</html>
