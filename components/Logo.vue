<template>
  <div class="tw-flex tw-justify-between tw-items-center">
    <p class="title tw-text-white">
      Obadoni <span class="tw-text-complimentry">.</span>
    </p>
    <i
      @click.prevent="isVisible = true"
      class="
        bx bx-menu
        tw-text-5xl tw-bg-black tw-p-2 tw-rounded-full tw-text-complimentry
        hover:tw-text-compgreen
        tw-cursor-pointer
      "
    ></i>
    <div
      v-if="isVisible"
      class="
        tw-fixed
        menu-bg
        tw-top-0
        tw-bottom-0
        tw-left-0
        tw-right-0
        tw-z-50
      "
    >
      <div class="stable-alignment tw-py-24 tw-space-y-10">
        <div class="tw-text-right">
          <i
            @click.prevent="isVisible = false"
            class="
              bx bx-x
              tw-text-5xl
              tw-bg-black
              tw-p-2
              tw-rounded-full
              tw-text-complimentry
              hover:tw-text-compgreen
              tw-cursor-pointer
            "
          ></i>
        </div>
        <div class="tw-space-y-5">
         
        </div>
      </div>
    </div>
  </div>
</template>
<script lang="ts">
import Vue from "vue";
export default Vue.extend({
  data() {
    return {
      isVisible: false,
    };
  },
});
</script>
<style lang="scss">
  .menu-bg{
    background-repeat: no-repeat;
    background-size: cover;
    background-color: #3E4A3D;
    background-blend-mode:difference;
  }
</style>