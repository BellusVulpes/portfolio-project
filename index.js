const express = require('express')
const bodyParser = require('body-parser')
const { monsterClassification, saveNewMonster } = require('./controller/monsters')
const monsters = require('./monsters')

const app = express()

app.set('view engine', 'pug')

app.use(express.static('public'))

app.get('/', (request, response) => {
  response.render('index', { monsters })
})

app.get('/monsters/:monsterClassification', monsterClassification)

app.post('/monsters/:monsterClassification', bodyParser.json(), saveNewMonster)

app.all('*'), (request, response) => {
  return request.sendStatus(404)
}

app.listen(8080, () => {
  console.log('Listening on port 8080...') // eslint-disable-line no-console
})
