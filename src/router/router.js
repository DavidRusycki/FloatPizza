const express = require('express')
const Router = express()

Router.get('/salgados', async (req, res) => {
  const { PrismaClient } = require('@prisma/client')
  const Prisma = new PrismaClient()
  const dados = await Prisma.tbsaborsalgado.findMany()

  res.send(dados)
})

Router.get('/salgados/inserir', async (req, res) => {
  console.log(req.body)

  const { PrismaClient } = require('@prisma/client')
  const Prisma = new PrismaClient()
  const dados = await Prisma.tbsaborsalgado.create(
    {}
  )

  res.send(dados)
})

Router.get('/doces', async (req, res) => {
  const { PrismaClient } = require('@prisma/client')
  const Prisma = new PrismaClient()
  const dados = await Prisma.tbsabordoce.findMany()

  res.send(dados)
})

Router.get('/bordas', async (req, res) => {
  const { PrismaClient } = require('@prisma/client')
  const Prisma = new PrismaClient()
  const dados = await Prisma.tbborda.findMany()

  res.send(dados)
})

Router.get('/bebidas', async (req, res) => {
  const { PrismaClient } = require('@prisma/client')
  const Prisma = new PrismaClient()
  const dados = await Prisma.tbbebidas.findMany()

  res.send(dados)
})

module.exports = Router
