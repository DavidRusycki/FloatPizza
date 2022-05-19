<script>
import ListComponent from '@/components/ListComponent.vue'

export default {
  name: 'ListaDoces',
  extends: ListComponent,
  mounted () {
    const doces = {
      content: [
        { codigo: 1, titulo: 'Mamamia', descricao: 'morango e chocolate' },
        { codigo: 2, titulo: 'Bananão', descricao: 'banana e chocolate' },
        { codigo: 3, titulo: 'Abacasado', descricao: 'abacaxi e leite condensado' }
      ]
    }
    this.items = doces.content
  }
}
</script>

<style scoped>

</style>
