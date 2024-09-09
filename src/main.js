import { createApp } from 'vue';
import App from './App.vue';
import './assets/style.css';  // 引入全局样式
import router from './router';

const app = createApp(App);
app.use(router);
app.mount('#app');