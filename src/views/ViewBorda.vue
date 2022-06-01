<template>
  <div>
    <div class="main-formulario">
      <form action="" id="Bordas-form" @submit="createBorda">
        <div class="input-container">
          <label for="titulo">Titulo :</label>
          <input
            required
            type="text"
            name="titulo"
            id="titulo"
            v-model="titulo"
            placeholder="Digite o titulo"
          />
        </div>
        <div class="input-container">
          <label for="descricao">Descrição :</label>
          <input
            required
            type="text"
            name="descricao"
            id="descricao"
            v-model="descricao"
            placeholder="Digite a descricao"
          />
        </div>
        <div class="input-container">
          <input type="submit" class="submit-btn" value="Adicionar Borda" />
        </div>
      </form>

      <div>
        <ul>
          <li :key="Borda.borcodigo" v-for="Borda in this.Bordas">{{Borda.bortitulo}}
            <button @click="deleteBorda(Borda)">Excluir</button>
          </li>
        </ul>
      </div>

    </div>
  </div>
</template>

<script>
import axios from '@/server/axios.js'

export default {
  name: 'ViewBorda',
  data () {
    return {
      titulo: null,
      descricao: null,
      Bordas: {}
    }
  },
  methods: {
    createBorda (event) {
      event.preventDefault()
      axios
        .post('http://localhost:8080/bordas/inserir', {
          titulo: this.titulo,
          descricao: this.descricao
        })
        .then(function (response) {
          console.log(response)
        })
        .catch(function (error) {
          console.error(error)
        })
      this.titulo = null
      this.descricao = null
    },
    deleteBorda (Borda) {
      const indice = this.Bordas.indexOf(Borda)
      this.Bordas.splice(indice, 1)

      axios
        .post('http://localhost:8080/bordas/deletar', {
          id: Borda.borcodigo
        })
        .then(function (response) {
          console.log(response)
        })
        .catch(function (error) {
          console.error(error)
        })
    }
  },
  async mounted () {
    let Bordas = await fetch('http://localhost:8080/bordas')
    Bordas = await Bordas.json()
    this.Bordas = Bordas
    console.log(this.Bordas)
  }
}
</script>

<style scoped>
</style>
