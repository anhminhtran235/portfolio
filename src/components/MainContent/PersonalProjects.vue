<template>
  <h2 id="personal-projects">Personal Projects</h2>
  <card
    :header="'Bookworm'"
    :content1="`Bookworm is a responsive e-commerce bookstore that allows users to buy and sell books online`"
    :content2="`Using a GraphQL backend instead of REST, Bookworm avoids over and under fetching data.
                    It also takes advantage of Apollo cache to reduce network traffic and bandwidth consumption`"
    :githubUrl="'https://github.com/anhminhtran235/Bookworm'"
    :projectUrl="'https://book-worm.shop'"
    :tags="['Nodejs', 'React', 'GraphQL', 'MongoDB']"
    :mediaUrl="require('../../assets/bookworm.png')"
    :mediaAlt="'Bookworm image'"
    :mediaType="'image'"
  ></card>
  <card
    class="flex-reverse"
    :header="'Codespot'"
    :content1="`Codespot is a Real-time Collaborative Code Editor.`"
    :content2="`It is blazingly fast thanks to the Peer-to-Peer architecture.
                    Powered by Visual Studio Code, it supports syntax highlighting for 65+ programming languages and even code suggestion for some languages`"
    :githubUrl="'https://github.com/DinamoTeam/Code-Spot'"
    :projectUrl="'https://code-spot.net/'"
    :tags="['.NET', 'Angular 8', 'WebRTC', 'Peer-to-Peer']"
    :mediaUrl="require('../../assets/codespot.gif')"
    :mediaAlt="'Demo gif'"
    :mediaType="'image'"
  ></card>
  <card
    :header="'Augmented Reality Sudoku Solver'"
    :content1="`This is a Python program that connects to computer webcam and solves Sudoku puzzles in Real-Time`"
    :content2="`The program recognizes digits using Convolutional Neural Network trained on 10,000 digits images.
                    The Sudoku puzzle is then solved using a best-first search algorithm`"
    :githubUrl="'https://github.com/anhminhtran235/real_time_sudoku_solver'"
    :projectUrl="'https://www.youtube.com/watch?v=uUtw6Syic6A&ab_channel=AnhMinhTran'"
    :tags="['Python', 'OpenCV', 'Keras']"
    :mediaUrl="'https://www.youtube.com/embed/uUtw6Syic6A'"
    :mediaAlt="'Demo video'"
    :mediaType="'youtube'"
  ></card>
  <card
    class="flex-reverse"
    :header="'Sudoku Solver Visualizer'"
    :content1="`Sudoku Solver Visualizer is web application that visualizes sudoku solver algorithms`"
    :content2="`So far, 5 algorithms have been implemented: Backtracking, Greedy Best First Search,
                    Reverse Backtracking, Spiral Backtracking, and Dancing Links`"
    :githubUrl="'https://github.com/anhminhtran235/sudoku-solver-visualizer'"
    :projectUrl="'https://anhminhtran235.github.io/sudoku-solver-visualizer/'"
    :tags="['Javascript', 'HTML', 'CSS']"
    :mediaUrl="require('../../assets/sudoku-visualizer.gif')"
    :mediaAlt="'Demo gif'"
    :mediaType="'image'"
  ></card>

  <div class="visit-project">
    <a href="https://github.com/anhminhtran235" target="_blank">VISIT PROJECT ON GITHUB</a>
  </div>
</template>

<script>
import Card from "./Card.vue";
export default {
  components: {
    Card,
  },
};
</script>

<style scoped lang="scss">
@import "../../styles/_variables.scss";

h2 {
  font-size: 30px;
  text-align: center;
  margin-top: 60px;
  margin-bottom: 100px;
}

.visit-project {
  margin-top: 70px;
  display: flex;
  justify-content: center;
  a {
    color: white;
    font-weight: bold;
    background: $purple;
    padding: 20px 30px;
    border-radius: 12px;
    @media screen and (max-width: 300px) {
      padding: 15px 25px;
    }

    &:hover {
      cursor: pointer;
      color: $orange;
    }
  }
}
</style>
