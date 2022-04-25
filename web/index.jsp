<%-- 
    Document   : newjsp
    Created on : 24 avr. 2022, 22:36:02
    Author     : Longe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="accueille"><img src="contracts/img.resources/logoo.png" alt="Solutec gang banque" class="d-inline-block align-text-top w-25 h-25"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="faq">Qui sommes nous?</a>
                </li>
               <li class="nav-item">
                   <a class="nav-link" href="faq">Pourquoi nous rejoindre.</a>
               </li>
               <li class="nav-item">
                   <a class="nav-link" href="#">SGB dans le monde</a>
               </li>
               <li class="nav-item">
                   <a class="nav-link" href="#">Nous contacter</a>
               </li>
           </ul>
       </div>
    </div>
</nav>
    </head>
    
    <body>
        <br>
<h1><center>Bienvenu(es) à la Solutec gang banque</center></h1>
        <br>
        <h2><center><i>Pour mieux vous aiguiller, qui êtes-vous?</i></center></h2>
    </body>
</html>
<br>
<br>
<br>
<br>

<html>
    <head>
        <title>Banque</title>
        <meta charset='utf-8'>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    </head>
    <body>
        
   <div class="container">
          <div class="card-deck">
                <div class="card">
                    <div class="card-header"><center>Espace membre</center></div>
                    
                   <h3 class="card-img">
                        <img class="mx-auto d-block" src="contracts/img.resources/client.png" alt="ff">
                        </h5>
                       
                    
                    <div class="card-footer">
                   <a href="ClientConnexionServlet" class="btn btn-outline-primary mb-2 active float-right" role="button" title="Se connecter">Se connecter</a>
                    </div>
                </div> 
                <div class="card">
                    <div class="card-header"><center>Espace conseiller</center></div>
                    <div class="card-body">
                       <h3 class="card-img">
                        <img class="mx-auto d-block" src="contracts/img.resources/conseiller.png" alt="ff">
                        </h5>
                    </div>
                    <div class="card-footer">
                    <a href="logina" class="btn btn-outline-primary mb-2 active float-right" role="button" title="Se connecter">Se connecter</a>
                    </div>
                </div>
              <div class="card">
                  <div class="card-header"><center>Espace administrateur</center></div>
                    <div class="card-body">
                        <h3 class="card-img">
                        <img class="mx-auto d-block" src="contracts/img.resources/admin.png" alt="ff">
                        </h5>
                    </div>
                    <div class="card-footer">
                    <a href="loginadmin" class="btn btn-outline-primary mb-2 active float-right " role="button" title="Se connecter">Se connecter</a>
                    </div>
                </div>
            </div>
      

        
    </body>
</html>
