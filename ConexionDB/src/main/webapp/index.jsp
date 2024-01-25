<%-- 
    Document   : index
    Created on : 18/01/2024, 11:02:51 PM
    Author     : Adrian Caballero
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Page Title</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src='main.js'></script>
</head>
    
<body class="bg-black d-flex justify-content-center align-items-center vh-100">
    <form action="SvUsuario" method="POST">
        <div class="bg-white p-5 rounded-5" style="width: 50rem;">
            <div class="d-flex justify-content-center">
                <img  src="imagenes/logo.png" alt="logo" style="height: 7rem;">
            </div>
            <div class="text-black text-decoration-none text-black fw-semibold fst-italic d-flex justify-content-center">Bienvenido</div>
            <div class=" input-group">
                <div class="input-group-text bg-white">
                    <img src="imagenes/user.png" alt="user" style="height: 1rem;">
                </div>
                <div class="form-floating mb-6">
                    <input type="text" class="form-control" name="usuario" placeholder="Nombre de usuario">
                    <label for="usuario">Usuario</label>
                </div>
            </div>
            <div class="input-group">
                <div class="input-group-text bg-white">
                    <img src="imagenes/password.png" alt="password" style="height: 1rem;">
                </div>
                <div class="form-floating">
                    <input type="password" class="form-control" name="contrasena" placeholder="contrasena">
                    <label for="contrasena">Contrasena</label>
                </div>
            </div>
             <button class="btn btn-dark text-white w-100 mt-4" type="submit">Enviar</button>
        </div>
    </form>
    <div class="bg-white p-5 rounded-5" style="width: 50rem;">
        <form method="get" action="SvUsuario">
            <div >
            <button class="btn btn-dark text-white w-100 mt-4" type="submit">Ver Usuario</button>
            </div>
        </form> 
    </div>
</body>
</html>
