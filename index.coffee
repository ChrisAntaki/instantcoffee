#!/usr/bin/env coffee

# Includes.
url = require('url')
express = require('express')

# Start server.
app = express()
port = process.env.PORT || 8000
app.listen(port)
app.use(express.static(__dirname + '/public'))
process.stdout.write "Server live on port #{port}...\n"

# # # # #
# Routes #
# # # # # #

# Say 'Hello'.
app.get '/hello', (req, res)->
    res.send('Hello')
