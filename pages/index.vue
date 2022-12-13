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
        tw-h-full tw-py-16 md:tw-py-24 tw-flex tw-flex-col tw-justify-center
      "
    >
      <div class="tw-grid md:tw-grid-cols-2 tw-h-full tw-mt-10">
        <div class="tw-flex tw-flex-col tw-justify-end md:tw-justify-center tw-gap-4 md:tw-gap-10">
          <div class="tw-space-y-2">

        
            <p class="text-intro">I'M OBADONI HENRY</p>
            <p class="main-font tw-text-5xl md:tw-text-8xl tw-text-white">
              Creative
            </p>
            <typewriter 
              :replace="replace"
              :type-interval="200"
              :replace-interval="100"
            >
              <p class="main-font tw-text-5xl md:tw-text-8xl tw-text-primary">
                Developer</p>
            </typewriter>
              <Hire class="tw-block md:tw-hidden" />
          </div>
          <Social class="tw-hidden md:tw-block" />
        </div>
        <Hire class="tw-hidden md:tw-block" />
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
  background-position: right top;
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
  background: black;
  // background: #191b1c;
  display: flex;
  justify-content: center;
  align-items: center;
  filter: grayscale(10%);
  @apply tw-p-5 tw-text-8xl 
          tw-fixed 
          tw-rounded-full
        tw-text-secondary
          arrow-position
          tw-cursor-pointer
          tw-w-32
          tw-h-32;

  i {
    visibility: visible;
    @apply tw-text-primary;
  }
  &:hover {
    background-image: url("~/assets/images/oilpaint.jpeg");
    background-repeat: no-repeat;
    background-size: cover;
    i {
      visibility: hidden;
    }
  }
}
</style>
