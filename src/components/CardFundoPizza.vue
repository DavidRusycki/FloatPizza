<template>
  <div id="fundo-card-tamanho-pizza">
  </div>
</template>

<script>
export default {
  name: 'CardFundoPizza'
}
</script>

<style scoped>
#fundo-card-tamanho-pizza{
  margin: 1%;
  width: 350px;
  height: 650px;
  background-color: #ffffff;
  box-shadow:0 0 1em rgb(219, 219, 219);
  border-radius: 2%;
  display: grid;
}

@media(max-width: 1200px) {
 #fundo-card-tamanho-pizza{
  width: 350px;
  height: 550px;
 }
}
@media(max-width: 1024px) {
 #fundo-card-tamanho-pizza{
  width: 350px;
  height: 440px;
 }
}
</style>
