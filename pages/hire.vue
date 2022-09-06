<template>
  <div class="tw-min-h-screen main-bg">
    <div
      class="
        stable-alignment
        tw-h-full tw-py-24 tw-flex tw-flex-col tw-justify-between tw-space-y-24
      "
    >
      <Logo color="tw-text-secondary" />

      <div class="tw-grid tw-grid-cols-5 tw-h-full">

        <div class="tw-flex tw-flex-col tw-justify-evenly tw-col-span-3 tw-col-start-2">
          <div class="tw-space-y-10">
            <typewriter
              :replace="replace"
              :type-interval="200"
              :replace-interval="500"
            >
              <p class="main-font tw-text-8xl tw-text-primary">About me</p>
            </typewriter>

            <p class="tw-text-white">
              Lorem ipsum dolor sit amet consectetur adipisicing elit.
              Temporibus, a cumque eveniet cupiditate cum voluptatem aspernatur
              accusamus explicabo. Nesciunt similique aliquid minus ex,
              architecto voluptatem libero incidunt numquam, placeat ut fugit
              voluptate unde. Illo delectus expedita maiores quidem assumenda
              amet voluptate culpa, eveniet sint, et mollitia ut placeat. Eum
              nesciunt ad facilis asperiores ipsa, tempore explicabo molestias
              laborum accusamus provident neque cumque. Ab aliquid ducimus
              similique sed! Pariatur cum hic similique praesentium ipsam atque.
              Cupiditate aut accusantium repellat, eos eaque ex autem vitae
              nostrum dignissimos fugit odit iste blanditiis dolorem.
            </p>
            <div class="tw-flex tw-items-center tw-gap-4 tw-cursor-pointer tw-group">
            <i class='bx group-hover:tw-text-complimentry tw-text-primary tw-text-5xl bxs-cloud-download'></i> <span class="main-font tw-text-2xl tw-text-white">curriculum vitae</span>
          </div>
          </div>
          
         
        </div>
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
      replace: [{ from: "A Software Engineer", to: "A Product Designer" }],
    };
  },
});
</script>
<style lang="scss" scoped>
.main-bg {
  @apply tw-bg-primary;
//   background-image: url("~/assets/images/jediiry3.svg");
  background-repeat: no-repeat;
  background-position: center top;
}
.text-intro {
  @apply tw-text-xl tw-font-medium tw-text-white;
  letter-spacing: 1rem;
}
.rotate {
  writing-mode: vertical-rl;
}
.arrow-position {
  right: 100vh - calc(50vh / 2);
  bottom: 10%;
}
.custom-bg {
  background-image: url("~/assets/images/oilpaint.jpeg");
  display: flex;
  justify-content: center;
  align-items: center;
  filter: grayscale(10%);
  background-size: contain;
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
