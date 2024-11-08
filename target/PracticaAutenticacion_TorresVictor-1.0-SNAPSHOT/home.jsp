<%-- 
    Document   : home
    Created on : Nov 8, 2024, 12:10:45 AM
    Author     : GF63
--%>

<%@page import="models.PokemonManager"%>
<%@page import="models.Pokemon"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Mini Pokedex</title>
        <style>
            :root {
                --primary-color: #FF1C1C;
                --secondary-color: #CC0000;
                --background-color: #f4f4f4;
                --table-header-bg: #FF1C1C;
                --table-stripe-bg: #f9f9f9;
                --border-color: #ddd;
            }

            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }

            body {
                background-color: var(--background-color);
                background-image: linear-gradient(45deg, #f0f0f0 25%, transparent 25%, transparent 75%, #f0f0f0 75%, #f0f0f0),
                    linear-gradient(45deg, #f0f0f0 25%, transparent 25%, transparent 75%, #f0f0f0 75%, #f0f0f0);
                background-size: 60px 60px;
                background-position: 0 0, 30px 30px;
                padding: 20px;
            }

            .header {
                text-align: center;
                margin-bottom: 30px;
                background-color: white;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            }

            h1 {
                color: var(--primary-color);
                font-size: 2.5em;
                margin-bottom: 20px;
                text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
            }

            .register-btn {
                background-color: var(--primary-color);
                color: white;
                padding: 12px 24px;
                border: none;
                border-radius: 25px;
                font-size: 1.1em;
                cursor: pointer;
                transition: all 0.3s ease;
                text-decoration: none;
                display: inline-block;
                margin-bottom: 20px;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            }

            .register-btn:hover {
                background-color: var(--secondary-color);
                transform: translateY(-2px);
                box-shadow: 0 6px 8px rgba(0, 0, 0, 0.2);
            }

            .pokemon-table {
                width: 100%;
                border-collapse: collapse;
                background-color: white;
                border-radius: 10px;
                overflow: hidden;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            }

            .pokemon-table th {
                background-color: var(--table-header-bg);
                color: white;
                padding: 15px;
                text-align: left;
            }

            .pokemon-table td {
                padding: 15px;
                border-bottom: 1px solid var(--border-color);
            }

            .pokemon-table tbody tr:nth-child(even) {
                background-color: var(--table-stripe-bg);
            }

            .pokemon-table tbody tr:hover {
                background-color: #f0f0f0;
                transition: background-color 0.3s ease;
            }

            .pokemon-table img {
                max-width: 120px;
                height: auto;
                transition: transform 0.3s ease;
            }

            .pokemon-table img:hover {
                transform: scale(1.1);
            }

            ul, ol {
                padding-left: 20px;
                margin: 5px 0;
            }

            li {
                margin: 3px 0;
            }

            @media (max-width: 768px) {
                .pokemon-table {
                    display: block;
                    overflow-x: auto;
                }

                .header {
                    padding: 15px;
                }

                h1 {
                    font-size: 2em;
                }
            }
        </style>
    </head>

    <body>
        <div class="header">
            <h1>Mini Pokédex</h1>
            <a href="/PracticaAutenticacion_TorresVictor/registrar-pokemon.jsp" class="register-btn">Registrar Nuevo Pokémon</a>
        </div>
        <h1>Mis Pokémones</h1>
        <table class="pokemon-table" border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Imagen</th>
                    <th>Tipo</th>
                    <th>Altura (m)</th>
                    <th>Peso (kg)</th>
                    <th>Estadísticas de combate</th>
                    <th>Descripción</th>
                    <th>Habilidades</th>
                    <th>Evoluciones</th>
                    <th>Debilidades</th>
                </tr>
            </thead>
            <tbody>
                
                <% 
                        List<Pokemon> pokemones = PokemonManager.getInstance().getAllPokemon();
                        for(Pokemon pokemon : pokemones) {
                    %>
                    <tr>
                        <td><%=pokemon.getId()%></td>
                        <td><%=pokemon.getNombre()%></td>
                        <td><img src="<%=pokemon.getImagen()%>" alt="<%=pokemon.getNombre()%>" /></td>
                        <td><%=pokemon.getTipo()%></td>
                        <td><%=pokemon.getAltura()%></td>
                        <td><%=pokemon.getPeso()%></td>
                        <td><%=pokemon.getEstadisticas()%></td>
                        <td><%=pokemon.getDescripcion()%></td>
                        <td>
                            <ul>
                                <% for(String habilidad : pokemon.getHabilidades()) { %>
                                    <li><%=habilidad%></li>
                                <% } %>
                            </ul>
                        </td>
                        <td>
                            <ol>
                                <% for(String evolucion : pokemon.getEvoluciones()) { %>
                                    <li><%=evolucion%></li>
                                <% } %>
                            </ol>
                        </td>
                        <td>
                            <ul>
                                <% for(String debilidad : pokemon.getDebilidades()) { %>
                                    <li><%=debilidad%></li>
                                <% } %>
                            </ul>
                        </td>
                    </tr>
                    <% } %>

            </tbody>
        </table>
    </body>

</html>
