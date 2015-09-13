/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Lab3EL;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Kallie
 */
@WebServlet(name = "ControllerLab3EL", urlPatterns = {"/ControllerLab3EL"})
public class ControllerLab3EL extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String calcId = request.getParameter("formId");
        
        CircleCalc calcCir = new CircleCalc();
        RectangleCalc calcRec = new RectangleCalc();
        TriangleCalc calcTri = new TriangleCalc();
        
        if (calcId.equals("rectangle")) {
            String lengthString = request.getParameter("length");
            String widthString = request.getParameter("width");
            
            Double length = Double.parseDouble(lengthString);
            Double width = Double.parseDouble(widthString);
            
            calcRec.setLength(length);
            calcRec.setWidth(width);
            Double areaRec = calcRec.getArea();
            String areaStringRec = Double.toString(areaRec);
            
            request.setAttribute("areaRectangle", areaStringRec);
            
            RequestDispatcher view = request.getRequestDispatcher("/CalcMain3EL.jsp");
            view.forward(request, response);   
        }
        else if (calcId.equals("triangle")){
            String baseString = request.getParameter("base");
            String heightString = request.getParameter("height");
            
            Double base = Double.parseDouble(baseString);
            Double height = Double.parseDouble(heightString);
            
            calcTri.setBase(base);
            calcTri.setHeight(height);
            Double areaTri = calcTri.getArea();
            String areaStringTri = Double.toString(areaTri);
            request.setAttribute("areaTriangle", areaStringTri);
           
            RequestDispatcher view = request.getRequestDispatcher("/CalcMain3EL.jsp");
            view.forward(request, response);   
        }
        else if (calcId.equals("circle")){
            String radiusString = request.getParameter("radius");
            
            Double radius = Double.parseDouble(radiusString);
            
            calcCir.setRadius(radius);
            Double areaCir = calcCir.getArea();
            
            String areaStringCir = Double.toString(areaCir);
            request.setAttribute("areaCircle", areaStringCir);
            
            RequestDispatcher view = request.getRequestDispatcher("/CalcMain3EL.jsp");
            view.forward(request, response);   
        }
        else{
            
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
