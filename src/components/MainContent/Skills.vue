<template>
    <section class="skills">
        <div class="individual-skill">
            <div class="first">
                <img src="../../assets/backend.svg" alt="backend">
                <h2>Backend</h2>
                <p>I actively use many backend programming languages and frameworks</p>
            </div>
            <div class="second">
                <p class="header">Languages and Frameworks</p>
                <p class="content">Java</p>
                <p class="content">Java Spring</p>
                <p class="content">Nodejs</p>
                <p class="content">Express</p>
                <p class="content">Hibernate</p>
                <p class="content">MySQL</p>
                <p class="content">MongoDB</p>
            </div>
        </div>

        <div class="individual-skill">
            <div class="first">
                <img class="algo" src="../../assets/algorithm.svg" alt="algorithm">
                <h2>Algorithm</h2>
                <p>I have a solid foundation of Algorithm and Data Structures</p>
            </div>
            <div class="second">
                <p class="header">Algorithm &amp; Data Structures</p>
                <p class="content">Dynamic Programming</p>
                <p class="content">Divide &amp; Concur</p>
                <p class="content">Union Finding</p>
                <p class="content">Graph Theory</p>
                <p class="content">Arrays, Stacks, Queues</p>
                <p class="content">Heaps, Trees</p>
                <p class="content">Hash Tables, Tries</p>
            </div>
        </div>

        <div class="individual-skill">
            <div class="first">
                <img src="../../assets/frontend.svg" alt="frontend">
                <h2>Frontend</h2>
                <p>I have a wide range of frontend frameworks in my toolbox</p>
            </div>
            <div class="second">
                <p class="header">Frontend Weapons</p>
                <p class="content">React</p>
                <p class="content">Vue</p>
                <p class="content">Angular</p>
                <p class="content">Javascript</p>
                <p class="content">Typescript</p>
                <p class="content">HTML</p>
                <p class="content">CSS</p>
            </div>
        </div>
    </section>
</template>

<style scoped lang="scss">
    @import '../../styles/_variables.scss';
    .skills {
        display: flex;
        transform: translateY(-100px);
        background: white;
        border-radius: 12px;
        box-shadow: 0 5px 5px 0 rgb(242, 246, 248), 0 0 0 1px $grey;
        border-bottom: 1px solid $grey;

        & > div {
            border-right: 1px solid $grey;
        }

        & > div:last-child {
            border: none;
        }
    }

    .individual-skill {
        width: 33.32%;
        padding: 50px 20px;
        display: flex;
        flex-direction: column;
        justify-content: flex-start;
        align-items: center;
        text-align: center;

        .first {
            img {
                width: 60px;
                padding: 5px;

                &.algo {
                    padding: 0px
                }
            }
                
            h2 {
                margin-top: 15px;
                font-size: 23px;
            }

            p {
                margin-top: 15px;
            }
        }
        
        .second {
            margin-top: 35px;
            
            .header {
                color: $purple;
                margin-bottom: 15px;
                font-weight: bold;
            }

            .content {
                margin-top: 5px;
            }
        }
    }
</style>