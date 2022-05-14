<template>
  <div class="card-tamanho-pizza" v-for="cardpizza in pizza" :key="cardpizza">
    <div class="dados-pizza">
      <span class="descricao-pizza">{{cardpizza.descricao}}</span>
      <img src="/img/icone.png" class="icone-pizza-padrao">
      <span class="tamanho-pizza">{{cardpizza.tamanho}}</span>
    </div>
  </div>
</template>

<script>
export default {
  name: 'CardTamanhoPizza',
  data () {
    return {
      pizza: [
        { tamanho: '20cm', descricao: 'Pequena' },
        { tamanho: '30cm', descricao: 'Média' },
        { tamanho: '45cm', descricao: 'Grande' }
      ]
    }
  }
}

</script>

<style scoped>
.card-tamanho-pizza {
  background-color: #ffffff;
  box-shadow:0 0 1em rgb(235, 235, 235);
  width: 250px;
  height: 180px;
  border-radius: 5%;
  margin: 1em;
}

.card-tamanho-pizza:active {
  background-color: #BC1E05;
  color: #ffffff;
  box-shadow:0 0 1em rgb(119, 119, 119);
}

.dados-pizza {
  padding: 5%;
  display: flex;
  flex-direction: column;
  align-items: center;
}

.descricao-pizza {
  font-size: 24px;
}

.tamanho-pizza {
  font-size: 18px;
}

.icone-pizza-padrao {
   width: 100px;
   height: 100px;
}
</style>
