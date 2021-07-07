<template>
    <navbar></navbar>
    <hero></hero>
    <intro></intro>
    <main-content></main-content>
    <magic-box></magic-box> 
    <page-footer></page-footer>
</template>

<script>
import Navbar from '../components/Navbar.vue';
import Hero from '../components/Hero.vue';
import Intro from '../components/Intro.vue';
import MainContent from '../components/MainContent/MainContent.vue';
import MagicBox from '../components/MagicBox.vue';
import PageFooter from '../components/Footer.vue';

export default {
    components: {
        Navbar,
        Hero,
        Intro,
        MainContent,
        MagicBox,
        PageFooter,
    },
};
</script>
