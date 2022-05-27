<template>
<div class="container">
  <div class="main-container">
    <CardFundoPizza/>
    <ItemList />
  </div>
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
  align-items: center;
  grid-template-columns: 35% 65%
}

</style>
