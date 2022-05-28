<script>
import ListComponent from '@/components/ListComponent.vue'

export default {
  name: 'ListaBordas',
  extends: ListComponent,
  async mounted () {
    let bordas = await fetch('http://localhost:8080/bordas')
    bordas = await bordas.json()
    this.items = bordas
  },
  methods: {
    getLocalStorage () {
      return localStorage.bordas
    },
    setSelecionados () {
      localStorage.bordas = JSON.stringify(this.selecionados)
      console.log(this.selecionados)
    },
    getCodigo (item) {
      return item.borcodigo
    },
    getTitulo (item) {
      return item.bortitulo
    },
    getDescricao (item) {
      return item.bordescricao
    }
  }
}
</script>

<style scoped>

</style>
