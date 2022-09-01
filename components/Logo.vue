<template>
  <div class="tw-flex tw-justify-between tw-items-center">
    <p class="title tw-text-white">
      Obadoni <span class="tw-text-complimentry">.</span>
    </p>
    <i
      @click.prevent="isVisible = true"
      class="
        bx bx-menu
        tw-text-5xl tw-bg-black tw-p-3 tw-rounded-full tw-text-complimentry
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
      <div class="stable-alignment tw-h-full tw-py-24 tw-flex tw-justify-between tw-flex-col">
        <div class="tw-flex tw-justify-between">
          <p class="title tw-text-white">
      Obadoni <span class="tw-text-complimentry">.</span>
    </p>
          <i
            @click.prevent="isVisible = false"
            class="
              bx bx-x
              tw-text-5xl
              tw-bg-black
  tw-p-3
              tw-rounded-full
              tw-text-complimentry
              hover:tw-text-compgreen
              tw-cursor-pointer
            "
          ></i>
        </div>
        <div class="tw-space-y-10">
           <nuxt-link
            @click.native="setActiveMenu"
            to="/"
            exact
            class="
            tw-text-3xl
              tw-text-white tw-flex tw-items-center 
             
              tw-cursor-pointer
              hover:tw-text-primary
              
              hover:tw-font-semibold
            "
          >
            <div class="">
              <span>Home</span>
            </div>
          </nuxt-link>
           <nuxt-link
            @click.native="setActiveMenu"
            to="/dashboard"
            exact
            class="
            tw-text-3xl
              tw-text-white tw-flex tw-items-center 
             
              tw-cursor-pointer
              hover:tw-text-primary
              
              hover:tw-font-semibold
            "
          >
            <div class="">
              <span>About Me</span>
            </div>
          </nuxt-link>
           <nuxt-link
            @click.native="setActiveMenu"
            to="/dashboard"
            exact
            class="
            tw-text-3xl
              tw-text-white tw-flex tw-items-center 
              tw-cursor-pointer
              hover:tw-text-primary
              
              hover:tw-font-semibold
            "
          >
            <div class="">
              <span>Projects</span>
            </div>
          </nuxt-link>
           
           <nuxt-link
            @click.native="setActiveMenu"
            to="/dashboard"
            exact
            class="
            tw-text-3xl
              tw-text-white tw-flex tw-items-center 
              tw-cursor-pointer
              hover:tw-text-primary
              
              hover:tw-font-semibold
            "
          >
            <div class="">
              <span>Technologies</span>
            </div>
          </nuxt-link>
        
        </div>
          <Social/>
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
    background: linear-gradient(45deg,#3E4A3D , #1d1d1d) ;
    background-blend-mode:difference;
  }
  a.nuxt-link-active {
  font-weight: bold;
  color: theme('colors.primary');
  text-decoration: line-through solid theme('colors.complimentry') 5%;
  
}
</style>