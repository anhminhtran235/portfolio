<template>
  <div class="container large">
    <skills></skills>
  </div>
  <work-experience></work-experience>
  <div class="container large">
    <personal-projects></personal-projects>
  </div>
  <div class="container large">
    <contact></contact>
  </div>
</template>

<script>
import Skills from "./Skills.vue";
import WorkExperience from "./WorkExperience.vue";
import PersonalProjects from "./PersonalProjects.vue";
import Contact from "./Contact.vue";
export default {
  components: {
    Skills,
    WorkExperience,
    PersonalProjects,
    Contact,
  },
};
</script>

<style scoped lang="scss"></style>
