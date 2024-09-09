<template>
  <swiper
    :direction="'vertical'"
    :pagination="{
      clickable: true,
    }"
    class="mySwiper"
    @slideChange="onSlideChange"
  >
    <swiper-slide><MediaPlay :isActiveMedia="isActiveMedia"/></swiper-slide>
    <swiper-slide>
      <Introduction :isPlay="isPlay" v-if="!isWechat"/>
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
import End from '../components/End.vue';
import Introduction from '../components/Introduction.vue';
import IntroductionWechat from '../components/IntroductionWechat.vue';
import MediaPlay from '../components/MediaPlay.vue';

export default {
  components: {
    Swiper,
    SwiperSlide,
    End,
    Introduction,
    MediaPlay,
    IntroductionWechat,
  },
  setup() {
    const isPlay = ref(false);
    const isActiveMedia = ref(false);
    const isWechat = ref(false);

    const onSlideChange = (e) => {
      isPlay.value = false;
      isActiveMedia.value = false;
      if (e.activeIndex === 0) {
        isActiveMedia.value = true;
      }
      if (e.activeIndex === 1) {
        isPlay.value = true;
      }
    };
    const handleIsWechat = () => {

      const userAgent = navigator.userAgent.toLowerCase();
      // 判断是否是 iOS 系统且是微信浏览器
      if (userAgent.indexOf('iphone')!== -1 && userAgent.indexOf('micromessenger')!== -1) {
        isWechat.value = true;
      }
    }
    handleIsWechat();

    return {
      isPlay,
      isActiveMedia,
      isWechat,
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
  font-family: 'Source Han Serif CN', sans-serif, Arial;
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
