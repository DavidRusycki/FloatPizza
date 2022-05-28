const express = require('express')
const App = express()
const Router = require('../router/router')
const cors = require('cors')

App.use(cors())
App.use(express.json())
App.use(Router)

App.listen(8080, () => {
  console.log('Server is correndo')
})
