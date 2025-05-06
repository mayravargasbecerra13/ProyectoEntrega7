package com.proyectoentrega7.servlets;


import com.proyectoentrega7.modelo.Usuario;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


@WebServlet(name = "ConsultaServlet", urlPatterns = {"/consulta"})
public class ConsultaServlets extends HttpServlet {
    
    // Método para manejar solicitudes GET (consultar usuarios)
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Obtenemos la sesión HTTP
        HttpSession session = request.getSession();
        
        // Recuperamos la lista de usuarios de la sesión (o creamos una nueva)
        List<Usuario> listaUsuarios = (List<Usuario>) session.getAttribute("listaUsuarios");
        if (listaUsuarios == null) {
            listaUsuarios = new ArrayList<>();
            session.setAttribute("listaUsuarios", listaUsuarios);
        }
        
        // Verificamos si hay un parámetro de búsqueda
        String emailBusqueda = request.getParameter("email");
        
        // Si hay un parámetro de búsqueda, buscamos el usuario
        if (emailBusqueda != null && !emailBusqueda.isEmpty()) {
            Usuario usuarioEncontrado = null;
            
            // Buscamos el usuario por email
            for (Usuario usuario : listaUsuarios) {
                if (usuario.getEmail().equals(emailBusqueda)) {
                    usuarioEncontrado = usuario;
                    break;
                }
            }
            
            // Agregamos el resultado de la búsqueda como atributo
            request.setAttribute("usuarioBuscado", usuarioEncontrado);
            request.setAttribute("busquedaRealizada", true);
        }
        
        // Redirigimos a la página de consulta
        request.getRequestDispatcher("/consulta.jsp").forward(request, response);
    }
}
