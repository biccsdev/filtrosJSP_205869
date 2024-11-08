<%-- 
    Document   : mi-perfil.jsp
    Created on : Nov 8, 2024, 12:10:35 AM
    Author     : GF63
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mi Perfil</title>
        <style>
            <%@include file="/WEB-INF/css/pokemon-styles.css"%>
        </style>
    </head>
    <body>
        <div class="pokemon-container">
            <div class="nav-menu">
                <a href="home.jsp">Inicio</a>
                <a href="registrar-pokemon.jsp">Registrar Pokémon</a>
            </div>
            
            <h1 class="pokemon-header">Mi Perfil de Entrenador</h1>
            
            <div class="profile-card">
                <img src="https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/trainers/ash.png" 
                     alt="Trainer Profile" style="width: 150px; height: 150px; border-radius: 50%; margin: 0 auto; display: block;">
                
                <div style="text-align: center; margin-top: 20px;">
                    <h2>Entrenador: <%= session.getAttribute("usuario") %></h2>
                    <p>Región: Kanto</p>
                    <p>Medallas: 8</p>
                    <p>Pokémon Registrados: ${pokemonManager.getAllPokemon().size()}</p>
                </div>
                
                <div style="margin-top: 20px;">
                    <h3>Logros:</h3>
                    <ul>
                        <li>Campeón de la Liga Pokémon</li>
                        <li>Maestro de Tipo Planta</li>
                        <li>Coleccionista de Pokémon Raros</li>
                    </ul>
                </div>
            </div>
        </div>
    </body>
</html>