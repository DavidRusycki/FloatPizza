<template>
    <div class="item-lista">
      <h2>{{titulo}}:</h2>
      <span class="descricao">{{descricao}}</span>
    </div>
</template>

<script>

export default {
  name: 'ListComponent',
  props: {
    titulo: String,
    descricao: String
  }
}

</script>

<style scoped>

.item-lista {
  display: flex;
  align-items: center;
  padding: 0.5em 2em;
  border-radius: 12px;
  box-shadow: 0px 0px 1em rgb(219, 219, 219);
  margin-top: 1em;
}

.descricao {
  margin-left: 1em;
}

.item-lista:active {
  background-color: #BC1E05 !important;
  color: white;
}

.item-lista:hover {
  background-color: #ebebeb;
}

</style>
