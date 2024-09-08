<template>
  <div class="media-page">
    <div class="mask" @click="hancleClickPage"></div>
    <video
      src="https://v-direwolf-1259483082.cos.ap-shanghai.myqcloud.com/video.mp4"
      poster="https://v-direwolf-1259483082.cos.ap-shanghai.myqcloud.com/poster.jpg"
      ref="videoPlayer"
      class="video-js"
      x5-video-player-fullscreen="false"
      x5-playsinline="true"
      playsinline="true"
      webkit-playsinline="true"
      preload="none"
    >
    </video>
    <div class="play-button" @click="handleplay" v-show="isPlay">
    </div>
    <div class="pause-button" @click="handlepause" v-show="visiblePauseBtn">
      <div></div>
      <div></div>
    </div>

  </div>
</template>

<script>
export default {
  props: {
    isActiveMedia: {
      type: Boolean,
      default: false,
    }
  },
  data() {
   return {
    isPlay: true,
    visiblePauseBtn: false,
   }

  },
  watch: {
    isActiveMedia(newValue) {
      if (!newValue && !this.isPlay) {
        this.handlepause();
      }
    }
  },
  methods: {
    handleplay() {
      this.$refs.videoPlayer.play();
      this.isPlay = false,
      this.visiblePauseBtn = true;
      setTimeout(() => {
        this.visiblePauseBtn = false;
      }, 2000);
    },
    handlepause() {
      this.$refs.videoPlayer.pause();
      this.isPlay = true;
      this.visiblePauseBtn = false;
    },
    hancleClickPage() {
      if (!this.play) {
        this.handlepause();
      }
    }
  }
};
</script>

<style scoped>
.media-page {
  width: 100%;
  height: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: space-around;
  box-sizing: border-box;
  position: relative;
}
.mask {
  position: absolute;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
}
video {
  width: 100%;
  height: 100%;
  object-fit: fill;
  pointer-events: none;
}
.play-button {
  position: absolute;
  width: 80px;
  height: 80px;
  top: calc((100% - 80px) / 2);
  left: calc((100% - 80px) / 2);
  border: 4px solid #fff;
  border-radius: 100%;
  box-sizing: border-box;
  cursor: pointer;
}
.play-button::after {
  content: "";
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%, -50%);
  width: 0;
  height: 0;
  border-style: solid;
  border-width: 15px 0 15px 25px;
  border-color: transparent transparent transparent white;
}
.pause-button {
  position: absolute;
  width: 80px;
  height: 80px;
  top: calc((100% - 80px) / 2);
  left: calc((100% - 80px) / 2);
  border: 4px solid #fff;
  border-radius: 100%;
  box-sizing: border-box;
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 20px;
  opacity: 0;
  transition:  all 0.4s;
}

.media-page:hover .pause-button {
  opacity: 0.85;
}
.pause-button div  {
  width: 4px;
  height: 40px;
  background: #fff;
  border-radius: 4px;
}
</style>
