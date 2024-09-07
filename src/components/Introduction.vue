<template>
  <div class="introduction-page">
    <!-- <div class="introduction-page__bg"></div> -->
    <!-- <div class="end-page__content">
      <p class="content-text">追溯传奇 续写新章</p>
      <p class="content-text">谨献夹克灵感步履商旅新境</p>
      <p class="content-text">与七匹狼一起共赴奇幻之旅</p>
    </div>
    <div class="end-page__footer">
      <div class="end-page__footer-info">
        <span class="label">北京</span>
        <span class="value">19:30</span>
      </div>
      <div class="end-page__footer-info">
        <span class="label">米兰</span>
        <span class="value">13:30</span>
      </div>
    </div> -->


  </div>
</template>

<script>
export default {
  name: 'IntroductionPage',
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.introduction-page {

  width: 100%;
  height: 100%;
  position: relative;
  /* display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: space-around;
  color: #bcb095;
  box-sizing: border-box;
  padding: 60px 0 70px 0; */
}
.introduction-page::after {
  content: '';
  position: absolute;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  animation: onlineSprite 3s steps(12) forwards;
  /* animation-iteration-count: infinite; */
  background-image: url('../assets/introduction-bg.jpg');
  background-repeat: no-repeat;
    background-size: 100% auto;
    background-position: top;
}
@keyframes onlineSprite {
  0% {
    background-position: 0 0;
  }

  100% {
    background-position: 0 -100%;
  }
}

.end-page__content {
  font-size: 20px;
  line-height: 20px;
  display: flex;
  flex-direction: column;
  gap: 16px;
}


</style>
