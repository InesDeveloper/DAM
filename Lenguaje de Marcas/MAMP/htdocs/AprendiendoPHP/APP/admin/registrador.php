<html>
    <head>
        <script src="../lib/jquery-3.6.1.min.js"></script>
        <script>
            $(document).ready({
                $(document).mousemove(function(e){
                    $("#contenedor").html(e.pageX+","+e.pageY)
                })
            })
            
        </script>
    </head>
    <body>
        <div id="contenedor"></div>
    </body>
</html>