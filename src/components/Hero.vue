<template>
    <div class="container medium">
        <section class="hero">
            <div class="hero-body">
                <h1>Hello, my name is Minh</h1>
                <p>I love solving hard coding problems</p>
            </div>
            <div class="hero-foot">
                <img src="../assets/avatar-vector.svg" alt="Anh Minh Tran vector avatar">
            </div>
        </section>
    </div>
</template>

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
            }

            p {
                font-size: 20px;
                margin-bottom: 20px;
            }
        }

        .hero-foot {
            margin: 40px 0px;
        }
    }
</style>