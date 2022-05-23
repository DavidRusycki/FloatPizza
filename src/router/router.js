const express = require('express')
const Router = express()
const ModelAba = require('../models/ModelAba')

Router.get('/salgados', async (req, res) => {
  const oModel = new ModelAba('asdf', 'asdf')
  res.send(oModel)
})

module.exports = Router
