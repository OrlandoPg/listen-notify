<html>
    <head>
        <title>Listen/Notify Demo</title>
        <script src="extras/jquery-1.6.3.min.js"></script> 
        <script src="extras/coffee-script.js"></script> 
        <script src="http://127.0.0.1:8888/socket.io/socket.io.js"></script>
    </head>
    <body>
        <script type="text/coffeescript">
            $(document).ready( ->
                $("body").append('This is dynamic text from CoffeeScript<br>')
                explanation = '''
                                This Demo has 3 main components.
                                1) This html page.  This is the client.<br>
                                2) The database. Accepts registrations and send notifications<br>
                                   The examples were made using Pg 9.1+
                                3) The middleware: A server based nodejs script that connects<br> 
                                   to the data and provides a socket for the client to listen<br>
                                   on for the notifications.<br>
                              '''
                $("body").append(explanation)
            )
            socket = io.connect('http://127.0.0.1:8888')
            socket.on('news', (data) ->
                console.log(data)
                socket.emit('other event', { my: 'data from client' })
            )
        </script>
    </body>
</html>
