<template>
    <navbar></navbar>
    <hero></hero>
    <intro></intro>
    <main-content></main-content>
</template>

<script>
import Navbar from '../components/Navbar.vue';
import Hero from '../components/Hero.vue';
import Intro from '../components/Intro.vue';
import MainContent from '../components/MainContent/MainContent.vue';

export default {
    components: {
        Navbar,
        Hero,
        Intro,
        MainContent
    },
};
</script>

<style scoped></style>
