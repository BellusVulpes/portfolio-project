const express = require('express')
const bodyParser = require('body-parser')
const { getAllMonsters, getMonsterById, monsterData, saveNewMonster } = require('./controller/monsters')

const app = express()

app.get('/', getAllMonsters)

app.get('/:id', getMonsterById)

app.get('/monsters/:monsterData', monsterData)

app.post('/', bodyParser.json(), saveNewMonster)

app.all('*'), (request, response) => {
  return request.sendStatus(404)
}

app.listen(8080, () => {
  console.log('Listening on port 8080...') // eslint-disable-line no-console
})
