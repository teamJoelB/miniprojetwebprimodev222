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
        
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href=accueille"><img src="logoo.png" alt="Solutec gang banque" class="d-inline-block align-text-top w-25 h-25"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                
           </ul>
       </div>
    </div>
</nav>
    </head>
    <body>
        <%--
        <h1 class="center">Helloo kikouuuu!</h1>
        <% String nom = "Dylan";
        out.println(nom);
        int age = 17;
        if (age<18){
            out.println("<p style='color :red'> Mineur <p>");
        }
        else{
            out.println("<p style ='color : green'> Majeur <p>");
        }%>
        
        ${1+1}
        
        <script>
            alert('DEV 222 RPZ');
        </script>

        <div>
            <form action="/ma-page-de-traitement" method="post">
                <div>
                    <label for="name">Nom :</label>
                    <input type="text" id="name" name="user_name">
                </div>
                <div>
                    <label for="mail">e-mail&nbsp;:</label>
                    <input type="email" id="mail" name="user_mail">
                </div>
                <div>
                    <label for="msg">Message :</label>
                    <textarea id="msg" name="user_message"></textarea>
                </div>
            </form>

        </div>        
        --%><br><br><br>
        <h1><center>Espace admins/conseillers</center></h1>
        <div class="connexion-block">
            <div class="card p-3 z-depth-5">
                <form action ="login" method="POST">
                    <div class="md-form">
                        <%-- <label>Login</label> --%>
                        <input type="text" placeholder="Login" name="loginn" value="${param['login']}" class="form_control">
                    </div>
                    <div class="md-form">
                        <input type="password" placeholder="Password" name="mdpp" class="form-control">
                    </div>
                    <button class="btn btn-primary btn-block"> Connexion </button>
                    <button type="button" class ="btn btn-link btn-block" onclick ="location.href='inscription'"> S'inscrire </button>
                    <p class="text-danger">${msg}</p>
                </form>
            </div>
                
        </div>
    </body>
</html>