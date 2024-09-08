<template>
  <swiper
    :direction="'vertical'"
    :pagination="{
      clickable: true,
    }"
    class="mySwiper"
    @swiper="onSwiper"
    @slideChange="onSlideChange"
  >
    <swiper-slide><Start /></swiper-slide>
    <swiper-slide><MediaPlay :isActiveMedia="isActiveMedia"/></swiper-slide>
    <swiper-slide>
      <!-- <Introduction :isPlay="isPlay" v-if="!isWechat"/> -->
      <IntroductionWechat :isPlay="isPlay" v-if="isWechat"/>
    </swiper-slide>
    <swiper-slide><End /></swiper-slide>

  </swiper>
</template>

<script>
import { ref } from 'vue';
import { Swiper, SwiperSlide } from 'swiper/vue';
import 'swiper/css';
import 'swiper/css/pagination';
import Start from './components/Start.vue';
import End from './components/End.vue';
import Introduction from './components/Introduction.vue';
import IntroductionWechat from './components/IntroductionWechat.vue';
import MediaPlay from './components/MediaPlay.vue';

export default {
  components: {
    Swiper,
    SwiperSlide,
    Start,
    End,
    Introduction,
    MediaPlay,
    IntroductionWechat,
  },
  setup() {
    const isPlay = ref(false);
    const isActiveMedia = ref(false);
    const isWechat = ref(false);

    const onSwiper = () => {
      // console.log('swiperswiper', swiper);
    };
    const onSlideChange = (e) => {
      isPlay.value = false;
      isActiveMedia.value = false;
      if (e.activeIndex === 1) {
        isActiveMedia.value = true;
      }
      if (e.activeIndex === 2) {
        isPlay.value = true;
      }
    };
    const handleIsWechat = () => {
      const ua = navigator.userAgent.toLowerCase();
      if (ua.match(/micromessenger/i) == 'micromessenger') {
        isWechat.value = true;
      }
    }
    handleIsWechat();
    return {
      isPlay,
      isActiveMedia,
      isWechat,
      onSwiper,
      onSlideChange,
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
