import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import login from './components/tg/login.vue'
import main from './components/tg/main.vue'
import carousel from './components/tg/carousel.vue'
import S from './components/admin/admin.vue'
import list from './components/tg/list.vue'
import detail from './components/tg/detail.vue'


Vue.use(Router)

export default new Router({
    routes: [
        { path: '/', component: main },
        //配置路径
        { path: '/login', component: login },
        { path: '/main', component: main },
        { path: '/carousel', component: carousel },
        { path: '/list', component: list },
        { path: '/S', component: S },
        { path: '/detail', component: detail }
    ]
})