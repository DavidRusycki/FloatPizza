<template>
  <div>
    <div class="main-formulario">
      <form action="" id="Doces-form" @submit="createDoce">
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
          <input type="submit" class="submit-btn" value="Adicionar Doce" />
        </div>
      </form>

      <div>
        <ul>
          <li :key="Doce.sbscodigo" v-for="Doce in this.Doces">{{Doce.sbdtitulo}}
            <button @click="deleteDoce(Doce)">Excluir</button>
          </li>
        </ul>
      </div>

    </div>
  </div>
</template>

<script>
import axios from '@/server/axios.js'

export default {
  name: 'ViewDoce',
  data () {
    return {
      titulo: null,
      descricao: null,
      Doces: {}
    }
  },
  methods: {
    createDoce (event) {
      event.preventDefault()
      axios
        .post('http://localhost:8080/doces/inserir', {
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
    deleteDoce (Doce) {
      const indice = this.Doces.indexOf(Doce)
      this.Doces.splice(indice, 1)

      axios
        .post('http://localhost:8080/doces/deletar', {
          id: Doce.sbscodigo
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
    let Doces = await fetch('http://localhost:8080/doces')
    Doces = await Doces.json()
    this.Doces = Doces
    console.log(this.Doces)
  }
}
</script>

<style scoped>
</style>
