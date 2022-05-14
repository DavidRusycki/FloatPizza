<template>
  <div class="card-tamanho-pizza" v-for="cardpizza in pizza" :key="cardpizza">
    <p>{{cardpizza.tamanho}}</p>
    <p>{{cardpizza.descricao}}</p>
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
  background-color: aqua;
  width: 250px;
  height: 180px;
}
p {
  color: blue;
}
</style>
