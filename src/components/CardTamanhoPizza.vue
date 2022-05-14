<template>
  <div class="card-tamanho-pizza" v-for="cardpizza in pizza" :key="cardpizza">
    <span>{{cardpizza.descricao}}</span>
    <img src="/img/icone.png" class="icone-pizza-padrao">
    <span>{{cardpizza.tamanho}}</span>
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
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: space-between;
}

.card-tamanho-pizza:hover {
  background-color: #BC1E05;
  color: #ffffff;
  box-shadow:0 0 1em rgb(119, 119, 119);
  transition: 100ms;
}

.icone-pizza-padrao {
   width: 100px;
   height: 100px;
}
</style>
