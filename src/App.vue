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

  .container.large {
    padding: 0px 100px;
  }

  .container.medium {
    padding: 0px 200px;
  }

  .container.small {
    padding: 0px 300px;
  }
</style>