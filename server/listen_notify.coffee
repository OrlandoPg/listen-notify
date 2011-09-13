pg = require('pg')

app = require('express').createServer()

io = require('socket.io').listen(app)

DSN = 'pg://al_the_x:@localhost:5432/al_the_x'

pg.connect DSN, (error, client) ->
    console.log(error) if error

    client.query('LISTEN foo')

    client.on 'notification', ( message ) ->
        console.log message

io.sockets.on('connection', (socket) ->
    socket.emit('news', { hello: 'world' } )
    socket.on('other event', (data) ->
        console.log(data)
    )
)

app.listen(8888)
