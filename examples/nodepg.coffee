pg = require('pg')

constr = 'pg://ketema:@127.0.0.1:5432/ketema'

db = new pg.Client(constr)

db.connect()

db.query('LISTEN emails;')

db.on('notification', (notification) ->
    console.log(notification)
)

db.query("SELECT * FROM emails;", (err, result) ->
    console.log row for row in result.rows
)
