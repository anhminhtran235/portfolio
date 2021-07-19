<template>
    <div class="intro" id="about">
        <div class="container small">
            <h2>Nice to meet you 👋</h2>
            <p>
                I'm a 3rd year student at SFU majoring in Computer Science. When I was in high school, I learned how to code and fell in love with it.
                5 years later, my passion for coding hasn't faded. I constantly find cool and challenging projects that exceed my current ability and
                work on them
            </p>
            <p>
                Currently, I'm working at Article as a Full stack developer co-op 
            </p>
        </div>
    </div>
</template>

<style scoped lang="scss">
    @import '../styles/_variables.scss';

    .intro {
        color: white;
        background: $purple;
        padding-top: 100px;
        padding-bottom: 200px;

        .container.small {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;

            h2 {
                font-size: 30px;
            }

            p {
                margin-top: 30px;
                font-size: 20px;
                text-align: center;
            }
        }
    }
</style>