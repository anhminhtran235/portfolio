<template>
  <div class="container medium">
    <section class="hero">
      <div class="hero-body">
        <h1>{{ currentText }}</h1>
        <p>I love solving hard coding problems</p>
      </div>
      <div class="hero-foot">
        <img src="../assets/avatar-vector.svg" alt="Anh Minh Tran vector avatar" />
      </div>
    </section>
  </div>
</template>

<script>
export default {
  data() {
    return {
      headerText: "Hello, my name is Minh!",
      currentText: "H",
      waitMilliseconds: 100,
    };
  },
  methods: {
    typeEffect() {
      if (this.currentText.length === this.headerText.length) {
        this.currentText = "";
      }

      this.currentText = this.headerText.substring(0, this.currentText.length + 1);

      if (this.currentText.length !== this.headerText.length) {
        setTimeout(() => this.typeEffect(), this.waitMilliseconds);
      }
    },
  },
  mounted() {
    this.typeEffect();
  },
};
</script>

<style scoped lang="scss">
.hero {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  padding: 30px 0px;

  .hero-body {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;

    h1 {
      font-size: 45px;
      margin-bottom: 10px;
      text-align: center;
      @media screen and (max-width: 600px) {
        font-size: 32px;
      }
    }

    p {
      font-size: 20px;
      margin-bottom: 20px;
      @media screen and (max-width: 600px) {
        font-size: 18px;
        text-align: center;
      }
    }
  }

  .hero-foot {
    margin: 40px 0px;
  }
}
</style>
