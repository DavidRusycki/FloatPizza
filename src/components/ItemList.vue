<template>
    <div>
        <div>
            <div class="abas">
                <span @click="updateAba(indice)" class="header-abas" v-for="(aba, indice) in abas" :key="indice">
                    {{aba}}
                </span>
            </div>
            <ListaSalgados v-if="selectedAba == 1"/>
            <ListaDoces v-if="selectedAba == 2" />
            <ListaBordas v-if="selectedAba == 3" />
            <ListaBebidas v-if="selectedAba == 4" />
        </div>
    </div>
</template>

<script>
import ListaSalgados from '@/components/ListaSalgados.vue'
import ListaDoces from '@/components/ListaDoces.vue'
import ListaBordas from '@/components/ListaBordas.vue'
import ListaBebidas from '@/components/ListaBebidas.vue'

export default {
  name: 'ItemList',
  data () {
    return {
      components: [],
      abas: [],
      selectedAba: 0
    }
  },
  methods: {
    getAbas () {
      const abas = []
      abas[1] = 'Salgados'
      abas[2] = 'Doces'
      abas[3] = 'Bordas'
      abas[4] = 'Bebidas'

      return abas
    },
    addComponent (componente) {
      this.components.push(componente)
    },
    getJsonSalgados () {
      const salgados = {
        content: [
          { titulo: 'Portuguesa', descricao: 'Queijo, azeitona verde ou preta, ovo cozido, presunto cozido, cebola, ervilha, molho de tomate e azeite' },
          { titulo: 'Muçarela', descricao: 'Queijo, azeitona verde' },
          { titulo: 'Alho e óleo', descricao: 'Alho e muito oleo' }
        ]
      }

      return salgados
    },
    updateAba (indice) {
      this.selectedAba = indice
    }
  },
  mounted () {
    this.abas = this.getAbas()
  },
  components: {
    ListaSalgados,
    ListaDoces,
    ListaBordas,
    ListaBebidas
  }
}
</script>

<style scoped>

.header-abas {
    margin-left: 10px;
}

</style>
