<template>
    <div>
        <div class="lista">
            <div class="abas">
                <span @click="updateAba(indice)" class="header-abas" v-for="(aba, indice) in abas" :key="indice">
                  {{aba}}
                </span>
            </div>
            <ListaSalgados v-if="selectedAba == 0"/>
            <ListaDoces v-if="selectedAba == 1" />
            <ListaBordas v-if="selectedAba == 2" />
            <ListaBebidas v-if="selectedAba == 3" />
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
      abas[0] = 'Salgados'
      abas[1] = 'Doces'
      abas[2] = 'Bordas'
      abas[3] = 'Bebidas'

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
  width: 100%;
}

.header-abas:hover {
  background-color: #e8b80c;
}

.header-abas:active {
  background-color: #C59C0E;
}

.lista {
  border-radius: 12px;
  box-shadow: 0px 0px 1em rgb(219, 219, 219);
  padding: 1em 2em;
}

.abas {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr 1fr;
  background-color: #FDC80D;
  padding: 0.5em;
  border-radius: 20px;
  text-align: center;
}

.selected {
  background-color: #C59C0E;
}

</style>
