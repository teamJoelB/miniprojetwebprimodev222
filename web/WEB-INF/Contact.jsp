<%-- 
    Document   : Contact
    Created on : 25 avr. 2022, 15:54:30
    Author     : Longe
--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page-Contact</title>

        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="CSS/styleclient.css">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="CSS/styleclient.css">
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
        <div class="container contact-form">
            <div class="contact-image">
                <img src="data:image/png;base64,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" alt="rocket_contact">
            </div>
            <form method="post">
                <h3>Drop Us a Message</h3>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="text" name="txtName" class="form-control" placeholder="Your Name *" value="" />
                        </div>
                        <div class="form-group">
                            <input type="text" name="txtEmail" class="form-control" placeholder="Your Email *" value="" />
                        </div>
                        <div class="form-group">
                            <input type="text" name="txtPhone" class="form-control" placeholder="Your Phone Number *" value="" />
                        </div>
                        <div class="form-group">
                            <input type="submit" name="btnSubmit" class="btnContact" value="Send Message" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <textarea name="txtMsg" class="form-control" placeholder="Your Message *" style="width: 100%; height: 150px;"></textarea>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>