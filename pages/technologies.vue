<template>
  <div class="tw-bg-secondary ">
    <div
      data-aos="fade-down"
      data-aos-easing="ease-out-cubic"
      data-aos-duration="200"
    >
      <Logo color="tw-text-white" />

      <div class="tw-grid tw-grid-cols-7 tw-h-screen">
        <div
          class="
          tw-col-span-7
            md:tw-col-span-3
            tw-bg-secondary
            tw-grid
            tw-grid-cols-5
            tw-justify-center
            tw-items-center
            tw-z-40
          "
        >
          <div class="tw-space-y-12 tw-pt-32 tw-pb-5 tw-px-10 md:tw-col-start-2 tw-col-span-5 md:tw-col-span-3">
            <p class="main-font tw-text-5xl tw-text-primary">
              {{ allTechs[index]["technology"] }}
            </p>

            <p class="tw-text-white">
              {{ allTechs[index]["description"] }}
            </p>

            <p
              class="
                tw-group tw-text-2xl
                hover:tw-text-white
                tw-text-complimentry tw-text-right
              "
            >
              <i
                v-if="index > 0"
                @click.prevent="decreaseIndex"
                class="
                  tw-text-right
                  tw-p-3
                  tw-bg-gray-600
                  tw-rounded-full
                  tw-cursor-pointer
                  bx
                  hover:tw-text-complimentry
                  bx-left-arrow-alt
                  tw-text-primary
                "
              ></i>
              <i
                v-if="index < allTechs.length - 1"
                @click.prevent="increaseIndex"
                class="
                  tw-text-right
                  tw-p-3
                  tw-bg-gray-600
                  tw-rounded-full
                  tw-cursor-pointer
                  bx
                  hover:tw-text-complimentry
                  bx-right-arrow-alt
                  tw-text-primary
                "
              ></i>
            </p>
          </div>
        </div>
        <div class="tw-hidden md:tw-block tw-col-span-7 md:tw-col-span-4 tw-relative">
          <alltech></alltech>
        </div>
      </div>
    </div>
  </div>
</template>
<script lang="ts">
import Vue from "vue";
export default Vue.extend({
  name: "project",
  data() {
    return {
      replace: [{ from: "A Software Engineer", to: "A Product Designer" }],
      index: 0,
      allTechs: [
        {
          technology: "Python",
          description: `Lorem ipsum dolor sit amet consectetur adipisicing elit. 
      Temporibus, a cumque eveniet cupiditate cum voluptatem aspernatur 
      accusamus explicabo. Nesciunt similique aliquid minus ex, 
      architecto voluptatem libero incidunt numquam, placeat ut fugit
      voluptate unde. Illo delectus expedita maiores quidem assumenda 
      amet voluptate culpa, eveniet sint, et mollitia`,
        },
        {
          technology: "Javascript",
          description: `Lorem ipsum dolor sit amet consectetur adipisicing elit. 
      Temporibus, a cumque eveniet cupiditate cum voluptatem aspernatur 
      accusamus explicabo. Nesciunt similique aliquid minus ex, 
      architecto voluptatem libero incidunt numquam, `,
        },
        {
          technology: "Golang",
          description: `Lorem ipsum dolor sit amet consectetur adipisicing elit. 
      Temporibus, a cumque eveniet cupiditate cum voluptatem aspernatur 
      accusamus explicabo. Nesciunt similique aliquid minus ex, 
      architecto voluptatem libero incidunt numquam, placeat ut fugit
      voluptate unde. Illo delectus expedita maiores quidem assumenda 
      amet voluptate culpa, eveniet sint`,
        },
      ],
    };
  },
  methods: {
    decreaseIndex() {
      if (this.index > 0) {
        this.index = this.index - 1;
      }
    },
    increaseIndex() {
      if (this.index < this.allTechs.length - 1) {
        this.index = this.index + 1;
      }
    },
  },
});
</script>