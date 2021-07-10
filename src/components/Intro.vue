<template>
    <div class="intro">
        <div class="container small">
            <h2>Nice too meet you 👋</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid repellat id sint veritatis dolores nostrum! Ducimus architecto voluptatem exercitationem corrupti nostrum, quo, voluptate dolore eius, laborum minus enim quisquam praesentium voluptates rem perferendis amet! Explicabo obcaecati assumenda ea cum nostrum quae, delectus sed ex suscipit sequi qui </p>
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