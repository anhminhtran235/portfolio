<template>
    <div class="container large">
        <h2>Thank you for looking at my website :)</h2>
        <div class="flex-container">
            <div class="wrapper">
                <button id="btn" class="magic" @click="toggleClass">See magic! 🎩</button>
                <div class="boxes" :class="{big: boxesStyleOn}">
                    <div v-for="coordinate in coordinates" :key="coordinate[0]*10 + coordinate[1]">
                        <div class="box" :style="getBoxStyle(coordinate[0], coordinate[1])"></div>
                    </div>
                </div>
                <p class="thanks">Thanks Brad Traversy for the magic box</p>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            boxesStyleOn: true,
            coordinates: [[0,0], [0,1], [0,2], [0,3],
                          [1,0], [1,1], [1,2], [1,3],
                          [2,0], [2,1], [2,2], [2,3],
                          [3,0], [3,1], [3,2], [3,3]],
        }
    },
    methods: {
        toggleClass() {
            this.boxesStyleOn = !this.boxesStyleOn;
        },
        getBoxStyle(i, j) {
            return 'background-position: ' + `${-j * 62.5}px ${-i * 62.5}px`;
        }
    }
}
</script>


<style scoped lang="scss">

@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

.container {
    margin-bottom: 50px;
}

h2 {
    text-align: center;
    margin-bottom: 20px;
}

.flex-container {
    display: flex;
    justify-content: center;
    align-items: center;
}

.wrapper {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}

.thanks {
    margin-top: 20px;
    margin-bottom: 20px;
}

.magic {
    background-color: #f9ca24;
    color: #fff;
    font-family: 'Poppins', sans-serif;
    border: 0;
    border-radius: 3px;
    font-size: 16px;
    padding: 12px 20px;
    cursor: pointer;
    top: 20px;
    letter-spacing: 1px;
    box-shadow: 0 3px rgba(249, 202, 36, 0.5);
    z-index: 100;
    margin-bottom: 20px;
}

.magic:focus {
    outline: none;
}

.magic:active {
    box-shadow: none;
    transform: translateY(2px);
}

.boxes {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around;
    height: 250px;
    width: 250px;
    position: relative;
    transition: 0.4s ease;
    margin-top: 10px;
}

.boxes.big {
    width: 300px;
    height: 300px;
}

.boxes.big .box {
    transform: rotateZ(360deg);
}

.box {
    background-image: url('https://media.giphy.com/media/26gsjCZpPolPr3sBy/giphy.gif');
    background-repeat: no-repeat;
    background-size: 250px 250px;
    position: relative;
    height: 62.5px;
    width: 62.5px;
    transition: 0.4s ease;
}

.box::after {
    content: '';
    background-color: #e89f55;
    position: absolute;
    top: 4px;
    right: -7.5px;
    height: 100%;
    width: 7.5px;
    transform: skewY(45deg);
}

.box::before {
    content: '';
    background-color: #ea9239;
    position: absolute;
    bottom: -7.5px;
    left: 4px;
    height: 7.5px;
    width: 100%;
    transform: skewX(45deg);
}
</style>