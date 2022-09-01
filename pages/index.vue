<template>
  <div class="tw-h-screen main-bg">
    <div
      class="
        stable-alignment
        tw-h-full tw-py-24 tw-flex tw-flex-col tw-justify-between
      "
    >
      <Logo />

      <div class="tw-grid tw-grid-cols-2 tw-h-5/6">
        <div class="tw-flex tw-flex-col tw-justify-evenly">
          <div class="tw-space-y-5">
            <p class="text-intro">I'M OBADONI HENRY</p>
            <p class="main-font tw-text-8xl tw-text-compgreen">
              Software Developer
            </p>
          </div>
          <div class="tw-flex tw-gap-2">
            <i
              class="
                bx
                bxl-github
                tw-text-3xl
                hover:tw-text-black
                tw-text-compgreen tw-cursor-pointer
              "
            ></i>
            <i
              class="
                bx
                bxl-instagram
                tw-text-3xl
                hover:tw-text-black
                tw-text-compgreen tw-cursor-pointer
              "
            ></i>
            <i
              class="
                bx
                bxl-twitter
                tw-text-3xl
                hover:tw-text-black
                tw-text-compgreen tw-cursor-pointer
              "
            ></i>
            <i
              class="
                bx
                bxl-facebook-circle
                tw-text-3xl
                hover:tw-text-black
                tw-text-compgreen tw-cursor-pointer
              "
            ></i>
            <i
              class="
                bx
                bxl-whatsapp
                tw-text-3xl
                hover:tw-text-black
                tw-text-compgreen tw-cursor-pointer
              "
            ></i>
          </div>
        </div>
        <div class="image-section tw-flex tw-flex-col tw-justify-end">
          <span class="title tw-text-complimentry rotate tw-text-right"
            >Hire Me</span
          >
        </div>
      </div>
      <i
        class="
          bx bx-right-arrow-alt
          tw-bg-compgreen
          tw-p-6
          tw-text-8xl
          tw-fixed
          tw-rounded-full
          tw-text-primary
          arrow-position
        "
      ></i>
    </div>
  </div>
</template>

<script lang="ts">
import Vue from "vue";

export default Vue.extend({
  name: "IndexPage",
});
</script>
<style lang="scss" scoped>
.main-bg {
  @apply tw-bg-primary;
  background-image: url("~/assets/images/mainbg.svg");
  background-repeat: no-repeat;
  background-size: cover;
}
.text-intro {
  @apply tw-text-xl tw-font-medium;
  letter-spacing: 1rem;
}
.rotate {
  writing-mode: vertical-rl;
}
.arrow-position{
right: 100vh - calc(50vh/2);
bottom: 10%;
}
</style>
