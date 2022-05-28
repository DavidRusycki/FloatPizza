<template>
  <div id="fundo-card-tamanho-pizza">
    <CardTamanhoPizza/>
  </div>
</template>

<script>
import CardTamanhoPizza from '@/components/CardTamanhoPizza.vue'

export default {
  name: 'CardFundoPizza',
  components: {
    CardTamanhoPizza
  }
}
</script>

<style scoped>
#fundo-card-tamanho-pizza{
  margin: 1%;
  margin-left: 3em;
  width: 350px;
  height: 650px;
  background-color: #ffffff;
  border-radius: 2%;
  display: grid;
  justify-items: center;
  align-content: center;
  font-size: 0.8em;
  font-family: 'Pt Sans', 'Helvetica';
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
