<script>
import ListComponent from '@/components/ListComponent.vue'

export default {
  name: 'ListaBebidas',
  extends: ListComponent,
  mounted () {
    const bebidas = {
      content: [
        { codigo: 1, titulo: 'Cachaça', descricao: 'R$ 5.50' },
        { codigo: 2, titulo: 'Cerveja', descricao: 'R$ 5.50' },
        { codigo: 3, titulo: 'Coquinha', descricao: 'R$ 5.50' }
      ]
    }
    this.items = bebidas.content
  },
  methods: {
    getLocalStorage () {
      return localStorage.bebidas
    },
    setSelecionados () {
      localStorage.bebidas = JSON.stringify(this.selecionados)
      console.log(this.selecionados)
    }
  }
}
</script>

<style scoped>

</style>
