<template>
    <div>
      <ListComponent :titulo="salgado.titulo" :descricao="salgado.descricao" v-for="(salgado, indice) in salgados" :key="indice"/>
    </div>
</template>

<script>
import ListComponent from '@/components/ListComponent.vue'

export default {
  name: 'ListaSalgados',
  data () {
    return {
      salgados: []
    }
  },
  mounted () {
    const salgados = {
      content: [
        { titulo: 'Portuguesa', descricao: 'Queijo, azeitona verde ou preta, ovo cozido, presunto cozido, cebola, ervilha, molho de tomate e azeite' },
        { titulo: 'Muçarela', descricao: 'Queijo, azeitona verde' },
        { titulo: 'Alho e óleo', descricao: 'Alho e muito oleo' }
      ]
    }
    this.salgados = salgados.content
  },
  components: {
    ListComponent
  }

}
</script>

<style scoped>

</style>
