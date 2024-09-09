import { createRouter, createWebHistory, createWebHashHistory } from 'vue-router';
import Home from './components/Start.vue';
import Main from './pages/Main.vue'

const routes = [
  {
    path: '/',
    redirect: '/home',
  },
  {
    path: '/home',
    name: 'Home',
    component: Home
  },
  {
    path: '/main',
    name: 'Main',
    component: Main
  }
];

const router = createRouter({
    history: createWebHashHistory(),
    routes
});

export default router;