<template>
  <!-- <img alt="Vue logo" src="./assets/logo.png"> -->
  <swiper
    :direction="'vertical'"
    :pagination="{
      clickable: true,
    }"
    class="mySwiper"
  >
    <swiper-slide><Start /></swiper-slide>
    <swiper-slide><MediaPlay /></swiper-slide>

    <swiper-slide><End /></swiper-slide>
    <!-- <swiper-slide><Introduction /></swiper-slide> -->

  </swiper>
</template>

<script>
import { Swiper, SwiperSlide } from 'swiper/vue';
import 'swiper/css';
import 'swiper/css/pagination';
import Start from './components/Start.vue';
import End from './components/End.vue';
// import Introduction from './components/Introduction.vue';
import MediaPlay from './components/MediaPlay.vue';

export default {
  components: {
    Swiper,
    SwiperSlide,
    Start,
    End,
    // Introduction,
    MediaPlay,
  },
  setup() {
    return {
    };
  },
};
</script>

<style>
body {
  margin: 0;
}
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  width: 100%;
  height: 100vh;
}
.swiper {
  width: 100%;
  height: 100%;
}

.swiper-slide {
  text-align: center;
  font-size: 18px;
  background: #fff;

  /* Center slide text vertically */
  display: flex;
  justify-content: center;
  align-items: center;
}

.swiper-slide img {
  display: block;
  width: 100%;
  height: 100%;
  object-fit: cover;
}
</style>
