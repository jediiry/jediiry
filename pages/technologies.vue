<template>
  <div class="tw-bg-secondary">
    <div
      data-aos="fade-down"
      data-aos-easing="ease-out-cubic"
      data-aos-duration="200"
    >
      <Logo color="tw-text-white" />

      <div class="tw-grid tw-grid-cols-7 tw-h-screen  tw-w-10/12 tw-mx-auto md:tw-mx-0 md:tw-w-full">
        <div
          class=" 
          tw-mt-8
          md:tw-mt-0
            tw-col-span-7
            md:tw-col-span-3
            tw-bg-secondary
            tw-grid
            tw-grid-cols-5
            tw-justify-center
            md:tw-items-center
            tw-z-40
          "
        >
          <div
            class="
              tw-space-y-12 tw-pt-32 tw-pb-5
              md:tw-col-start-2
              tw-col-span-5
              md:tw-col-span-3
               tw-text-center
               md:tw-text-left
            "
          >
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
        <div
          class="
            tw-hidden
            md:tw-block
            tw-col-span-7
            md:tw-col-span-4
            tw-relative
          "
        >
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
          description: `I boasts an impressive 5 years of experience working with Python, utilizing popular frameworks such as FastAPI and Django. With a strong understanding of the language and its capabilities, I have delivered numerous successful projects, showcasing my ability to develop efficient and effective solutions. My expertise in Python and its frameworks has allowed me to create robust, scalable applications that meet the needs of clients and deliver exceptional results.`,
        },
        {
          technology: "Typescript",
          description: `I have 8 years of experience working with Typescript and have extensive experience with various frameworks such as Fastify, Express, Next.js, Vue.js, React.js, Three.js, Nuxt.js. I have used these frameworks to build a wide range of web applications, from simple single-page applications to complex, multi-tiered systems. My experience with these frameworks has given me a deep understanding of the JavaScript ecosystem and the ability to quickly evaluate and adopt new technologies as needed to meet the needs of my clients. Additionally, I am highly proficient in both server-side and client-side development, allowing me to build complete web solutions from start to finish.`,
        },
        {
          technology: "Golang",
          description: `I have 3 years of experience working with Go programming language and using various frameworks such as gqlgen. Gqlgen is a GraphQL framework for Go that allows developers to quickly and easily build GraphQL APIs by generating the required boilerplate code. With my experience using gqlgen, I have been able to build highly scalable and efficient GraphQL APIs that meet the needs of my clients. Additionally, I have also developed a deep understanding of Go's standard library and its performance characteristics, allowing me to write optimized and performant code.`,
        },
        {
          technology: "Solidity",
          description: `I have 3 years of experience working with Solidity, the programming language used for developing smart contracts on the Ethereum blockchain. During this time, I have utilized various development tools and frameworks to create robust and secure smart contracts. My experience includes building scalable decentralized applications (dApps) and understanding the Ethereum Virtual Machine (EVM) to optimize contract performance. Additionally, I have developed a deep understanding of Solidity's best practices and performance considerations, allowing me to write efficient and secure smart contract code.`,
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