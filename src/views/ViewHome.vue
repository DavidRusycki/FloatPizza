<template>
    <NavBar />
    <LogoLink />
    <FooterRodape />
</template>

<script>
import NavBar from '@/components/NavBar.vue'
import FooterRodape from '@/components/FooterRodape.vue'

export default {
  name: 'ViewHome',
  components: {
    NavBar,
    FooterRodape
  }
}

</script>

<style scoped>

</style>
