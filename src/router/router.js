const express = require('express')
const Router = express()

const { PrismaClient } = require('@prisma/client')
const Prisma = new PrismaClient()

Router.get('/salgados', async (req, res) => {
  const dados = await Prisma.tbsaborsalgado.findMany()

  res.send(dados)
})

Router.post('/salgados/inserir', async (req, res) => {
  const { titulo, descricao } = req.body
  const post = await Prisma.tbsaborsalgado.create({
    data: {
      sbsdescricao: descricao,
      sbstitulo: titulo
    }
  })
  res.json(post)
})

Router.post('/salgados/deletar', async (req, res) => {
  const { id } = req.body
  const post = await Prisma.tbsaborsalgado.delete({
    where: {
      sbscodigo: id
    }
  })
  res.json(post)
})

Router.get('/doces', async (req, res) => {
  const dados = await Prisma.tbsabordoce.findMany()

  res.send(dados)
})

Router.post('/doces/inserir', async (req, res) => {
  const { titulo, descricao } = req.body
  const post = await Prisma.tbsabordoce.create({
    data: {
      sbddescricao: descricao,
      sbdtitulo: titulo
    }
  })
  res.json(post)
})

Router.get('/bordas', async (req, res) => {
  const dados = await Prisma.tbborda.findMany()

  res.send(dados)
})

Router.post('/bordas/inserir', async (req, res) => {
  const { titulo, descricao } = req.body
  const post = await Prisma.tbborda.create({
    data: {
      bordescricao: descricao,
      bortitulo: titulo
    }
  })
  res.json(post)
})

Router.get('/bebidas', async (req, res) => {
  const dados = await Prisma.tbbebida.findMany()

  res.send(dados)
})

Router.post('/bebidas/inserir', async (req, res) => {
  const { titulo, descricao } = req.body
  const post = await Prisma.tbbebida.create({
    data: {
      bebdescricao: titulo,
      bebvalor: descricao
    }
  })
  res.json(post)
})

module.exports = Router
