<%-- 
    Document   : ConseillerProfil
    Created on : 25 avr. 2022, 15:13:07
    Author     : dylan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion de Compte</title>
        
         <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/styleclient.css">
        
    
   <!--                                  Importationt                                              -->    
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    
        
    </head>
    <body>
        <!--                                  Navbar                                              -->         

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="PageConseiller"> Conseiller ${user.prenom} ${user.nom}</a>
    <button
      class="navbar-toggler"
      type="button"
      data-mdb-toggle="collapse"
      data-mdb-target="#navbarNav"
      aria-controls="navbarNav"
      aria-expanded="false"
      aria-label="Toggle navigation"
    >
      <i class="fas fa-bars"></i>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Menu</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Deconnexion</a>
        </li>

      </ul>
    </div>
  </div>
</nav>



<!--                                   Navbar                                        -->
        
<br></br>        

<div class="box2">
    <div class="card p-3 z-depth-5">
    Mettre à jour le profils
    <br></br>
        
                <form action="ConseillerModifierProfitServlet" method="POST">
                    <div class="form-outline mb-4">Nom
                        <input type="text" placeholder="${conseiller.nom}" name="nom" value="${conseiller.nom}" class="form-control" /> 
                    </div>
                    <div class="form-outline mb-4">Prénom
                        <input type="text" placeholder="${conseiller.prenom}" name="prenom" value="${conseiller.prenom}" class="form-control">
                    </div>
                    <div class="form-outline mb-4">Mot de passe (8 characters minimum)
                        <input type="password" placeholder="Nouveau MDP" name="mdp" class="form-control">
                    </div>
                    <div class="form-outline mb-4">Mail
                        <input type="mail" placeholder="${conseiller.mail}" name="mail" value="${conseiller.mail}" class="form-control">
                    </div>
                    <div class="form-outline mb-4">Date de naissance
                        <input type="date" placeholder="${conseiller.dateNaissance}" name="dateNaissance" value="${conseiller.dateNaissance}" class="form-control">
                    </div>
                    <div class="form-outline mb-4">Téléphone
                        <input type="text" placeholder="${conseiller.telephone}" name="telephone" value="${conseiller.telephone}" class="form-control">
                    </div>

                    <button class="btn btn-primary btn-block btn-am"> Valider </button>
                </form>
          
       

    </body>
</html>
</div>
</div>
                    