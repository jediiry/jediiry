<template>
  <div class="tw-min-h-screen main-bg tw-pt-20 md:tw-pt-36">
    <Logo />

    <div
      data-aos="fade-down"
      data-aos-easing="ease-out-cubic"
      data-aos-duration="300"
      class="stable-alignment tw-flex tw-flex-col tw-items-center tw-justify-center tw-h-full tw-space-y-12 md:tw-space-y-20"
    >
      <div class="tw-w-full tw-max-w-4xl tw-flex tw-flex-col tw-items-center tw-px-4 md:tw-px-0 tw-space-y-8">

        <!-- Heading -->
        <typewriter :replace="replace" :type-interval="10" :replace-interval="100">
          <p class="main-font tw-text-3xl sm:tw-text-4xl md:tw-text-6xl lg:tw-text-7xl tw-text-center tw-text-primary">
            About me
          </p>
        </typewriter>

        <!-- Body Text -->
        <p class="tw-text-white tw-text-sm sm:tw-text-base md:tw-text-lg tw-leading-relaxed tw-text-center tw-space-y-4">
          I am the founder of Spiont, a fintech company focused on building secure, scalable, and user‑centric financial solutions for emerging markets. The Spoint product is currently under active development and will leverage blockchain technology at its core to ensure transparency, security, and trust across financial interactions.
          <br /><br />
          In addition to leading product direction and engineering strategy at Spoint, I also serve as a Developer Advocate for Polygon, where I support developers, promote blockchain adoption, and contribute to the growth of the Web3 ecosystem.
          <br /><br />
          Alongside these leadership roles, I bring over eight years of experience as a software and platform engineer, delivering high‑impact solutions across multiple industries. My expertise spans platform engineering, cloud‑native development, blockchain technologies, and AI engineering—enabling me to architect and build resilient systems, intelligent applications, and modern distributed platforms.
          <br /><br />
          Throughout my career, I have led and contributed to projects ranging from mobile applications to enterprise‑grade infrastructures, consistently driving innovation, improving performance, and solving complex engineering challenges. I remain deeply committed to creating technology that delivers real‑world value and continuously expand my skillset to stay ahead of emerging tools, frameworks, and architectural practices.
          <br /><br />
          My journey reflects a blend of technical excellence, leadership, and forward‑thinking engineering—qualities aligned with global‑level talent in today’s technology landscape.
        </p>

        <!-- CV Download -->
        <div
          @click.prevent="downloadFile"
          class="tw-flex tw-items-center tw-justify-center tw-gap-3 tw-cursor-pointer tw-group tw-mt-6"
        >
          <i class="bx bxs-cloud-download tw-text-primary group-hover:tw-text-complimentry tw-text-4xl md:tw-text-5xl"></i>
          <span class="main-font tw-text-lg md:tw-text-2xl tw-text-white">curriculum vitae</span>
        </div>

      </div>

      <!-- Floating Hire Button -->
      <div class="tw-fixed tw-bottom-20 tw-right-4">
        <Hire class="tw-hidden md:tw-block" />
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
  background-position: center;

  @media (max-width: 1024px) {
    background-size: cover;
    background-position: center right;
  }
}
</style>
