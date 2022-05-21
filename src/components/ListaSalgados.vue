<script>
import ListComponent from '@/components/ListComponent.vue'

export default {
  name: 'ListaSalgados',
  extends: ListComponent,
  mounted () {
    const salgados = {
      content: [
        { codigo: 1, titulo: 'Portuguesa', descricao: 'Queijo, azeitona verde ou preta, ovo cozido, presunto cozido, cebola, ervilha, molho de tomate e azeite' },
        { codigo: 2, titulo: 'Muçarela', descricao: 'Queijo, azeitona verde' },
        { codigo: 3, titulo: 'Alho e óleo', descricao: 'Alho e muito oleo' }
      ]
    }
    this.items = salgados.content
  },
  methods: {
    getLocalStorage () {
      return localStorage.salgados
    },
    setSelecionados () {
      localStorage.salgados = JSON.stringify(this.selecionados)
      console.log(this.selecionados)
    }
  }
}
</script>

<style scoped>

</style>
