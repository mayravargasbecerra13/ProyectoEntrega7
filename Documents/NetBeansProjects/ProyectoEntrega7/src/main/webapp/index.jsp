<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sistema de Registro de Usuarios</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 0; padding: 20px; line-height: 1.6; }
        h1 {text-align: center;
        width: 346px;
        display: block;
        margin: auto; color: #333; 
        font-size: 27px}
        .container {font-family: Georgia, serif; display: flex; justify-content: center; align-items: center; height: 100vh; position: relative; max-width: 620px; height: 912px; margin: 0 auto; background-image: url(img/buildings-8713025_1280.jpg); background-size: cover; }
        .containerdos{    width: 369px; background: white; display: block; margin: auto; padding: 20px;
        border-radius: 10px;
        margin-bottom: 100px;}
        .text-registro{display: block;
        margin: auto;
        width: 347px;
        padding: 20px;}
        .menu { display: flex; justify-content: center; gap: 20px; margin-bottom: 20px; }
        .menu a { padding: 10px 15px; background-color: #ee9553; color: white; text-decoration: none; border-radius: 4px; }
        .menu a:hover { background-color: #4d2c1b; }
        h2 {text-align: center;
        width: 386px;
        display: block;
        margin: auto;
        color: #333;}
    </style>
</head>
<body>
    <div class="container">
        <div class="containerdos">
        <h1>Sistema de Registro de Usuarios</h1>
        
        <p class="text-registro">Este sistema permite registrar nuevos usuarios y consultar la información de usuarios registrados.</p>
        
        <div class="menu">
            <a href="registro">Registrar Usuario</a>
            <a href="consulta">Consultar Usuarios</a>
        </div>
        
        <hr>
        
        <h2>Información del Sistema</h2>
        <p>
            Este sistema es un ejemplo simple que muestra cómo utilizar:
            <ul>
                <li>Servlets para procesar formularios</li>
                <li>JSP para renderizar páginas dinámicas</li>
                <li>Métodos HTTP GET y POST</li>
                <li>Sesiones para almacenar datos</li>
            </ul>
        </p>
        </div>
    </div>
</body>
</html>