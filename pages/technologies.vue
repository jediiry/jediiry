<template>
  <div class="tw-bg-secondary">
    <div data-aos="fade-down"
     data-aos-easing="ease-out-cubic"
     data-aos-duration="200">
      <Logo color="tw-text-white" />

    <div class="tw-grid tw-grid-cols-7 tw-h-screen">
      <div
        class="
          tw-col-span-3
          tw-bg-secondary
          tw-grid
          tw-grid-cols-5
          tw-justify-center
          tw-items-center
          tw-z-40
        "
      >
        <div class="tw-space-y-12 tw-col-start-2 tw-col-span-3">
          <p class="main-font tw-text-5xl tw-text-primary">Javascript</p>

          <p class="tw-text-white">
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus,
            a cumque eveniet cupiditate cum voluptatem aspernatur accusamus
            explicabo. Nesciunt similique aliquid minus ex, architecto
            voluptatem libero incidunt numquam, placeat ut fugit voluptate unde.
            Illo delectus expedita maiores quidem assumenda amet voluptate
            culpa, eveniet sint, et mollitia
          </p>
          
            <p
              @click.prevent="$router.push({ path: '/hire' })"
              class="
                tw-group tw-text-2xl
                hover:tw-text-white
                tw-text-complimentry tw-text-right 
              "
              >
              <i
                class=" tw-text-right tw-p-3 tw-bg-gray-600 tw-rounded-full tw-cursor-pointer
                  bx
                  hover:tw-text-complimentry
                  bx-left-arrow-alt
                  tw-text-primary
                "
              ></i
            >
              <i
                class=" tw-text-right tw-p-3 tw-bg-gray-600 tw-rounded-full tw-cursor-pointer
                  bx
                  hover:tw-text-complimentry
                  bx-right-arrow-alt
                  tw-text-primary
                "
              ></i
            >
          </p>
          
        </div>
      </div>
      <div class="tw-col-span-4 tw-relative">
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
    };
  },
});
</script>