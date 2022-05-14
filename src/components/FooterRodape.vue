<template>
  <footer id="footer">
    <div class="content-footer">
      <div class="content-logo">
        <img class="logo-pizza" src="/img/pizza_black.png">
      </div>
      <div class="content-title">
        <span class="title-pizza-float">PizzaFloat</span>
      </div>
      <div class="content-copy">
        <p class="copy">&copy; 2022 - Todos os direitos reservados a PizzaFloat | By David ASM Rusicky and Samuel S Chiodini.</p>
      </div>
    </div>
  </footer>
</template>

<script>

export default {
  name: 'FooterRodape'
}

</script>

<style scoped>
#footer{
  background: linear-gradient(90deg, rgba(255,204,3,1) 0%, rgba(238,78,35,1) 50%) !important;
  /* background: rgba(240,121,61,1); */
  width: 100%;
  height: 150px;
  position: absolute;
  right: 0;
  bottom: 0;
  left: 0;
}

.content-footer{
  display: grid;
  grid-template-columns: 1fr 1fr;
  grid-template-rows: 80% 20%;
  align-content: center;
  justify-items: center;
  height: 100%;
}

.content-logo{
  width: 100%;
  display: flex;
  justify-content: flex-end;
  align-items: center;
}

.logo-pizza{
  width: 80px;
  height: 80px;
}

.content-title{
  width: 100%;
  display: flex;
  align-items: center;
}

.title-pizza-float{
  font-size: 2em;
  font-family: 'Pt Sans', 'Helvetica';
  color: /*rgba(188,30,5,1)*/ black;
}

.content-copy{
  grid-row-start: 2;
  grid-row-end: 3;
  grid-column-start: 1;
  grid-column-end: 3;
  display: flex;
  align-items: center;
  justify-content: center;
  width: 100%;
  height: 100%;
  /* background-color: rgb(241 110 45); */
  color: black;
}

.copy{
  font-size: 0.8em;
  font-family: 'Pt Sans', 'Helvetica';
  color: rgba(188,30,5,1) ;
}
</style>
