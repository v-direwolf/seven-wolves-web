<template>
  <div class="media-page">
    <div class="mask" @click="hancleClickPage"></div>
    <video
      src="../assets/video.mp4"
      poster="../assets/poster.jpg"
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
  cursor: pointer;
  background-image: url('../assets/play.svg');
  background-size: 100%;
  background-repeat: no-repeat;
}

.pause-button {
  position: absolute;
  width: 80px;
  height: 80px;
  top: calc((100% - 80px) / 2);
  left: calc((100% - 80px) / 2);
  cursor: pointer;
  background-image: url('../assets/pause.svg');
  background-size: 100%;
  background-repeat: no-repeat;
}
</style>
