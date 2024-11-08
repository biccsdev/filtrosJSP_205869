<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Iniciar Sesión - Pokédex</title>
        <style>
            :root {
                --pokemon-red: #FF1C1C;
                --pokemon-dark-red: #CC0000;
                --pokeball-white: #FFFFFF;
                --pokeball-black: #222224;
                --background-pattern: #f4f4f4;
            }

            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }

            body {
                background-color: var(--background-pattern);
                background-image: 
                    linear-gradient(45deg, #f0f0f0 25%, transparent 25%, transparent 75%, #f0f0f0 75%, #f0f0f0),
                    linear-gradient(45deg, #f0f0f0 25%, transparent 25%, transparent 75%, #f0f0f0 75%, #f0f0f0);
                background-size: 60px 60px;
                background-position: 0 0, 30px 30px;
                min-height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
            }

            .login-container {
                background: var(--pokeball-white);
                padding: 2rem;
                border-radius: 10px;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
                width: 100%;
                max-width: 400px;
                position: relative;
            }

            .pokeball-decoration {
                position: absolute;
                top: -50px;
                left: 50%;
                transform: translateX(-50%);
                width: 100px;
                height: 100px;
                background: var(--pokemon-red);
                border: 8px solid var(--pokeball-black);
                border-radius: 50%;
                display: flex;
                justify-content: center;
                align-items: center;
                overflow: hidden;
            }

            .pokeball-decoration::before {
                content: '';
                position: absolute;
                width: 100%;
                height: 4px;
                background: var(--pokeball-black);
            }

            .pokeball-decoration::after {
                content: '';
                width: 30px;
                height: 30px;
                background: var(--pokeball-white);
                border: 4px solid var(--pokeball-black);
                border-radius: 50%;
            }

            .login-header {
                text-align: center;
                color: var(--pokemon-red);
                margin: 1rem 0 2rem;
                font-size: 2em;
                text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
            }

            .login-form {
                display: flex;
                flex-direction: column;
                gap: 1.5rem;
            }

            .form-group {
                display: flex;
                flex-direction: column;
                gap: 0.5rem;
            }

            .form-group label {
                color: var(--pokeball-black);
                font-weight: bold;
            }

            .form-group input {
                padding: 0.8rem;
                border: 2px solid var(--pokemon-red);
                border-radius: 5px;
                font-size: 1em;
                transition: all 0.3s ease;
            }

            .form-group input:focus {
                outline: none;
                border-color: var(--pokemon-dark-red);
                box-shadow: 0 0 5px rgba(204, 0, 0, 0.3);
            }

            .submit-btn {
                background-color: var(--pokemon-red);
                color: var(--pokeball-white);
                padding: 1rem;
                border: none;
                border-radius: 25px;
                font-size: 1.1em;
                cursor: pointer;
                transition: all 0.3s ease;
                margin-top: 1rem;
            }

            .submit-btn:hover {
                background-color: var(--pokemon-dark-red);
                transform: translateY(-2px);
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            }

            .error-message {
                background-color: #ff6b6b;
                color: white;
                padding: 1rem;
                border-radius: 5px;
                text-align: center;
                margin-bottom: 1rem;
                display: none;
            }

            /* Show error message when error parameter exists */
            <% if (request.getParameter("error") != null) { %>
                .error-message {
                    display: block;
                }
            <% } %>

        
        </style>
    </head>
    <body>
        <div class="login-container">
            <div class="pokeball-decoration"></div>
            
            <h1 class="login-header">Inicia Sesión</h1>
            
            <div class="error-message">
                Usuario o contraseña incorrectos
            </div>
            
            <form action="login" method="post" class="login-form">
                <div class="form-group">
                    <label for="user">Usuario</label>
                    <input type="text" id="user" name="user" required 
                           placeholder="Ingresa tu nombre">
                </div>
                
                <div class="form-group">
                    <label for="password">Contraseña</label>
                    <input type="password" id="password" name="password" required 
                           placeholder="Ingresa tu contraseña">
                </div>
                
                <button type="submit" class="submit-btn">Ingresar</button>
            </form>
        </div>
    </body>
</html>