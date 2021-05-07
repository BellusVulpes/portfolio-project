const express = require('express')
const bodyParser = require('body-parser')
const movies = require('./movies.js')

app.use(bodyParser.json())

const app = express()

app.all('*'), (request, response) => {
  return request.sendStatus(404)
}

app.listen(8080, () => {
  console.log('Listening on port 8080...') // eslint-disable-line no-console
})
