<template>
    <div>
        <div class="lista">
            <div class="abas">
                <span @click="updateAba(indice)" :class="{'primeiro': isPrimeiro(indice),'header-abas': true, 'ultimo': isUltimo(indice), 'selected': isClicked(indice)}" v-for="(aba, indice) in abas" :key="indice">
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
    updateAba (indice) {
      this.selectedAba = indice
    },
    isPrimeiro (indice) {
      let retorno = false
      if (indice === 0) {
        retorno = true
      }
      return retorno
    },
    isUltimo (indice) {
      let retorno = false
      if (indice === 3) {
        retorno = true
      }
      return retorno
    },
    isClicked (indice) {
      if (indice === this.selectedAba) {
        return true
      }
      return false
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
  border-radius: 10%;
  top: 6.5em;
  position: absolute;
}

.selected {
  background-color: #C59C0E !important;
}

.header-abas {
  background-color: #FDC80D;
  padding: 0.5em 2em;
  color: white;
  font-weight: bold;
  font-family: PT Sans;
}

.primeiro {
  border-radius: 20px 0 0 20px;
}

.ultimo {
  border-radius: 0 20px 20px 0;
}

</style>
