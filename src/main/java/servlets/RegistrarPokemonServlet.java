package servlets;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Pokemon;
import models.PokemonManager;

@WebServlet(name = "RegistrarPokemonServlet", urlPatterns = {"/registrar-pokemon"})
public class RegistrarPokemonServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        
        try {
            // Obtener los datos del formulario
            String id = request.getParameter("id");
            String nombre = request.getParameter("nombre");
            String imagen = request.getParameter("imagen");
            String tipo = request.getParameter("tipo");
            double altura = Double.parseDouble(request.getParameter("altura"));
            double peso = Double.parseDouble(request.getParameter("peso"));
            String estadisticas = request.getParameter("estadisticas");
            String descripcion = request.getParameter("descripcion");
            
            // Convertir strings separados por comas a listas
            List<String> habilidades = Arrays.asList(request.getParameter("habilidades").split(","))
                    .stream()
                    .map(String::trim)
                    .collect(Collectors.toList());
            
            List<String> evoluciones = Arrays.asList(request.getParameter("evoluciones").split(","))
                    .stream()
                    .map(String::trim)
                    .collect(Collectors.toList());
            
            List<String> debilidades = Arrays.asList(request.getParameter("debilidades").split(","))
                    .stream()
                    .map(String::trim)
                    .collect(Collectors.toList());
            
            // Crear nuevo Pokemon
            Pokemon nuevoPokemon = new Pokemon(
                id, nombre, imagen, tipo, altura, peso,
                estadisticas, descripcion, habilidades,
                evoluciones, debilidades
            );
            
            // Agregar al manager
            PokemonManager.getInstance().addPokemon(nuevoPokemon);
            
            // Redireccionar a la página principal
            response.sendRedirect(request.getContextPath() + "/home.jsp?success=true");
            
        } catch (Exception e) {
            // En caso de error, redirigir con mensaje de error
            response.sendRedirect(request.getContextPath() + 
                    "/registrar-pokemon.jsp?error=" + e.getMessage());
        }
    }
}