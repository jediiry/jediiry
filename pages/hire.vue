<template>
  <div class="tw-min-h-screen main-bg">
    <Logo color="tw-text-white" />
    <div
      class="
        stable-alignment
        tw-h-full tw-pt-36 tw-pb-10 md:tw-py-48 tw-flex tw-flex-col tw-justify-between tw-space-y-24
      "
    >
      <div
        class="tw-grid md:tw-grid-cols-4 tw-h-full tw-gap-10"
        data-aos="fade-up"
        data-aos-easing="ease-out-cubic"
        data-aos-duration="200"
      >
        <div class="tw-hidden md:tw-flex tw-justify-end">
          <typewriter
            :replace="replace"
            :type-interval="200"
            :replace-interval="500"
          >
            <p class="main-font tw-text-8xl tw-text-primary rotate">Hire Me</p>
          </typewriter>
        </div>
        <div
          class="
            tw-flex tw-flex-col tw-justify-evenly tw-col-span-2 md:tw-col-start-2
          "
        >
          <div class="tw-space-y-10">
            <form>
              <div class="tw-space-y-4">
                <div class="tw-space-y-2">
                  <label for="fullname"
                    >FullName <span class="tw-text-red-500">*</span></label
                  >
                  <input
                    type="text"
                    class="
                      tw-block
                      tw-w-full
                      tw-py-2
                      tw-px-4
                      tw-outline-none
                      tw-bg-secondary3
                    "
                  />
                </div>
                <div class="tw-space-y-2">
                  <label for="fullname">Organization</label>
                  <input
                    type="text"
                    class="
                      tw-block
                      tw-w-full
                      tw-py-2
                      tw-px-4
                      tw-outline-none
                      tw-bg-secondary3
                    "
                  />
                </div>
                <div class="tw-space-y-2">
                  <label for="fullname"
                    >Email <span class="tw-text-red-500">*</span></label
                  >
                  <input
                    type="text"
                    class="
                      tw-block
                      tw-w-full
                      tw-py-2
                      tw-px-4
                      tw-outline-none
                      tw-bg-secondary3
                    "
                  />
                </div>
                <div class="tw-space-y-2">
                  <label for="fullname"
                    >Phone <span class="tw-text-red-500">*</span></label
                  >
                  <input
                    type="text"
                    class="
                      tw-block
                      tw-w-full
                      tw-py-2
                      tw-px-4
                      tw-outline-none
                      tw-bg-secondary3
                    "
                  />
                </div>
                <div class="tw-space-y-2">
                  <label for="fullname"
                    >Details <span class="tw-text-red-500">*</span></label
                  >
                  <textarea
                    class="
                      tw-block
                      tw-w-full
                      tw-py-2
                      tw-px-4
                      tw-outline-none
                      tw-bg-secondary3
                    "
                    cols="30"
                    rows="10"
                  ></textarea>
                </div>
                <button class="tw-bg-complimentry tw-px-5 tw-py-3">Send</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import Vue from "vue";
import aosMixin from "~/plugins/aos";
export default Vue.extend({
  name: "IndexPage",
  data() {
    return {
      replace: [{ from: "A Software Engineer", to: "A Product Designer" }],
    };
  },
  mixins: [aosMixin],
});
</script>
<style lang="scss" scoped>
.main-bg {
  background-repeat: no-repeat;
  background-size: cover;
  background: linear-gradient(45deg,theme("colors.secondary2"), #1d1d1d);
  background-blend-mode: difference;
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
label {
  color: rgb(92, 89, 89);
}
</style>
