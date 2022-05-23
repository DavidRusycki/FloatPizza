export class ModelSalgados {
  async getSalgados () {
    const { PrismaClient } = require('@prisma/client')
    const Prisma = new PrismaClient()
    const dados = await Prisma.tbsaborsalgado.findMany()
    return dados
  }

  getTitulo () {
    return this.titulo
  }
}
