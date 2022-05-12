<template>
  <NavBar />
  <router-view/>
  <FooterRodape />
</template>

<script>
import NavBar from '@/components/NavBar.vue'
import FooterRodape from '@/components/FooterRodape.vue'

export default {
  name: 'app',
  components: {
    NavBar,
    FooterRodape
  }
}
</script>

<style>

</style>
