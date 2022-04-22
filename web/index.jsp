<%-- 
    Document   : index
    Created on : 21 avr. 2022, 11:51:45
    Author     : joelg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dev-2-22</title>

        <link rel="stylesheet" href="CSS/style.css">

        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
        <!-- Google Fonts -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
        <!-- Bootstrap core CSS -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">

        <!-- JQuery -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>

    </head>
    <body>
        <div class="connexion-block">
            <div class="card p-3 z-depth-5">
                <form action="login" method="POST">
                    <div class="md-form">
                        <label>Login</label>
                        <input type="text" name="login" value="${param['login']}" class="form-control">
                    </div>
                    <div class="md-form">
                        <label>Password</label>
                        <input type="password" name="mdp" class="form-control">
                    </div>

                    <button type="submit" class="btn btn-primary btn-block btn-sm">connexion</button>
                    <button type="button" class="btn btn-link btn-block" onclick="location.href='inscription'">S'inscrire ?</button>
                    <p class="text-danger text-center">${msg}</p>
                </form>
            </div>
        </div>
    </body>
</html>
