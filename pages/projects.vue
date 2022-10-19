<template>
  <div class="tw-h-screen main-bg">
    <Logo />
    <div
      data-aos="fade-down"
      data-aos-easing="ease-out-cubic"
      data-aos-duration="200"
      class="
        stable-alignment
        tw-h-full tw-flex tw-justify-center tw-items-center
      "
    >
      <div
        class="
          tw-w-full tw-h-full tw-flex tw-items-center tw-space-y-4 
        "
      >
        <div class="tw-pt-24">
          <div>
            <typewriter
              :replace="replace"
              :type-interval="200"
              :replace-interval="500"
            >
              <p class="main-font tw-text-8xl tw-text-primary">Projects</p>
            </typewriter>
          </div>
          <p class="tw-text-white tw-pt-6">
            Lorem ipsum dolor, sit amet consectetur adipisicing elit. Possimus
            totam itaque obcaecati enim numquam aspernatur molestias in fugiat
            tenetur! Corporis aut id ratione illo expedita dolores ipsam vero.
            Quae sit similique quaerat architecto aut voluptate ut quia neque.
            Autem, nihil saepe deleniti dolorem, quos quam, fuga ratione nulla
            quia dignissimos labore tenetur rerum eius praesentium! Optio?
          </p>
          <comingsoon />
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
      images: [
        "https://i.wifegeek.com/200426/5ce1e1c7.jpg",
        "https://i.wifegeek.com/200426/5fa51df3.jpg",
        "https://i.wifegeek.com/200426/663181fe.jpg",
        "https://i.wifegeek.com/200426/2d110780.jpg",
        "https://i.wifegeek.com/200426/e73cd3fa.jpg",
        "https://i.wifegeek.com/200426/15160d6e.jpg",
        "https://i.wifegeek.com/200426/d0c881ae.jpg",
        "https://i.wifegeek.com/200426/a154fc3d.jpg",
        "https://i.wifegeek.com/200426/71d3aa60.jpg",
        "https://i.wifegeek.com/200426/d17ce9a0.jpg",
        "https://i.wifegeek.com/200426/7c4deca9.jpg",
        "https://i.wifegeek.com/200426/64672676.jpg",
        "https://i.wifegeek.com/200426/de6ab9c6.jpg",
        "https://i.wifegeek.com/200426/d8bcb6a7.jpg",
        "https://i.wifegeek.com/200426/4085d03b.jpg",
        "https://i.wifegeek.com/200426/177ef44c.jpg",
        "https://i.wifegeek.com/200426/d74d9040.jpg",
        "https://i.wifegeek.com/200426/81e24a47.jpg",
      ],
    };
  },
});
</script>
<style lang="scss" scoped>
.main-bg {
  background-color: #0e0e0e;
  background-image: url("~/assets/images/jediiry3.svg");
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
