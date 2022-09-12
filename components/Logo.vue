<template>
  <div class=" tw-flex tw-justify-center tw-w-full tw-py-16 tw-fixed tw-z-50" :class="[nav]">
   <div class="tw-flex tw-justify-between tw-items-center stable-alignment">
     <p
      class="title  tw-cursor-pointer tw-group"
      :class="[color]"
      @click.prevent="$router.push({ path: '/' })"
    >
      Obadoni
      <span class="tw-text-complimentry group-hover:tw-text-primary">.</span>
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
   </div>
    <div data-aos="fade-down"
     data-aos-easing="ease-out-cubic"
     data-aos-duration="200"
      v-if="isVisible"
      class="tw-fixed menu-bg tw-top-0 tw-bottom-0 tw-left-0 tw-right-0 tw-z-50"
    >
      <div
        class="
          stable-alignment
          tw-h-full tw-py-16 tw-flex tw-justify-between tw-flex-col
        "
      >
        <div class="tw-flex tw-justify-between tw-items-center">
          <p class="title tw-text-white tw-cursor-pointer" @click.prevent="$router.push({ path: '/' })">
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
        <div class="tw-space-y-8">
          <nuxt-link
            @click.native="setActiveMenu"
            to="/"
            exact
            class="
              tw-text-3xl
              tw-text-white
              tw-flex
              tw-items-center
              tw-cursor-pointer
              hover:tw-text-primary hover:tw-font-semibold
            "
          >
            <div class="">
              <span>Home</span>
            </div>
          </nuxt-link>
          <nuxt-link
            @click.native="setActiveMenu"
            to="/about"
            exact
            class="
              tw-text-3xl
              tw-text-white
              tw-flex
              tw-items-center
              tw-cursor-pointer
              hover:tw-text-primary hover:tw-font-semibold
            "
          >
            <div class="">
              <span>About Me</span>
            </div>
          </nuxt-link>
          <nuxt-link
            @click.native="setActiveMenu"
            to="/projects"
            exact
            class="
              tw-text-3xl
              tw-text-white
              tw-flex
              tw-items-center
              tw-cursor-pointer
              hover:tw-text-primary hover:tw-font-semibold
            "
          >
            <div class="">
              <span>Projects</span>
            </div>
          </nuxt-link>

          <nuxt-link
            @click.native="setActiveMenu"
            to="/technologies"
            exact
            class="
              tw-text-3xl
              tw-text-white
              tw-flex
              tw-items-center
              tw-cursor-pointer
              hover:tw-text-primary hover:tw-font-semibold
            "
          >
            <div class="">
              <span>Technologies</span>
            </div>
          </nuxt-link>
          <nuxt-link
            @click.native="setActiveMenu"
            to="/hire"
            exact
            class="
              tw-text-3xl
              tw-text-white
              tw-flex
              tw-items-center
              tw-cursor-pointer
              hover:tw-text-primary hover:tw-font-semibold
            "
          >
            <div class="">
              <span>Hire Me</span>
            </div>
          </nuxt-link>
          <Social />
        </div>
        <div></div>
      </div>
    </div>
  </div>
</template>
<script lang="ts">
import Vue from "vue";
import aosMixin from '~/plugins/aos'
export default Vue.extend({
  props: {
    color: {
      type: String,
      default: "tw-text-white",
    },
  },
  data() {
    return {
      isVisible: false,
      nav:""
    };
  },
  mixins: [aosMixin],
  methods:{
     scroll() {
      window.onscroll = () => {
        let topOfWindow = window.pageYOffset

        if (topOfWindow > 50) {
          this.nav = 'tw-blur-xl tw-bg-transparent'
        } else {
          this.nav = ''
        }
      }
    },
  },
  mounted() {
    this.scroll()
  },
});
</script>
<style lang="scss">
.menu-bg {
  background-repeat: no-repeat;
  background-size: cover;
  background: linear-gradient(45deg, #3e4a3d, #1d1d1d);
  background-blend-mode: difference;
}
a.nuxt-link-active {
  font-weight: bold;
  color: theme("colors.primary");
  text-decoration: line-through solid theme("colors.complimentry") 5%;
}
</style>