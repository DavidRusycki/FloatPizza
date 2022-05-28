<template>
    <div>
      <ItemListComponent @click="click(this.getCodigo(item))" :codigo="this.getCodigo(item)" :titulo="this.getTitulo(item)" :descricao="this.getDescricao(item)" v-for="(item, indice) in items" :key="indice" :class="{'selecionado': isSelecionado(this.getCodigo(item))}"/>
    </div>
</template>

<script>
import ItemListComponent from '@/components/ItemListComponent.vue'

export default {
  name: 'ListComponent',
  data () {
    return {
      items: [],
      selecionados: []
    }
  },
  components: {
    ItemListComponent
  },
  methods: {
    click (codigo) {
      if (this.foiSelecionado(codigo)) {
        this.remove(codigo)
      } else {
        this.adiciona(codigo)
      }
      this.setSelecionados()
    },
    isSelecionado (codigo) {
      return this.foiSelecionado(codigo)
    },
    foiSelecionado (codigo) {
      return this.selecionados.indexOf(codigo) !== -1
    },
    adiciona (codigo) {
      this.selecionados.push(codigo)
    },
    remove (codigo) {
      const indice = this.selecionados.indexOf(codigo)
      this.selecionados.splice(indice, 1)
    },
    setSelecionados () {
      localStorage.selecionados = JSON.stringify(this.selecionados)
      console.log(this.selecionados)
    },
    getSelecionados () {
      return this.getLocalStorage()
    },
    getLocalStorage () {
      return localStorage.selecionados
    },
    getCodigo (item) {
      return item.codigo
    },
    getTitulo (item) {
      return item.titulo
    },
    getDescricao (item) {
      return item.descricao
    }
  },
  mounted () {
    if (this.getSelecionados() === 'undefined') {
      this.selecionados = []
    } else {
      this.selecionados = JSON.parse(this.getSelecionados())
    }
  }

}
</script>

<style scoped>

</style>
