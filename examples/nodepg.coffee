pg = require('pg')

constr = 'pg://USER:PASSWORD@HOST:5432/DBNAME'

db = new pg.Client(constr)

db.connect()

db.query('LISTEN foo;')

db.on('notification', (notification) ->
    console.log(notification)
)
