<template>
    <container>
        <navbar></navbar>
        <magic-box></magic-box>
    </container>
</template>

<script>
import Container from '../components/Container.vue';
import Navbar from '../components/Navbar.vue';
import MagicBox from '../components/MagicBox.vue';

export default {
    components: {
        Container,
        Navbar,
        MagicBox
    },
};
</script>

<style></style>
