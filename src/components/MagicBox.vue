<template>
    <div class="wrapper">
        <button id="btn" class="magic">Magic 🎩</button>
        <div id="boxes" class="boxes big"></div>
    </div>
</template>

<script>
export default {
    mounted() {
        const boxesContainer = document.getElementById('boxes')
        const btn = document.getElementById('btn')

        btn.addEventListener('click', () => boxesContainer.classList.toggle('big'))

        function createBoxes() {
            for (let i = 0; i < 4; i++) {
                for (let j = 0; j < 4; j++) {
                    const box = document.createElement('div')
                    box.classList.add('box')
                    box.style.backgroundPosition = `${-j * 62.5}px ${-i * 62.5}px`
                    boxesContainer.appendChild(box)
                }
            }
        }

        createBoxes()
    }
}
</script>

<style scoped lang="scss">

@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

.wrapper {
    margin-top: 50px;
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