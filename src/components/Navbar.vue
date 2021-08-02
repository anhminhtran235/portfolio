<template>
  <div class="container large">
    <nav class="nav-container">
      <h2 class="logo">Anh Minh</h2>
      <ul class="nav" :class="{ 'nav-mobile': classToggle }">
        <li>
          <a href="#work-experience" class="nav-link">Experience</a>
        </li>
        <li>
          <a href="#personal-projects" class="nav-link">Projects</a>
        </li>
        <li>
          <a href="#about" class="nav-link">About</a>
        </li>
        <li>
          <a href="#my-contact" class="nav-link-special">Say Hello</a>
        </li>
      </ul>
      <button class="nav-mobile-hamburger" :class="{ clicked: classToggle }" @click="navToggle"></button>
    </nav>
  </div>
</template>

<script>
export default {
  data() {
    return {
      classToggle: false,
    };
  },
  methods: {
    navToggle() {
      this.classToggle = !this.classToggle;
    },
  },
};
</script>

<style scoped lang="scss">
@import "../styles/_variables.scss";

.nav-container {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 30px 0px;

  .logo {
    font-size: 45px;
    font-family: "Dancing Script", cursive;
    font-weight: 100;
    background: linear-gradient(to right, $orange 0%, $orange 5px, transparent 5px);
    background-repeat: repeat-x;
    background-size: 100%;
    color: $purple;
    padding-left: 15px;
    text-decoration: none;

    &:hover {
      cursor: pointer;
      background: linear-gradient(to right, $orange 0%, $orange 5px, transparent);
    }
  }
  .nav-mobile {
    max-height: 100% !important;
    padding: 32px;
  }
  .nav-mobile-hamburger {
    background: transparent;
    border: none;
    display: none;
    outline: none;
    @media screen and (max-width: 1020px) {
      display: block;
      width: 30px;
      height: 30px;
      position: relative;
      &:after {
        position: absolute;
        bottom: 4px;
        transition: all 0.3s;
        content: "";
        display: block;
        width: 30px;
        height: 1px;
        border-top: 2px solid black;
      }
      &:before {
        transition: all 0.3s;
        position: absolute;
        top: 4px;
        content: "";
        display: block;
        width: 30px;
        height: 1px;
        border-top: 2px solid black;
      }
    }
  }
  .clicked {
    &:after {
      bottom: 16px;
      transform: rotate(-45deg);
    }
    &:before {
      top: 12px;
      transform: rotate(45deg);
    }
  }
  .nav {
    display: flex;
    list-style: none;
    @media screen and (max-width: 1020px) {
      background: white;
      flex-direction: column;
      align-items: center;
      gap: 24px;
      position: absolute;
      left: 50%;
      top: 90px;
      width: 100%;
      transform: translateX(-50%);
      box-shadow: 1px 3px 2px rgba(0, 0, 0, 0.1);
      max-height: 0px;
      overflow: hidden;
      transition: 0.3s all;
    }

    .nav-link,
    .nav-link-special {
      font-size: 18px;
    }

    .nav-link {
      padding: 8px 12px;

      &:hover {
        cursor: pointer;
        color: $purple;
      }
    }

    .nav-link-special {
      padding: 6px 15px;
      font-size: 20px;
      margin-left: 5px;
      border-color: $purple;
      border: 2px solid $purple;
      border-radius: 290486px;

      &:hover {
        cursor: pointer;
        background: $purple;
        color: white;
        transition: 0.2s ease-out;
      }
    }
  }
}
</style>
