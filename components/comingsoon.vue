<template>
  <div class="tw-relative">
    <div class="coming-carousel tw-my-10">
      <div
        class="carousel-cell tw-bg-grey tw-rounded-lg"
        :key="index"
        v-for="(item, index) in items"
      >
        <a target="_blank" :href="item.url">
          <div class="tw-relative">
            <div
              class="show_bg_2 tw-rounded-2xl"
              :style="{
                'background-image': `linear-gradient(to bottom, rgba(0, 0, 0, 0), rgba(0, 0, 0, 1)), ${getUrl(
                  item.image
                )}`,
              }"
            >
              <button
                class="tw-main-badge tw-py-1 tw-px-6 tw-bg-white tw-text-black tw-rounded-2xl"
              >
                {{ item.badge }}
              </button>
              <div class="tw-text-2xl tw-text-white tw-main-bottom">
                <p>{{ item.content }}</p>
                <p class="tw-text-xs">{{ item.tag }}</p>
              </div>
            </div>
          </div>
        </a>
      </div>
    </div>
    <div class="tw-hidden md:tw-block carousel-control">
      <div class="tw-flex tw-justify-between tw-w-full">
        <button class="tw-left-control" @click="previousSlide">
          <span class="material-icons tw-text-black">arrow_back</span>
        </button>
        <button class="tw-right-control" @click="nextSlide">
          <span class="material-icons tw-text-black">arrow_forward</span>
        </button>
      </div>
    </div>
  </div>
</template>

<script >
import defaultSavings from "~/assets/images/bursary.png";
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
            badge: "2022",
            content: "Bursary",
            image: defaultSavings,
            tag: "",
            url: "https://bursary.ng/",
          },
          {
            badge: "2022",
            content: "SproutlyHQ",
            image: defaultPanza,
            tag: "",
            url: "https://banking.sproutlyhq.com/",
          },
          {
            badge: "2023",
            content: "TheShikaan",
            image: defaultMother,
            tag: "",
            url: "https://shikaan.netlify.app/",
          },
          {
            badge: "2022",
            content: "HupChop",
            image: chop,
            tag: "",
            url: "https://beta.hupchop.com/",
          },
        ];
      },
    },
  },
  data() {
    return {
      flickity: null,
    };
  },
  methods: {
    getUrl(img) {
      return `url(${img})`;
    },
    nextSlide() {
      this.flickity.next();
    },
    previousSlide() {
      this.flickity.previous();
    },
  },
  mounted() {
    this.flickity = new Flickity(".coming-carousel", {
      initialIndex: 1,
      prevNextButtons: false,
      pageDots: true,
      wrapAround: true,
      autoPlay: 5000,
      draggable: true,
      freeScroll: true,
      contain: true,
      rightToLeft: false,
      pauseAutoPlayOnHover: true,
    });
  },
};
</script>

<style lang="scss" scoped>
.show_bg_2 {
  width: 500px;
  height: 300px;
  background-size: cover;
  color: white;
  padding: 20px;
}
.carousel-cell {
  min-width: 300px;
  margin-right: 50px;
}
.carousel-control {
  position: absolute;
  color: white;
  top: 50%;
  width: 100%;
  margin-top: -50px;
}
.tw-left-control {
  background-color: white;
  border-radius: 5px;
  padding: 1rem 1.5rem;
  margin-left: -2rem;
  box-shadow: 20px 20px 80px rgb(185, 185, 185);
}
.tw-right-control {
  background-color: white;
  border-radius: 5px;
  padding: 1rem 1.5rem;
  margin-right: -2rem;
  box-shadow: 20px 20px 80px rgb(199, 199, 199);
}
.tw-main-bottom {
  position: absolute;
  bottom: 2rem;
  left: 1rem;
}
.tw-main-badge {
  position: absolute;
  top: 2rem;
  right: 1rem;
}
</style>
