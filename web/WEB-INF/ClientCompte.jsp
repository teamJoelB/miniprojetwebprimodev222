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
        <div class="card p-3 z-depth-5">
            <h1> Solde </h1>
            ${solde}
        </div>

        <form action ="ClientCarteServlet" method="POST">
            <div id="carte" class="card p-3 z-depth-5">
                <h1> Gestion de carte </h1>

                <% for (int i=0; i<10; i++) { out.println(i); } %>
                
                <script>
                    document.write("<br>");
                    document.write("CA MARCHE ENFIN");
                    
                    if (${etatCarte}) {
                        document.write("<br>");
                        document.write("${etatCarte}");
                        let input = document.createElement('input');
                        input.type = "checkbox";
                        input.onChange = "this.form.submit()";
                        input.name = "check";
                        input.checked = "banana";
                        document.write("<input type='checkbox' onChange='this.form.submit()', name='check' checked='true'>")
                    } else {
                        document.write("<br>");
                        document.write("${etatCarte}");
                        let input = document.createElement('input');
                        input.type = "checkbox";
                        input.onChange = "this.form.submit()";
                        input.name = "check";
                        input.textContent = "Hello, world!";
                        document.write("<input type='checkbox' onChange='this.form.submit()', name='check'>")
                    }
                    document.appendChild(input);
                </script>

                <!-- <input type="checkbox" onChange="this.form.submit()", name="check" checked="true"> -->
            </div>
        </form>

    </body>
</html>
