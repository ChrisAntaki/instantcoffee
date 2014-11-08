#!/usr/bin/env coffee

# Includes.
url = require('url')
express = require('express')

# Start server.
app = express()
port = process.env.PORT || 8000
app.listen(port)

# Serve static files.
app.use(express.static(__dirname + '/public'))

# Parse POST parameters.
app.use(require('body-parser')())

process.stdout.write "Server live on port #{port}...\n"

# # # # #
# Routes #
# # # # # #

# Say 'Hello'.
app.get '/hello', (req, res)->
    res.send('Hello')
