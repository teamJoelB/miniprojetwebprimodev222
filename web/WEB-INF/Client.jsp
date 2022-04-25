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
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="accueille"><img src="contracts/img.resources/sgbmalakoff.png" alt="Solutec gang banque" width="120" height="50"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="faq">Qui sommes nous ?</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="faq">Pourquoi nous rejoindre ?</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">SGB dans le monde</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Contact">Nous contacter</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
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
