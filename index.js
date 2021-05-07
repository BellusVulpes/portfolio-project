const express = require('express')
const bodyParser = require('body-parser')
const { getAllMonsters, getMonsterById, saveNewMonster } = require('./controller/monsters')

app.use(bodyParser.json())

const app = express()

app.get('/', getAllMonsters)

app.get('/:id', getMonsterById)

app.post('/', bodyParser.json(), saveNewMonster)

app.all('*'), (request, response) => {
  return request.sendStatus(404)
}

app.listen(8080, () => {
  console.log('Listening on port 8080...') // eslint-disable-line no-console
})
