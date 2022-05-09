import { createRouter, createWebHistory } from 'vue-router'
import ViewHome from '../views/ViewHome.vue'
import ViewPedido from '../views/ViewPedido.vue'

const routes = [
  {
    path: '/',
    name: 'HomePage',
    component: ViewHome
  },
  {
    path: '/home',
    name: 'Home',
    component: ViewHome
  },
  {
    path: '/pedido',
    name: 'Pedido',
    component: ViewPedido
  }
]

const router = createRouter({
  history: createWebHistory(),
  routes
})

export default router
