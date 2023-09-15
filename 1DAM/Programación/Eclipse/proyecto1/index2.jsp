<html>
    <head>
        <style>
            .dia{
                width: 100px;
                height: 100px;
                border: 1px solid black;
                float: left;   
            }
        </style>
        <link rel= "Stylesheet" href="miestilo.css">
    </head>
    <body>
        <h1 style= "color:red;">Calendario</h1>
            <%
                    for(int i = 1;i<=30;i++){
                        out.println("<div class='dia'>"+i+"</div>");
                    }
            %>
    </body>



</html> 