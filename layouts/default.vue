<template>
  <div>
    <Nuxt />
  </div>
</template>
<script lang="ts">
import Vue from "vue";

export default Vue.extend({
  name: "IndexPage",
});
</script>
<style lang="scss">
    body{
        font-family: 'Montserrat' !important;
    }
.main-font {
  font-family: Quadaptor;
}

@font-face {
  font-family: Quadaptor;
  src: url("~/assets/fonts/quadaptor/quadaptor.ttf");
}
.title {
  font-family: "Montserrat";
  font-weight: 900;
  font-size: 2rem;
  letter-spacing: -2.5px;
}

.stable-alignment {
  @apply tw-w-11/12 tw-m-auto;
}

@screen md {
  .stable-alignment {
    @apply tw-w-10/12 tw-m-auto;
  }
}
</style>