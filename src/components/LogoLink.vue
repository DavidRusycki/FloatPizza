<template>
    <a class="HomeLink" href="/">
      <div class="container-logo">
        <img class="logo" src="/img/pizza.png" alt="Icone de Pizza">
        <span class="titulo">
          PizzaFloat
        </span>
      </div>
    </a>
</template>

<script>

export default {
  name: 'LogoLink'
}

</script>

<style scoped>

.logo {
  width: 4em;
  transform: rotate(180deg);
  padding-left: 1em;
}

.container-logo {
  display: flex;
  align-items: center;
}

.titulo {
  font-size: 2em;
  font-family: 'Pt Sans', 'Helvetica';
  color: black;
  padding-right: 50px;
  text-decoration: none !important;
}

.HomeLink {
  padding: 0 30px;
  font-family: 'Pt Sans', 'Helvetica';
  text-decoration: none;
  color: black;
  font-size: 1.5em;
}

</style>
