<%-- 
    Document   : CalcMain3EL
    Created on : Sep 12, 2015, 8:13:38 PM
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

        <form id="rectangle" name="rectangle" method="POST" action="ControllerLab3?formId=rectangle">
            Length: <input type="text" name="length"><br/>
            Width: <input type="text" name="width"><br/>
            <input type="submit" value="Submit"><br />
            Area: <label id="resultRectangle">${areaRectangle}</label>
        </form>
        <br />

        <form id="triangle" name="triangle" method="POST" action="ControllerLab3?formId=triangle">
            Base: <input type="text" name="base"><br />
            Height: <input type="text" name="height"><br />
            <input type="submit" value="Submit"><br />
            Area: <label id="resultTriangle">${areaTriangle}</label>
        </form>

        <br />
        <form id="circle" name="circle" method="POST" action="ControllerLab3?formId=circle">
            Radius: <input type="text" name="radius"><br />
            <input type="submit" value="Submit"><br />
            Area: <label id="resultCircle">${areaCircle}</label>
        </form>

    </body>
</html>
