<%-- 
    Document   : menuburger
    Created on : 25 avr. 2022, 09:40:58
    Author     : Clara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/styleclient.css">
    <title>Login Client</title>
</head>

<body>
    <input type="checkbox" id="menu" name="menu">
    <div id="wrap">
        <header class="header">
            <nav class="nav">
                <label for="menu">
                    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                        x="0px" y="0px" width="34px" height="27px" viewBox="0 0 34 27" enable-background="new 0 0 34 27"
                        xml:space="preserve">
                        <rect fill="#FFFFFF" width="34" height="4" />
                        <rect y="11" fill="#FFFFFF" width="34" height="4" />
                        <rect y="23" fill="#FFFFFF" width="34" height="4" />
                    </svg>
                    <span>×</span>

                </label>

                <h1><a href="#">CLIENT XX</a></h1>
                <a href="#">Mon compte</a>
                <a href="#">Appel à un conseiller</a>
                <a href="#">Demande plafond</a>
                <a href="#">Ma carte</a>
            </nav>
        </header>
        <main class="main">
            <img src="https://img.freepik.com/photos-gratuite/pile-piece-monnaie-concept-investissement-financier-graphique-commercial-tirelire_135649-2040.jpg?w=996"
                width="100%">
            <img src="https://img.freepik.com/photos-gratuite/paiement-par-carte-credit-achat-vente-produits-services_1150-16379.jpg?w=996&t=st=1650642578~exp=1650643178~hmac=1cc0f2c9da4565110b960ba88e608662ce0a04022304ce87cc36b43631278d9f"
                width="100%">
            <img src="https://images.unsplash.com/photo-1579621970588-a35d0e7ab9b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
                width="100%">
            <div>
                <form action="login" method="POST">
                    <div class="md-form">
                        <input type="text" placeholder="Login" name="login" class="form_control">
                    </div>
                    <div class="md-form">
                        <input type="password" placeholder="Password" name="mdp" class="form-control">
                    </div>
                    <button class="btn btn-primary btn-block"> Connexion </button>
                    <button type="button" class="btn btn-link btn-block" onclick="location.href='inscription'">
                        S'inscrire
                    </button>
                </form>
        </main>
    </div>

</body>

</html>