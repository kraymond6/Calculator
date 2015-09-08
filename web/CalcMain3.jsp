<%-- 
    Document   : CalcMain3
    Created on : Sep 8, 2015, 4:09:59 PM
    Author     : Kallie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculators</title>
    </head>
    <body>
        <%
            
            Object areaRec = request.getAttribute("areaRectangle");
            String areaRectangle = "";
            if(areaRec != null){
                areaRectangle = (String) areaRec;
            }
            
            Object areaTri = request.getAttribute("areaTriangle");
            String areaTriangle = "";
            if(areaTri != null){
                areaTriangle = (String) areaTri;
            }
            
            Object areaCir = request.getAttribute("areaCircle");
            String areaCircle = "";
            if(areaCir != null){
                areaCircle = (String) areaCir;
            }
        %>
         
         <form id="rectangle" name="rectangle" method="POST" action="ControllerLab3">
            Length: <input type="text" name="length"><br/>
            Width: <input type="text" name="width"><br/>
            <input type="submit" value="Submit"><br />
            Area: <label id="resultRectangle"><%= areaRectangle %></label>
            <label hidden id="formId">rectangle</label>
        </form>
        <br />
        <form id="triangle" name="triangle" method="POST" action="ControllerLab3">
            Base: <input type="text" name="base"><br />
            Height: <input type="text" name="height"><br />
            <input type="submit" value="Submit"><br />
            Area: <label id="resultTriangle"><%= areaTriangle %></label>
            <label hidden id="formId">triangle</label>
        </form>
        <br />
        <form id="circle" name="circle" method="POST" action="ControllerLab3">
            Radius: <input type="text" name="radius"><br />
            <input type="submit" value="Submit"><br />
            Area: <label id="resultCircle"><%= areaCircle %></label>
            <label hidden id="formId">circle</label>
        </form>
    </body>
</html>
