<template>
    <div>
        <ListComponent :titulo="doce.titulo" :descricao="doce.descricao" v-for="(doce, indice) in doces" :key="indice"/>
    </div>
</template>

<script>
import ListComponent from '@/components/ListComponent.vue'

export default {
  name: 'ListaDoces',
  data () {
    return {
      doces: []
    }
  },
  mounted () {
    const doces = {
      content: [
        { titulo: 'Mamamia', descricao: 'morango e chocolate' },
        { titulo: 'Bananão', descricao: 'banana e chocolate' },
        { titulo: 'Abacasado', descricao: 'abacaxi e leite condensado' }
      ]
    }
    this.doces = doces.content
  },
  components: {
    ListComponent
  }
}
</script>

<style scoped>

</style>
