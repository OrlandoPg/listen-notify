pg = require('pg')
constr = 'pg://ketema:@localhost:5432/ketema'

db = new pg.Client(constr)

db.connect()
db.on('notification', (notification) ->
    console.log(notification)
)

db.query('LISTEN foo;', (err, result) ->
    if(err)
        console.log('Error: ' + err)

    console.log(result)
)

io = require('socket.io')
express = require('express')
app = express.createServer()
io = io.listen(app)

app.listen(8888)

io.sockets.on('connection', (socket) ->
    socket.emit('news', { hello: 'world' } )
    socket.on('other event', (data) ->
        console.log(data)
    )
)
