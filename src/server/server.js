const express = require('express')
const App = express()
const Router = require('../router/router')

App.use(Router)

App.listen(8080, () => {
  console.log('Server is correndo')
})
