<script>
import ListComponent from '@/components/ListComponent.vue'

export default {
  name: 'ListaSalgados',
  extends: ListComponent,
  async mounted () {
    let salgados = await fetch('http://localhost:8080/salgados')
    salgados = await salgados.json()
    this.items = salgados
  },
  methods: {
    getLocalStorage () {
      return localStorage.salgados
    },
    setSelecionados () {
      localStorage.salgados = JSON.stringify(this.selecionados)
      console.log(this.selecionados)
    },
    getCodigo (item) {
      return item.sbscodigo
    },
    getTitulo (item) {
      return item.sbstitulo
    },
    getDescricao (item) {
      return item.sbsdescricao
    }
  }
}
</script>

<style scoped>

</style>
