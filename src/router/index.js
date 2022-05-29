import { createRouter, createWebHistory } from 'vue-router'
import ViewHome from '../views/ViewHome.vue'
import ViewPedido from '../views/ViewPedido.vue'
import ViewSalgado from '../views/ViewSalgado.vue'

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
  },
  {
    path: '/salgado',
    name: 'Salgados',
    component: ViewSalgado
  }
]

const router = createRouter({
  history: createWebHistory(),
  routes
})

export default router
