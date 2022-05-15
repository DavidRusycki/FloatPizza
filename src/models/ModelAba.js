export class ModelAba {
  constructor (titulo, dados) {
    this.titulo = titulo
    this.dados = dados
  }

  getDados () {
    return this.dados
  }

  getTitulo () {
    return this.titulo
  }
}
