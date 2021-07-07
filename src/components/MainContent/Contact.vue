<template>
    <div class="wrapper">
        <div class="contact-box">
            <h2>Questions?</h2>
            <p>If you have any questions about my experience, feel free to reach out to me via email.</p>
            <div class="personal-info">
                <img src="../../assets/avatar.jpg" alt="Avatar">
                <div class="info">
                    <p class="name">Anh Minh Tran</p>
                    <p class="email"> anhminhtran235@gmail.com</p>
                </div>
            </div>
            <div class="social-media">
                <a href=""><i class="fab fa-linkedin"></i> LinkedIn</a>
                <a href=""><i class="fab fa-github"></i> Github</a>
                <a href=""><i class="fab fa-medium"></i> Medium</a>
                <a href=""><i class="fas fa-file"></i> Resume</a>
            </div>
        </div>
    </div>
</template>

<style scoped lang="scss">
    @import '../../styles/_variables.scss';
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

            h2 {
                margin-bottom: 45px;
                font-size: 30px;
            }

            & > p {
                margin-bottom: 30px;
            }

            .personal-info {
                display: flex;
                margin-bottom: 45px;
                
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

                    .name {
                        font-weight: bold;
                        margin-bottom: 7px;
                    }
                }
            }

            .social-media {
                margin: auto;
                a {
                    background: $purple;
                    color: white;
                    padding: 10px 30px;
                    margin-right: 5px;
                    border-radius: 12px;

                    &:hover {
                        color: $orange;
                    }
                }
            }

            margin-bottom: 150px;
        }
    }

    
</style>