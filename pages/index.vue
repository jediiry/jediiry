<template>
  <div class="tw-h-screen main-bg">
    <!-- <sample></sample> -->
    <Logo></Logo>
    <div
      data-aos="fade-down"
      data-aos-easing="ease-out-cubic"
      data-aos-duration="200"
      class="
        stable-alignment
        tw-h-full tw-py-16
        md:tw-py-24
        tw-flex tw-flex-col tw-justify-center tw-items-center tw-gap-10
      "
    >
      <div class="tw-mt-36">
        <div
          class="
            tw-flex tw-flex-col tw-justify-center
            md:tw-justify-center
            tw-gap-4
          "
        >
          <div class="tw-space-y-2 tw-text-center">
            <p class="text-intro">I'M OBADONI HENRY</p>
            <p class="main-font tw-text-5xl md:tw-text-8xl tw-text-white">
              A Creative
            </p>
            <typewriter
              :replace="replace"
              :type-interval="200"
              :replace-interval="100"
            >
              <p class="main-font tw-text-5xl md:tw-text-8xl tw-text-primary">Developer
              </p>
            </typewriter>
          </div>
        </div>
      </div>
      <div class="custom-bg" @click.prevent="$router.push({ path: '/about' })">
        <i class="bx bx-right-arrow-alt"></i>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import Vue from "vue";

export default Vue.extend({
  name: "IndexPage",
  data() {
    return {
      replace: [
        { from: "Developer", to: "Designer" },
        // { from: "Designer", to: "Freelancer" },
      ],
    };
  },
});
</script>
<style lang="scss" scoped>
.main-bg {
  @apply tw-bg-secondary4;
  background-image: url("~/assets/images/jediiry3.svg");
  background-repeat: no-repeat;
  background-position: center center;
  @media (max-width: 768px) {
    background-position: center center;
  }
}
.text-intro {
  @apply tw-text-xl tw-font-medium tw-text-white tw-tracking-widest;
}

.arrow-position {
  right: 100vh - calc(80vh / 2);
  bottom: 10%;
}
.custom-bg {
  background-image: none;
  background-image: url("~/assets/images/oilpaint.jpeg");
 
  // background: #191b1c;
  display: flex;
  justify-content: center;
  align-items: center;
  filter: grayscale(10%);
  @apply tw-p-5 tw-text-8xl 
          tw-rounded-full
        tw-text-secondary
          arrow-position
          tw-cursor-pointer
          tw-w-32
          tw-h-32;

  i {
    visibility: hidden;
    @apply tw-text-primary;
  }
  &:hover {
     background: black;
    background-repeat: no-repeat;
    background-size: cover;
    i {
      visibility: visible;
    }
  }
}
</style>
