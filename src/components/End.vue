<template>
  <div class="end-page">
    <img src="https://v-direwolf-1259483082.cos.ap-shanghai.myqcloud.com/white-logo.png" class="white-logo"/>
    <div class="end-page__content">
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
    </div>


  </div>
</template>

<script>
export default {
  name: 'EndPage',
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.end-page {
  background-image: url('https://v-direwolf-1259483082.cos.ap-shanghai.myqcloud.com/end-bg.png');
  background-size: 100% 100vh;
  background-repeat: no-repeat;
  width: 100%;
  height: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: space-around;
  color: #bcb095;
  box-sizing: border-box;
  padding: 60px 0 70px 0;
}
.white-logo {
  width: 142px;
  height: 88px;
}
.end-page__content {
  font-size: 20px;
  line-height: 20px;
  display: flex;
  flex-direction: column;
  gap: 16px;
}
.content-text {
  margin: 0;
}

.end-page__footer {
  display: flex;
  flex-direction: column;
  gap: 40px;
}

.end-page__footer-info {
  display: flex;
  gap: 20px;
  font-size: 26px;
  line-height: 28px;
  position: relative;
}

.end-page__footer-info:last-child::before {
  position: absolute;
  content: '';
  top: -20px;
  left: 0;
  width: 100%;
  height: 1px;
  background-color: #a0937a;
  opacity: 0.5;
}
.value {
  font-weight: 700;
}

</style>
