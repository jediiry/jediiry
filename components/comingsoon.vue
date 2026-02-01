<template>
  <div class="tw-relative">
    <div class="tw-my-10 tw-grid tw-grid-cols-1 sm:tw-grid-cols-2 tw-gap-6">
      <div
        class="tw-bg-grey tw-rounded-lg tw-h-full"
        :key="index"
        v-for="(item, index) in items"
      >
        <a target="_blank" :href="item.url">
          <div class="tw-relative tw-h-full">
            <div
              class="show_bg_2 tw-rounded-2xl tw-h-full tw-w-full"
              :style="{
                'background-image': `linear-gradient(to bottom, rgba(0,0,0,0), rgba(0,0,0,1)), ${getUrl(item.image)}`,
              }"
            >
              <button
                class="tw-main-badge tw-py-1 tw-px-4 tw-bg-white tw-text-black tw-rounded-2xl tw-text-xs sm:tw-text-sm"
              >
                {{ item.badge }}
              </button>

              <div class="tw-text-white tw-main-bottom">
                <p class="tw-text-lg sm:tw-text-xl tw-font-semibold">{{ item.content }}</p>
                <p class="tw-text-xs sm:tw-text-sm tw-mt-1 tw-leading-snug">{{ item.body }}</p>
              </div>
            </div>
          </div>
        </a>
      </div>
    </div>
  </div>
</template>

<script>
import defaultSavings from "~/assets/images/spooint.jpeg";
import defaultPanza from "~/assets/images/sproutly.png";
import defaultMother from "~/assets/images/shikaan.png";
import chop from "~/assets/images/hupchop.png";

export default {
  name: "StatsCard",
  props: {
    items: {
      type: Array,
      default: () => {
        return [
          {
            badge: "2025",
            content: "Spooint",
            body: "Money across borders",
            image: defaultSavings,
            url: "https://spooint.com/en",
          },
          {
            badge: "2022",
            content: "SproutlyAfrica",
            body: `
              This is a platform where I led a team of developers to build Sproutly Africa,
              a fintech‑education solution designed for schools in Nigeria.
            `,
            image: defaultPanza,
            url: "https://sproutly.africa/sproutly-books/overview",
          },
          {
            badge: "2024",
            content: "Croner I",
            body: `
              This is a platform that I lead and manage, where I oversee the implementation
              of new AI features and continuous infrastructure upgrades.
            `,
            image: defaultMother,
            url: "https://library.croneri.co.uk",
          },
          {
            badge: "2024",
            content: "Polygon DabClub Birmingham",
            body: `
              This was a blockchain event hosted and sponsored by Polygon, where I spoke about
              the transformative impact blockchain will have on the fintech industry.
            `,
            image: chop,
            url: "https://www.linkedin.com/posts/michael-ejeh-6735711b6_last-weekend-we-launched-the-polygon-devx-activity-7205795472450469888-d7TC",
          },
        ];
      },
    },
  },
  methods: {
    getUrl(img) {
      return `url(${img})`;
    },
  },
};
</script>

<style lang="scss" scoped>
.show_bg_2 {
  width: 100%;
  height: 100%;
  min-height: 380px; /* increased card height */
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
  color: white;
  padding: 1.2rem;
  display: flex;
  flex-direction: column;
  justify-content: flex-end;
  position: relative;
  text-align: left; /* enforce left alignment */
}

.tw-main-bottom {
  position: absolute;
  bottom: 1.2rem;
  left: 1.2rem;
  right: 1.2rem;
  text-align: left; /* enforce left alignment */
}

.tw-main-badge {
  position: absolute;
  top: 1rem;
  right: 1rem;
}
</style>
