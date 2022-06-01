<template>
    <nav>
      <LogoLink />
      <router-link class="link" to="/">Home</router-link>
      <router-link class="link" to="/pedidos">Pedidos</router-link>
      <router-link class="link" to="/pedido">Pedido</router-link>
      <router-link class="link" to="/salgado">Salgado</router-link>
      <router-link class="link" to="/doce">Doces</router-link>
      <router-link class="link" to="/borda">Bordas</router-link>
      <router-link class="link" to="/bebidas">Bebidas</router-link>
      <router-link class="link" to="/endereco">Endereço</router-link>
  </nav>
</template>

<script>
import LogoLink from '@/components/LogoLink.vue'

export default {
  name: 'NavBar',
  components: {
    LogoLink
  }
}

</script>

<style scoped>

nav {
  display: flex;
  align-content: center;
  align-items: center;
  margin-top: 0;
  margin-top: 2vh;
}

.link {
  padding: 0 30px;
  font-family: 'Pt Sans', 'Helvetica';
  text-decoration: none;
  color: black;
  font-size: 1.5em;
}

.link:hover {
  color: #BC1E05;
  transition: 100ms;
}

.router-link-active {
  text-decoration: underline;
  color: #BC1E05;
}

@media(max-width: 1200px) {

}
</style>
