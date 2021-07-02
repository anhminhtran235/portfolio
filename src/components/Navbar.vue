<template>
    <nav class="nav-container">
        <h2 class="logo">Anh Minh</h2>
        <ul class="nav">
            <li>
                <a href="#" class="nav-link">Experience</a>
            </li>
            <li>
                <a href="#" class="nav-link">Projects</a>
            </li>
            <li>
                <a href="#" class="nav-link">About</a>
            </li>
            <li>
                <a href="#" class="nav-link-special">Say Hello</a>
            </li>
        </ul>
    </nav>
</template>

<script>
export default {

}
</script>

<style scoped lang="scss">
    @import '../styles/_variables.scss';

    h2 {
        background:
            linear-gradient(
                to right,
                $orange 0%,
                $orange 5px,
                transparent 5px
            );
        background-repeat: repeat-x;
        background-size: 100%;
        color: #000;
        padding-left: 15px;
        text-decoration: none;
    }

    h2:hover {
        background:
            linear-gradient(
                to right,
                $orange 0%,
                $orange 5px,
                transparent
            );
    }

    .nav-container {
        display: flex;
        justify-content: space-between;
        align-items: center;

        .logo {
            font-size: 45px;
            font-family: 'Dancing Script', cursive;
            font-weight: 100;
            /* padding: 8px 12px; */

            &:hover {
                cursor: pointer;
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