<template>
    <div class="container large">
        <nav class="nav-container">
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
                <li>
                    <a href="#my-contact" class="nav-link-special">Say Hello</a>
                </li>
            </ul>
        </nav>
    </div>
</template>

<style scoped lang="scss">
    @import '../styles/_variables.scss';

    .nav-container {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 30px 0px;

        .logo {
            font-size: 45px;
            font-family: 'Dancing Script', cursive;
            font-weight: 100;
            background:
                linear-gradient(
                    to right,
                    $orange 0%,
                    $orange 5px,
                    transparent 5px
                );
            background-repeat: repeat-x;
            background-size: 100%;
            color: $purple;
            padding-left: 15px;
            text-decoration: none;

            &:hover {
                cursor: pointer;
                background:
                    linear-gradient(
                        to right,
                        $orange 0%,
                        $orange 5px,
                        transparent
                    );
            }
        }

        .nav {
            display: flex;
            list-style: none;

            .nav-link,
            .nav-link-special {
                font-size: 18px;
            }

            .nav-link {
                padding: 8px 12px;

                &:hover {
                    cursor: pointer;
                    color: $purple;
                }
            }

            .nav-link-special {
                padding: 6px 15px;
                font-size: 20px;
                margin-left: 5px;
                border-color: $purple;
                border: 2px solid $purple;
                border-radius: 290486px;

                &:hover {
                    cursor: pointer;
                    background: $purple;
                    color: white;
                    transition: 0.2s ease-out;
                }
            }
        }
    }    
</style>