<%-- 
    Document   : ClientCompte
    Created on : 25 avr. 2022, 14 h 48 min 23 s
    Author     : lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Compte client</title>
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
        <div>
            <h1> Solde </h1>
            ${solde}

        </div>
    </body>
</html>
