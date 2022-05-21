<template>
    <LogoLink />
    <CarouselHome />
    <FooterRodape />
</template>

<script>
import CarouselHome from '@/components/CarouselHome.vue'
import FooterRodape from '@/components/FooterRodape.vue'

export default {
  name: 'ViewHome',
  components: {
    CarouselHome,
    FooterRodape
  }
}
</script>

<style scoped>

</style>
