<template>
  <div class="introduction-page">
    <IntroductionContent ></IntroductionContent>

    <video
      class="media-video"
      id="video-id"
      ref="mediaRef"
      x5-video-player-fullscreen="false"
      x5-playsinline="true"
      playsinline="true"
      webkit-playsinline="true"
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
  components: {
    IntroductionContent,
  },
  data() {
    return {
      isWechat: false
    }
  },
  watch: {
    isPlay(newValue) {
      if (newValue) {
        const vm = this;
    if (window.WeixinJSBridge) {
      vm.mediaPlay();
    } else {
      document.addEventListener('WeixinJSBridgeReady', function(){
        vm.mediaPlay();
      }, false)
    }
      }
    }
  },
  methods: {
    mediaPlay () { // 根据需要play,audio和video一般不会同时播放
      const video = document.getElementById('video-id')
      video.addEventListener('ended', this.videoEnd) // 视频播放结束之后进行后续操作
      WeixinJSBridge.invoke('getNetworkType', {}, function () {
        video.play()
      })
    }
  },
  mounted() {
    const vm = this;
    if (window.WeixinJSBridge) {
      vm.mediaPlay();
    } else {
      document.addEventListener('WeixinJSBridgeReady', function(){
        vm.mediaPlay();
      }, false)
    }
  }
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
  color: #BCAC90;
  box-sizing: border-box;
  padding: 60px 10px 70px 10px;
}

.introduction-page__inner {
  height: 100%;
  display: flex;
  flex-direction: column;
  gap: 60px;
  align-items: center;
  justify-content: center;
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

.arrow-icon {
  width: 100px;
  height: 30px;
  background-image: url('https://v-direwolf-1259483082.cos.ap-shanghai.myqcloud.com/arrow.jpg');
  background-repeat: no-repeat;
  background-size: 100%;
  animation: arrow-ani .8s infinite linear;
}

@keyframes arrow-ani {
  0% {transform: translateY(0);}
  25% {transform: translateY(-10px);}
  50% {transform: translateY(0);}
  75% {transform: translateY(10px);}
  100% {transform: translateY(0);}
}

.introduction-page__inner,
.arrow-icon {
  position: relative;
  z-index: 30;
}

p {
  margin: 0;
}

.title-text.title {
  font-size: 24px;
  line-height: 24px;
  font-weight: 700;
}

.title-text.desc {
  font-size: 14px;
  line-height: 14px;
  margin-top: 4px;
}

.intro-text {
  font-size: 10px;
  line-height: 10px;
  display: flex;
  flex-direction: column;
  gap: 6px;
}

.intro-text-en {
  margin-top: 20px;
  font-size: 10px;
  line-height: 10px;
  display: flex;
  flex-direction: column;
  gap: 6px;
}

.play-btn {
  position: absolute;
  opacity: 0;
}

</style>
