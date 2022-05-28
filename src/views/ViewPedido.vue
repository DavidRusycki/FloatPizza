<template>
  <div class="main-container">
    <CardFundoPizza/>
    <ItemList />
  </div>
</template>

<script>
import CardFundoPizza from '@/components/CardFundoPizza.vue'
import ItemList from '@/components/ItemList.vue'

export default {
  name: 'ViewPedido',
  components: {
    CardFundoPizza,
    ItemList
  }
}

</script>

<style scoped>

.main-container {
  margin-top: 2em;
  display: grid;
  grid-template-columns: 25% 75%
}

</style>
