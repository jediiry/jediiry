<template>
  <div>
    <Nuxt />
     <div class="cursor"></div>
  </div>
</template>
<script lang="ts">
import Vue from "vue";

export default Vue.extend({
  name: "IndexPage",
});
</script>
<style >
    body{
        font-family: 'Montserrat' !important;
    }
.main-font {
  font-family: Quadaptor;
}

@font-face {
  font-family: Quadaptor;
  src: url("~/assets/fonts/quadaptor/quadaptor.ttf");
}
.title {
  font-family: "Montserrat";
  font-weight: 900;
  font-size: 2rem;
  letter-spacing: -2.5px;
}

.stable-alignment {
  @apply tw-w-10/12 tw-m-auto;
}

@screen md {
  .stable-alignment {
    @apply tw-w-10/12 tw-m-auto;
  }
}


.gallery {
  width: 100%;
  max-width: 950px;
  margin: 0 auto;
  padding: 50px 20px;
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  /* grid-auto-rows: 350px; */
  grid-auto-flow: dense;
  grid-gap: 20px;
}

.gallery .image-box {
  position: relative;
  overflow: hidden;
  background-color: #d7d7d8;
  /* height: 50%; */
}

.gallery .image-box:nth-child(7n + 1) {
  grid-column: span 2;
  grid-row: span 2;
}

.gallery .image-box img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  transition: all 0.5s ease;
}
.gallery .image-box:hover img {
  transform: scale(1.1);
}
.gallery .image-box .overlay{
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  background-color: rgba(22, 21, 21, 0.857);
  display: flex;
  align-items: center;
  justify-content: center;
  opacity: 0;
  transition: all 0.5s ease;
  z-index: 1;
}
.gallery .image-box:hover .overlay{
  opacity: 1;
  top: 20px;
  right: 20px;
  bottom: 20px;
  left: 20px;
}
.gallery .image-box .details{
  text-align: center;
}
.gallery .image-box .details .title{
  margin-bottom: 8px;
  font-size: 24px;
  font-weight: 600;
  position:relative;
  top: -5px;
  opacity: 0;
  visibility: hidden;
  transition: all 0.3s ease;
}
.gallery .image-box .details .category{
  font-size: 14px;
  font-weight: 400;
  position:relative;
  bottom: -5px;
  opacity: 0;
  visibility: hidden;
  transition: all 0.3s ease;
}
.gallery .image-box:hover .details .title{
  top: 0px;
  opacity: 1;
  visibility: visible;
  transition: all 0.3s 0.2s ease;
}
.gallery .image-box:hover .details .category{
  bottom: 0px;
  opacity: 1;
  visibility: visible;
  transition: all 0.3s 0.2s ease;
}
.cursor {
  position: fixed;
  width: 20px;
  height: 20px;
  border-radius: 50%;
  background: #fff;
  transition: 0.1s;
  transform: translate(-50%, -50%);
  pointer-events: none;
  mix-blend-mode: difference;
  z-index: 50;
}
</style>