<template>
  <main-page></main-page>
</template>

<script>
import MainPage from "./pages/Main.vue";

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

html {
  scroll-behavior: smooth;
  overflow-x: hidden;
}

body {
  font-family: "Quicksand", sans-serif;
  background: #fcfcfc;
  overflow-x: hidden;
  a {
    text-decoration: none;
    color: black;
  }
}

.container.large {
  padding: 0px 100px;
  max-width: 1500px;
  margin: auto;
  @media screen and (max-width: 1020px) {
    padding: 0px 10px;
  }
}

.container.medium {
  padding: 0px 200px;
  @media screen and (max-width: 1020px) {
    padding: 0px 10px;
  }
}

.container.small {
  padding: 0px 300px;
  @media screen and (max-width: 1020px) {
    padding: 0px 10px;
  }
}
</style>
