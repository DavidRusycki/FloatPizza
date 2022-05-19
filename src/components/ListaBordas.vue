<script>
import ListComponent from '@/components/ListComponent.vue'

export default {
  name: 'ListaBordas',
  extends: ListComponent,
  mounted () {
    const bordas = {
      content: [
        { codigo: 1, titulo: 'Chocolate Preto', descricao: 'Chocolate preto garoto derretido' },
        { codigo: 2, titulo: 'Chocolate Branco', descricao: 'Chocolate branco garoto derretido' },
        { codigo: 3, titulo: 'Chocolate Azul', descricao: 'Chocolate azul da mongolia derretido' }
      ]
    }
    this.items = bordas.content
  }
}
</script>

<style scoped>

</style>
