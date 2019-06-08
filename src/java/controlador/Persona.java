/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.simple.JSONObject;
import util.Util;

/**
 *
 * @author juanp
 */
public class Persona extends HttpServlet {

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
        PrintWriter out = response.getWriter();

        String rut = request.getParameter("rut");
        String nombre = request.getParameter("nombre");
        String apellidoPaterno = request.getParameter("apellidoPaterno");
        String apellidoMaterno = request.getParameter("apellidoMaterno");
        String edad = request.getParameter("edad");
        String sexo = request.getParameter("sexo");
        String email = request.getParameter("email");
        String ciudad = request.getParameter("ciudad");
        String telefono = request.getParameter("telefono");
        String estadoCivil = request.getParameter("estadoCivil");
        String terminos = request.getParameter("terminos");

        String respuesta = "";

        if (rut.trim().length() == 0) {
            respuesta += " Debe ingresar un rut \n";
        }
        if (nombre.trim().length() == 0) {
            respuesta += "Debe ingresar un Nombre \n";
        }
        if (apellidoPaterno.trim().length() == 0) {
            respuesta += "Debe ingresar un Apellido \n";
        }
        if (!Util.validaNumero(edad)) {

            respuesta += "Edad debe ser numerico \n";
        }

        JSONObject json = new JSONObject();

        // json.put("", "");
        json.put(rut, "rut");
        System.out.println(rut);

        System.out.println(nombre);
        System.out.println(apellidoPaterno);
        System.out.println(apellidoMaterno);
        System.out.println(edad);
        System.out.println(sexo);
        System.out.println(email);
        System.out.println(ciudad);
        System.out.println(telefono);
        System.out.println(estadoCivil);
        System.out.println(terminos);

        request.getSession().setAttribute("rut", rut);
        request.getSession().setAttribute("nombre", nombre);
        request.getSession().setAttribute("apellidoPaterno", apellidoPaterno);
        request.getSession().setAttribute("apellidoMaterno", apellidoMaterno);
        request.getSession().setAttribute("edad", edad);
        request.getSession().setAttribute("sexo", sexo);
        request.getSession().setAttribute("email", email);
        request.getSession().setAttribute("ciudad", ciudad);
        request.getSession().setAttribute("telefono", telefono);
        request.getSession().setAttribute("estadoCivil", estadoCivil);
        request.getRequestDispatcher("respuesta.jsp").forward(request, response);

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
