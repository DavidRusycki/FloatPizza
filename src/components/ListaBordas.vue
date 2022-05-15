<template>
    <div>
        <ListComponent :titulo="borda.titulo" :descricao="borda.descricao" v-for="(borda, indice) in bordas" :key="indice"/>
    </div>
</template>

<script>
import ListComponent from '@/components/ListComponent.vue'

export default {
  name: 'ListaBordas',
  data () {
    return {
      bordas: []
    }
  },
  mounted () {
    const bordas = {
      content: [
        { titulo: 'Chocolate Preto', descricao: 'Chocolate preto garoto derretido' },
        { titulo: 'Chocolate Branco', descricao: 'Chocolate branco garoto derretido' },
        { titulo: 'Chocolate Azul', descricao: 'Chocolate azul da mongolia derretido' }
      ]
    }
    this.bordas = bordas.content
  },
  components: {
    ListComponent
  }
}
</script>

<style scoped>

</style>
