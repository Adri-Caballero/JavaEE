/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import entity.ControllerUsuario;
import entity.Usuario;
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

/**
 *
 * @author Adrian Caballero
 */
@WebServlet(name = "SvUsuario", urlPatterns = {"/SvUsuario"})
public class SvUsuario extends HttpServlet {
    ControllerUsuario controllerUsuario = new ControllerUsuario();
    Usuario usu = new Usuario();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Usuario> listaUsuarios = new ArrayList<>();
        listaUsuarios = controllerUsuario.consultarUsuario();
        
        HttpSession sesion = request.getSession();
        sesion.setAttribute("listaUsuarios", listaUsuarios);
        response.sendRedirect("mostrarUsuario.jsp");
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String usuario = request.getParameter("usuario");
        String contrasena = request.getParameter("contrasena");
        usu.setUsuario(usuario);
        usu.setContrasena(contrasena);
        controllerUsuario.crearUsuario(usu);
       
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
