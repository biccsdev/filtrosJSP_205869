<%-- 
    Document   : registrar-pokemon
    Created on : Nov 8, 2024, 12:11:09 AM
    Author     : GF63
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Pokémon</title>
        <style>
            <%@include file="/WEB-INF/css/pokemon-styles.css"%>
        </style>
    </head>
    <body>
        <div class="pokemon-container">
            <div class="nav-menu">
                <a href="home.jsp">Inicio</a>
                <a href="mi-perfil.jsp">Mi Perfil</a>
            </div>
            
            <h1 class="pokemon-header">Registrar Nuevo Pokémon</h1>
            
            <form action="registrar-pokemon" method="post" class="pokemon-form">
                <div class="form-group">
                    <label class="pokemon-label">ID:</label>
                    <input type="text" name="id" class="pokemon-input" required>
                </div>
                
                <div class="form-group">
                    <label class="pokemon-label">Nombre:</label>
                    <input type="text" name="nombre" class="pokemon-input" required>
                </div>
                
                <div class="form-group">
                    <label class="pokemon-label">URL de la imagen:</label>
                    <input type="url" name="imagen" class="pokemon-input" required>
                </div>
                
                <div class="form-group">
                    <label class="pokemon-label">Tipo:</label>
                    <input type="text" name="tipo" class="pokemon-input" required>
                </div>
                
                <div class="form-group">
                    <label class="pokemon-label">Altura (m):</label>
                    <input type="number" step="0.1" name="altura" class="pokemon-input" required>
                </div>
                
                <div class="form-group">
                    <label class="pokemon-label">Peso (kg):</label>
                    <input type="number" step="0.1" name="peso" class="pokemon-input" required>
                </div>
                
                <div class="form-group">
                    <label class="pokemon-label">Estadísticas:</label>
                    <textarea name="estadisticas" class="pokemon-input" required></textarea>
                </div>
                
                <div class="form-group">
                    <label class="pokemon-label">Descripción:</label>
                    <textarea name="descripcion" class="pokemon-input" required></textarea>
                </div>
                
                <div class="form-group">
                    <label class="pokemon-label">Habilidades (separadas por coma):</label>
                    <input type="text" name="habilidades" class="pokemon-input" required>
                </div>
                
                <div class="form-group">
                    <label class="pokemon-label">Evoluciones (separadas por coma):</label>
                    <input type="text" name="evoluciones" class="pokemon-input" required>
                </div>
                
                <div class="form-group">
                    <label class="pokemon-label">Debilidades (separadas por coma):</label>
                    <input type="text" name="debilidades" class="pokemon-input" required>
                </div>
                
                <button type="submit" class="pokemon-button">Registrar Pokémon</button>
            </form>
        </div>
    </body>
</html>