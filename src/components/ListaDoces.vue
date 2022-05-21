<script>
import ListComponent from '@/components/ListComponent.vue'

export default {
  name: 'ListaDoces',
  extends: ListComponent,
  mounted () {
    const doces = {
      content: [
        { codigo: 2, titulo: 'Mamamia', descricao: 'morango e chocolate' },
        { codigo: 5, titulo: 'Bananão', descricao: 'banana e chocolate' },
        { codigo: 3, titulo: 'Abacasado', descricao: 'abacaxi e leite condensado' },
        { codigo: 4, titulo: 'Abacati', descricao: 'abate e abacaxi' },
        { codigo: 4, titulo: 'ACATABI', descricao: 'abate e abacaxi' }
      ]
    }
    this.items = doces.content
  },
  methods: {
    getLocalStorage () {
      return localStorage.doces
    },
    setSelecionados () {
      localStorage.doces = JSON.stringify(this.selecionados)
      console.log(this.selecionados)
    }
  }
}
</script>

<style scoped>

</style>
