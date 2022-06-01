<template>
  <div class="container">
    <div class="main-formulario">
      <form action="" id="salgados-form" @submit="createSalgado">
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
          <input type="submit" class="submit-btn" value="Adicionar Salgado" />
        </div>
      </form>

      <div>
        <ul>
          <li :key="salgado.sbscodigo" v-for="salgado in this.salgados">{{salgado.sbstitulo}}
            <button @click="deleteSalgado(salgado)">Excluir</button>
          </li>
        </ul>
      </div>

    </div>
  </div>
</template>

<script>
import axios from '@/server/axios.js'

export default {
  name: 'ViewSalgado',
  data () {
    return {
      titulo: null,
      descricao: null,
      salgados: {}
    }
  },
  methods: {
    createSalgado (event) {
      event.preventDefault()
      axios
        .post('http://localhost:8080/salgados/inserir', {
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
    deleteSalgado (salgado) {
      const indice = this.salgados.indexOf(salgado)
      this.salgados.splice(indice, 1)

      axios
        .post('http://localhost:8080/salgados/deletar', {
          id: salgado.sbscodigo
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
    let salgados = await fetch('http://localhost:8080/salgados')
    salgados = await salgados.json()
    this.salgados = salgados
    console.log(this.salgados)
  }
}
</script>

<style scoped>
.main-formulario{
  display: flex;
  justify-content: center;
}
form{
  display: flex;
  flex-direction: row;
  justify-content: center;
}

</style>
