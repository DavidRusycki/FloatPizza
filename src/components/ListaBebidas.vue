<script>
import ListComponent from '@/components/ListComponent.vue'

export default {
  name: 'ListaBebidas',
  extends: ListComponent,
  async mounted () {
    let bebidas = await fetch('http://localhost:8080/bebidas')
    bebidas = await bebidas.json()
    this.items = bebidas
  },
  methods: {
    getLocalStorage () {
      return localStorage.bebidas
    },
    setSelecionados () {
      localStorage.bebidas = JSON.stringify(this.selecionados)
      console.log(this.selecionados)
    },
    getCodigo (item) {
      return item.bebcodigo
    },
    getTitulo (item) {
      return item.bebdescricao
    },
    getDescricao (item) {
      return item.bebvalor
    }
  }
}
</script>

<style scoped>

</style>
