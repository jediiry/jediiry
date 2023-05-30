<template>
  <div class="tw-h-screen md:tw-h-screen main-bg">
    <Logo />
    <div
      data-aos="fade-down"
      data-aos-easing="ease-out-cubic"
      data-aos-duration="200"
      class="
        stable-alignment
        tw-h-full
        md:tw-py-10
        tw-flex tw-flex-col tw-justify-center tw-items-center tw-space-y-24
      "
    >
      <div class="tw-grid md:tw-grid-cols-5 tw-h-full tw-items-center tw-mt-36 md:tw-mt-0">
        <div
          class="
            tw-flex tw-flex-col tw-justify-evenly tw-col-span-3 tw-col-start-2
          "
        >
          <div class="tw-space-y-4 md:tw-space-y-10">
            <typewriter
              :replace="replace"
              :type-interval="10"
              :replace-interval="100"
            >
              <p class="main-font tw-text-5xl tw-text-center md:tw-text-8xl tw-text-primary">
                About me
              </p>
            </typewriter>

            <p class="tw-text-white tw-text-center">
              I am a software developer with over 8 years of experience, I have
              a strong background in several programming languages and
              technologies, including but not limited to Python, Node.js, Golang
              and Javascript. I have a passion for problem-solving and creating
              innovative solutions, and I am always eager to learn new
              technologies and programming languages. Throughout my career, I
              have had the opportunity to work on a wide range of projects, from
              developing mobile apps to building complex systems for large
              organizations.
            </p>
            <div @click.prevent="downloadFile"
              class="
                tw-flex tw-items-center tw-justify-center tw-gap-4 tw-cursor-pointer tw-group
              "
            >
              <i
                class="
                  bx
                  group-hover:tw-text-complimentry
                  tw-text-primary tw-text-5xl
                  bxs-cloud-download
                "
              ></i>
              <span class="main-font tw-text-2xl tw-text-white"
                >curriculum vitae</span
              >
            </div>
          </div>
        </div>
        <div class="tw-fixed tw-bottom-20 tw-right-4">
          <Hire class="tw-hidden md:tw-block" />
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
  methods: {
    downloadFile() {
      const link = document.createElement("a");
      link.href = "/obadoni.pdf";
      link.setAttribute("download", "Obadoni.pdf");
      document.body.appendChild(link);
      link.click();
      document.body.removeChild(link);
    },
  },
});
</script>
<style lang="scss" scoped>
.main-bg {
  background-color: #0e0e0e;
  background-image: url("~/assets/images/jediiry3.svg");
  background-repeat: no-repeat;
  background-position: center center;
  @media (max-width: 768px) {
    background-position: right center;
  }
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
