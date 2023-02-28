package com.mycompany.web1.Servlets;

import com.mycompany.web1.Pacientes.Pacientes;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "SvPacientes", urlPatterns = {"/SvPacientes"})
public class SvPacientes extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Pacientes> listaPacien = new ArrayList<>();
        listaPacien.add(new Pacientes("123", "Luisina", "4444"));
        listaPacien.add(new Pacientes("123", "Luisina", "4444"));
        listaPacien.add(new Pacientes("123", "Luisina", "4444"));
        
        HttpSession misesion = request.getSession();
        misesion.setAttribute("listaPacien", listaPacien);
        
        response.sendRedirect("verPacientes.jsp");
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nombre = request.getParameter("nombre");
        String dni = request.getParameter("dni");
        String resumen = request.getParameter("resumen");
        
        System.out.println("Datos: " + dni + " " + nombre);
        
        List<Pacientes> listaPacien = new ArrayList<>();
        listaPacien.add(new Pacientes(dni, nombre, resumen));
        
        HttpSession misesion = request.getSession();
        misesion.setAttribute("listaPacien", listaPacien);
        
        response.sendRedirect("verRegistro.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
