<template>
    <main-page></main-page>
</template>

<script>
import MainPage from './pages/Main.vue';

export default {
  name: "App",
  components: {
    MainPage,
  },
};
</script>

<style lang="scss">
  * {
    padding: 0;
    margin: 0;
    box-sizing: border-box;
  }

  body {
    font-family: 'Quicksand', sans-serif;
    a {
      text-decoration: none;
      color: black;
    }
  }
</style>