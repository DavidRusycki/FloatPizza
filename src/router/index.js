import { createRouter, createWebHistory } from 'vue-router'
import ViewHome from '../views/ViewHome.vue'
import ViewPedido from '../views/ViewPedido.vue'
import ViewSalgado from '../views/ViewSalgado.vue'
import ViewDoce from '../views/ViewDoce.vue'
import ViewBorda from '../views/ViewBorda.vue'
import ViewBebida from '../views/ViewBebida.vue'

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
  },
  {
    path: '/doce',
    name: 'Doces',
    component: ViewDoce
  },
  {
    path: '/borda',
    name: 'Bordas',
    component: ViewBorda
  },
  {
    path: '/bebidas',
    name: 'Bebidas',
    component: ViewBebida
  }
]

const router = createRouter({
  history: createWebHistory(),
  routes
})

export default router
