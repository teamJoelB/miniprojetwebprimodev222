<%-- 
    Document   : loginclient
    Created on : 22 avr. 2022, 17:50:38
    Author     : Clara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bienvue sur la page de connexion Admin</h1>
        <div class="connexion-block">
            <div class="card p-3 z-depth-5">
                <form action="ClientConnexionServlet" method="POST">
                    <div class="md-form">
                        <label>Login</label>
                        <input type="text" name="login" value="${param['login']}" class="form-control">
                    </div>
                    <div class="md-form">
                        <label>Password</label>
                        <input type="password" name="mdp" class="form-control">
                    </div>

                    <button type="submit" class="btn btn-primary btn-block btn-sm">connexion</button>
                    <button type="button" class="btn btn-link btn-block" onclick="location.href='ClientInscriptionServlet'">S'inscrire ?</button>
                    <p class="text-danger text-center">${msg}</p>
                </form>
            </div>
        </div>
  
    </body>
</html>
