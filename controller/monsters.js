const monsters = require('../monsters')

const getAllMonsters = (request, response) => {
  return response.send(monsters)
}

const getMonsterById = (request, response) => {
  const { id } = request.params

  const matchingMonsters = monsters.find((team) => team.id === parseInt(id))

  return matchingMonsters
    ? response.send(matchingMonsters)
    : response.sendStatus(404)
}

const getNextId = () => {
  const lastId = monsters.reduce((acc, monster) => {
    return monster.id > acc ? monster.id : acc
  }, 0)

  return lastId + 1
}

const saveNewMonster = (request, response) => {
  const {
    name, classification, elements, habitat, generation
  } = request.body

  if (!name || !classification || !elements || !habitat || !generation) {
    return response
      .status(400)
      .send('The following fields are required: name, classification, elements, habitat, generation')
  }

  const newMonster = {
    name, classification, elements, habitat, generation, id: getNextId()
  }

  monsters.push(newMonster)

  return response.status(201).send(newMonster)
}

module.exports = { getAllMonsters, getMonsterById, saveNewMonster }
