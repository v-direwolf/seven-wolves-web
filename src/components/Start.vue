<template>
  <div class="start-page" @click="goToHome">
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
    <div class="location-icon"></div>
    <div class="start-footer-icon"></div>
  </div>
</template>

<script setup>
import { useRouter } from 'vue-router';

const router = useRouter();

const goToHome = () => {
    router.push('/main');
};
</script>

<style scoped>
.start-page {
  background-image: url('https://v-direwolf-1259483082.cos.ap-shanghai.myqcloud.com/start-bg.png');
  background-size: 100% 100vh;
  background-repeat: no-repeat;
  width: 100%;
  height: 100%;
  position: relative;
  cursor: pointer;
}

.location-icon {
  position: absolute;
  width: 38px;
  height: 38px;
  background-image: url('https://v-direwolf-1259483082.cos.ap-shanghai.myqcloud.com/location.png');
  background-size: 100%;
  bottom: 56px;
  left: calc((100% - 38px) / 2);
  animation: location-ani 1.5s infinite linear;
}

@keyframes location-ani {
  0% {transform: translateY(0);}
  25% {transform: translateY(-10px);}
  50% {transform: translateY(0);}
  75% {transform: translateY(-10px);}
  100% {transform: translateY(0);}
}


.start-footer-icon {
  position: absolute;
  width: 100px;
  height: 40px;
  background-repeat: no-repeat;
  background-image: url('https://v-direwolf-1259483082.cos.ap-shanghai.myqcloud.com/station-info-icon.jpg');
  background-size: 100%;
  bottom: 20px;
  left: calc((100% - 100px) / 2);
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
  font-weight: 700;
}
.start-page_time {
  font-size: 28px;
  line-height: 28px;
  font-weight: 700;
  margin-top: 16px;
}
</style>
