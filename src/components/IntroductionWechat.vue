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
      src="../assets/video-bg.mp4">
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
