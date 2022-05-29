<script>
import ListComponent from '@/components/ListComponent.vue'

export default {
  name: 'ListaDoces',
  extends: ListComponent,
  async mounted () {
    let doces = await fetch('http://localhost:8080/doces')
    doces = await doces.json()
    this.items = doces
  },
  methods: {
    getLocalStorage () {
      return localStorage.doces
    },
    setSelecionados () {
      localStorage.doces = JSON.stringify(this.selecionados)
      console.log(this.selecionados)
    },
    getCodigo (item) {
      return item.sbscodigo
    },
    getTitulo (item) {
      return item.sbdtitulo
    },
    getDescricao (item) {
      return item.sbddescricao
    }
  }
}
</script>

<style scoped>

</style>
