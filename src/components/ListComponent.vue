<template>
    <div>
      <ItemListComponent @click="click(item.codigo)" :codigo="item.codigo" :titulo="item.titulo" :descricao="item.descricao" v-for="(item, indice) in items" :key="indice" :class="{'selecionado': isSelecionado(item.codigo)}"/>
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
      localStorage.selecionados = JSON.stringify(this.selecionados)
      console.log(localStorage.selecionados)
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
    }
  },
  mounted () {
    this.selecionados = JSON.parse(localStorage.selecionados)
  }

}
</script>

<style scoped>

</style>
