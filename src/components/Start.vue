<template>
  <div class="start-page">
    <div class="start-page__content">
      <img src="https://v-direwolf-1259483082.cos.ap-shanghai.myqcloud.com/black-logo.png" class="black-logo"/>
      <div>
        <div class="start-page_title">
          <span>新商旅</span>
          <span>行世界</span>
        </div>
        <div class="start-page_desc">七匹狼新品发布米兰大秀</div>
      </div>
      <div>
        <div class="start-page_date">
          2024
          <span class="unit">年</span>
          9
          <span class="unit">月</span>
          22
          <span class="unit">日</span>
        </div>
        <div class="start-page_time">19:30</div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'StartPage',
}
</script>

<style scoped>
.start-page {
  background-image: url('https://v-direwolf-1259483082.cos.ap-shanghai.myqcloud.com/start-bg.png');
  background-size: 100% 100vh;
  background-repeat: no-repeat;
  width: 100%;
  height: 100%;
}

.start-page__content {
  display: flex;
  flex-direction: column;
  gap: 30px;
  align-items: center;
  color: #000000;
  position: relative;
  height: 55%;
  box-sizing: border-box;
  padding: 60px 0 0;
  justify-content: space-around;
}
.black-logo {
  width: 142px;
  height: 88px;
}
.start-page_title {
  display: flex;
  align-items: center;
  gap: 30px;
  font-size: 50px;
  line-height: 50px;
  font-weight: 700;
}
.start-page_desc {
  font-size: 24px;
  line-height: 28px;
  font-weight: 700;
  margin-top: 20px;
}
.start-page_date {
  font-size: 28px;
  line-height: 28px;
  font-weight: 700;
}
.unit {
  font-weight: 400;
}
.start-page_time {
  font-size: 28px;
  line-height: 28px;
  font-weight: 700;
  margin-top: 16px;
}
</style>
