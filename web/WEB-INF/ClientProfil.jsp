<%-- 
    Document   : ClientProfil
    Created on : 25 avr. 2022, 10 h 38 min 34 s
    Author     : lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        
        <title>JSP Page</title>
    </head>
    <body>
        <div class="connexion-block">
            <div class="card p-3 z-depth-5">
                <form action="ClientModifierProfilServlet" method="POST">
                    <div class="form-outline mb-4">
                        <input type="text" placeholder="${client.nom}" name="nom" value="${client.nom}" class="form-control" />
                    </div>
                    <div class="form-outline mb-4">
                        <input type="text" placeholder="${client.prenom}" name="prenom" value="${client.prenom}" class="form-control">
                    </div>
                    <div class="form-outline mb-4">
                        <input type="mail" placeholder="${client.mail}" name="mail" value="${client.mail}" class="form-control">
                    </div>
                    <div class="form-outline mb-4">
                        <input type="date" placeholder="${client.dateNaissance}" name="dateNaissance" value="${client.dateNaissance}" class="form-control">
                    </div>
                    <div class="form-outline mb-4">
                        <input type="text" placeholder="${client.telephone}" name="telephone" value="${client.telephone}" class="form-control">
                    <div class="form-outline mb-4">
                        <input type="password" placeholder="Nouveau MDP" name="mdp" class="form-control">
                    </div>
                    <button class="btn btn-primary btn-block btn-am"> Valider </button>
                </form>
            </div>
        </div>
    </body>
</html>
