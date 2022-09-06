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

            <typewriter
              :replace="replace"
              :type-interval="200"
              :replace-interval="100"
            >
              <p class="main-font tw-text-8xl tw-text-primary">
                Software Engineer
              </p>
            </typewriter>
          </div>
          <Social />
        </div>
        <Hire/>
      </div>
      <div class="custom-bg" @click.prevent="$router.push({path:'/about'})">
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
                { from: "Software Engineer", to: "Product Designer" },
                { from: "Product Designer", to: "Software Engineer" },
            ],
        };
    },
});
</script>
<style lang="scss" scoped>
.main-bg {
  @apply tw-bg-secondary2;
  background-image: url("~/assets/images/jediiry3.svg");
  background-repeat: no-repeat;
  background-position: right top;
}
.text-intro {
  @apply tw-text-xl tw-font-medium tw-text-white;
  letter-spacing: 1rem;
}

.arrow-position {
  right: 100vh - calc(50vh / 2);
  bottom: 10%;
}
.custom-bg {
  background-image: url("~/assets/images/oilpaint.jpeg");
  background-repeat: no-repeat;
  display: flex;
  justify-content: center;
  align-items: center;
  filter: grayscale(10%);
  background-size: cover;
  @apply tw-p-6 tw-text-8xl 
          tw-fixed 
          tw-rounded-full
        tw-text-secondary
          arrow-position
          tw-cursor-pointer
          tw-w-48
          tw-h-48;

  i {
    visibility: hidden;
  }
  &:hover {
    background-image: none;
    background: black;
    i {
      visibility: visible;
      @apply tw-text-primary;
    }
  }
}
</style>
