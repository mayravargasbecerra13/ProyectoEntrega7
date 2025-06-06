<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registro de Usuario</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 0; padding: 20px; line-height: 1.6; }
        h1 { color: #333; }
        .container { max-width: 800px; margin: 0 auto; }
        .form-group { margin-bottom: 15px; }
        .form-group label { display: block; margin-bottom: 5px; font-weight: bold; }
        .form-group input { width: 100%; padding: 8px; box-sizing: border-box; border: 1px solid #ddd; border-radius: 4px; }
        .btn { padding: 10px 15px; background-color: #ee9553; color: white; border: none; border-radius: 4px; cursor: pointer; }
        .btn:hover { background-color: #4e2b15; }
        .message { padding: 10px; margin: 20px 0; background-color: #d4edda; border: 1px solid #c3e6cb; border-radius: 4px; color: #155724; }
        .menu { margin: 20px 0; }
        .menu a { color: #ee9553; text-decoration: none; }
        .menu a:hover { text-decoration: underline; color: #4e2b15;}
    </style>
</head>
<body>
    <div class="container">
        <h1>Registro de Usuario</h1>
        
        <%-- Mostrar mensaje de éxito si existe --%>
        <% if (request.getAttribute("mensaje") != null) { %>
            <div class="message">
                <%= request.getAttribute("mensaje") %>
            </div>
        <% } %>
        
        <%-- Formulario de registro que envía datos al servlet mediante POST --%>
        <form action="registro" method="POST">
            <div class="form-group">
                <label for="nombre">Nombre:</label>
                <input type="text" id="nombre" name="nombre" required>
            </div>
            
            <div class="form-group">
                <label for="apellido">Apellido:</label>
                <input type="text" id="apellido" name="apellido" required>
            </div>
            
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            
            <div class="form-group">
                <label for="password">Contraseña:</label>
                <input type="password" id="password" name="password" required>
            </div>
            
            <div class="form-group">
                <button type="submit" class="btn">Registrar</button>
            </div>
        </form>
        
        <div class="menu">
            <a href="index.jsp">Volver a Inicio</a> | 
            <a href="consulta">Consultar Usuarios</a>
        </div>
    </div>
</body>
</html>
