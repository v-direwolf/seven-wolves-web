<template>
  <div class="introduction-page">
    <IntroductionContent ></IntroductionContent>

    <video
      class="media-video"
      id="video-id"
      ref="mediaRef"
      src="https://v-direwolf-1259483082.cos.ap-shanghai.myqcloud.com/video-bg.mp4">
    </video>
  </div>
</template>

<script>
import IntroductionContent from './IntroductionContent.vue';
export default {
  name: 'IntroductionPage',
  props: {
    isPlay: {
      type: Boolean,
      default: false
    }
  },
  components:{
    IntroductionContent,
  },
  data() {
    return {
    }
  },
  watch: {
    isPlay(newValue) {
      if (newValue) {
        const video = document.getElementById('video-id');
        video.play();
      }
    }
  },
};
</script>

<style scoped>
.introduction-page {
  width: 100vw;
  height: 100vh;
  position: relative;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: space-between;
  color: #d3ae6d;
  box-sizing: border-box;
  padding: 60px 10px 70px 10px;
}

.media-video{
  position: absolute;
  width: 100%;
  height: 100%;
  object-fit: fill;
  top: 0;
  left: 0;
  z-index: 1;
}

p {
  margin: 0;
}

</style>
