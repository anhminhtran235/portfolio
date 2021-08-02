<template>
  <div class="wrapper" id="my-contact">
    <div class="contact-box">
      <h2>Questions?</h2>
      <p>If you have any questions about my experience, feel free to reach out to me via email.</p>
      <div class="personal-info">
        <img src="../../assets/avatar.jpg" alt="Avatar" />
        <div class="info">
          <p class="name">Anh Minh Tran</p>
          <p class="email">anhminhtran235@gmail.com</p>
        </div>
      </div>
      <div class="social-media">
        <a href="https://www.linkedin.com/in/anhminhtran/" target="_blank"><i class="fab fa-linkedin"></i> LinkedIn</a>
        <a href="https://github.com/anhminhtran235" target="_blank"><i class="fab fa-github"></i> Github</a>
        <a href="https://medium.com/@dinamoteam01" target="_blank"><i class="fab fa-medium"></i> Medium</a>
        <a href="#" target="_blank"><i class="fas fa-file"></i> Resume</a>
      </div>
    </div>
  </div>
</template>

<style scoped lang="scss">
@import "../../styles/_variables.scss";
.wrapper {
  margin-top: 150px;
  display: flex;
  justify-content: center;
  align-items: center;

  .contact-box {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: flex-start;
    transition: all 0.3s;
    @media screen and (max-width: 720px) {
      text-align: center;
      align-items: center;
    }

    h2 {
      margin-bottom: 25px;
      font-size: 30px;
    }

    & > p {
      margin-bottom: 30px;
      transition: all 0.3s;
      @media screen and (max-width: 720px) {
        max-width: 500px;
        margin: 0 auto 30px auto;
      }
    }

    .personal-info {
      display: flex;
      margin-bottom: 45px;
      transition: all 0.3s;

      @media screen and (max-width: 720px) {
        flex-direction: column;
        gap: 24px;
        align-items: center;
        text-align: center;
      }

      img {
        width: 150px;
        border-radius: 50%;
      }

      .info {
        padding-left: 40px;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: flex-start;
        transition: all 0.3s;

        @media screen and (max-width: 720px) {
          text-align: center;
          align-items: center;
          padding: 0;
        }

        .name {
          font-weight: bold;
          margin-bottom: 7px;
        }
      }
    }

    .social-media {
      margin: auto;
      @media screen and (max-width: 640px) {
        min-width: 100%;
      }
      transition: all 0.3s;

      a {
        background: $purple;
        color: white;
        padding: 10px 30px;
        margin: 5px;
        border-radius: 12px;
        display: inline-block;
        max-width: 200px;
        transition: all 0.8s;
        &:hover {
          color: $orange;
        }
        @media screen and (max-width: 640px) {
          max-width: 100%;
          margin: 0 25px;
        }
      }

      @media screen and (max-width: 640px) {
        display: flex;
        flex-direction: column;
        gap: 18px;
      }
    }

    margin-bottom: 150px;
  }
}
</style>
