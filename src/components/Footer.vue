<template>
    <footer class="footer">
        <div class="container large"> 
            <div class="nav-container">
                <h2 class="logo">Anh Minh</h2>
                <ul class="nav">
                    <li>
                        <a href="#work-experience" class="nav-link">Experience</a>
                    </li>
                    <li>
                        <a href="#personal-projects" class="nav-link">Projects</a>
                    </li>
                    <li>
                        <a href="#about" class="nav-link">About</a>
                    </li>
                </ul>
            </div>
            <p>insert_a_fancy_quote</p>
        </div>
    </footer>
</template>

<style scoped lang="scss">
    @import '../styles/_variables.scss';
    .footer {
        background: black;

        .nav-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 30px 0px;

            .logo {
                font-size: 45px;
                font-family: 'Dancing Script', cursive;
                font-weight: 100;
                color: white;

                &:hover {
                    cursor: pointer;
                    color: $orange;
                }
            }

            .nav {
                display: flex;
                list-style: none;

                .nav-link {
                    font-size: 18px;
                    padding: 8px 12px;
                    color: white;


                    &:hover {
                        cursor: pointer;
                        color: $orange;
                    }
                }
            }
        }

        p {
            color: white;
            text-align: center;
            font-style: italic;
            padding-bottom: 30px;
        }
    }
</style>