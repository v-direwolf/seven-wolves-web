<template>
  <div class="introduction-page">
    <div class="introduction-page__inner">
      <div class="introduction-page__title">
        <p class="title-text title">【新商旅 行世界】</p>
        <p class="title-text desc">【New Business Travel  Explore The World】</p>
      </div>
      <div>
        <div class="intro-text">
          <p>亲历古港海贸的繁盛，作为海上丝绸之路起点的泉州，</p>
          <p>同样也是七匹狼的故乡，承载着对历史的追思，</p>
          <p>七匹狼从泉州来到米兰，横跨7000公里，重走千年时光。</p>
          <p>我们以这段旅程为灵感，向世界展示东方美学技艺，续写传奇之旅。</p>
        </div>
        <div class="intro-text-en">
          <p>Having experienced the prosperity of ancient port maritime trade, Quanzhou,</p>
          <p>as the starting point of the Maritime Silk Road, is also the hometown of SEPTWOLVES </p>
          <p>SEPTWOLVES came from Quanzhou to Milan,</p>
          <p>spanning 7,000 kilometers and retracing a thousand years of history.</p>
          <p>Drawing inspiration from this journey,</p>
          <p>we showcase the artistry of Eastern aesthetics to the world.</p>
        </div>
      </div>
      <div>
        <div class="intro-text">
          <p>全新七匹狼商旅夹克，以象征泉州的刺桐花和珠绣为灵感，</p>
          <p>融入现代科技，兼容时尚、舒适与气候应对，</p>
          <p>重构夹克新貌，定义商旅新范式。</p>
          <p>行走世界，穿七匹狼夹克，每一程都尽显风采。</p>
        </div>
        <div class="intro-text-en">
          <p>The brand-new SEPTWOLVES business travel jacket, </p>
          <p>inspired by the Erythrina flowers and bead embroidery that symbolize Quanzhou,</p>
          <p> integrates modern technology Integrating fashion, comfort,</p>
          <p>and climate adaptability, we reinvent the jacket's appearance,</p>
          <p>establishing a new norm for business travel. Exploring the world with SEPTWOLVES jacket,</p>
          <p>exudes charm and elegance in every journey.</p>
        </div>
      </div>
    </div>
    <div class="arrow-icon"></div>

    <video
      class="media-video"
      id="video-id"
      ref="mediaRef"
      x5-video-player-fullscreen="false"
      x5-playsinline="true"
      playsinline="true"
      webkit-playsinline="true"
      preload="none"
      muted="true"
      src="https://v-direwolf-1259483082.cos.ap-shanghai.myqcloud.com/video-bg.mp4">
    </video>
    <div class="overlay"></div>

  </div>
</template>

<script>

export default {
  name: 'IntroductionPage',
  props: {
    isPlay: {
      type: Boolean,
      default: false
    }
  },
  data() {
    return {
      timer: null
    }
  },
  watch: {
    isPlay(newValue) {
      if (newValue && this.$refs.mediaRef) {
        this.$refs.mediaRef.play();
      } else {
        // video.pause();
      }
    }
  },
  beforeUnmount() {
   clearTimeout(this.timer);
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
  color: #bcb095;
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
.overlay {
  position: absolute;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  z-index: 20;
  background: black;
  opacity: 0.65;
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
  z-index: 100;
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

</style>
