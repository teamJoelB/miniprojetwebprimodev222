<%-- 
    Document   : Client
    Created on : 22 avr. 2022, 23 h 51 min 23 s
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

        <title>PageClient</title>
    </head>
    <body>
        <div class="card p-3 z-depth-5">
            <form action="ClientModifierProfilServlet" method="GET">
                <h1> Mon profil </h1>
                Nom ${client.nom} <br>
                Prénom ${client.prenom} <br>
                Mail ${client.mail} <br>
                Date de naissance ${client.dateNaissance} <br>
                Téléphone ${client.telephone} <br>
                <button class="btn-primary"> Modifier profil </button>
            </form>
        </div>
        <div class="card p-3 z-depth-5">
            <form action="ClientAccesCompteServlet" method="GET">
                <h1> Accès au compte </h1>
                Solde  <br>
                <button class="btn-primary"> Accéder au compte </button>
            </form>
        </div>
        <div class="card p-3 z-depth-5">
            <form action="ClientModifierProfilServlet" method="GET">
                <h1> Contacter un conseiller </h1>
                Solde  <br>
                <button class="btn-primary"> Modifier profil </button>
            </form>
        </div>
    </body>
</html>
