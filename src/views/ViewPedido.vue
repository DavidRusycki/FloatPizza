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
  display: grid;
  grid-template-columns: 1fr 1fr;
}

</style>
