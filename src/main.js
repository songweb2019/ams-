import Vue from 'vue'
import App from './App.vue'
import router from './router'
// import store from './store'
import axios from './axios'
//6.引入Vuex.js文件
import Vuex from 'vuex' //完整引入vuex

import Calendar from 'vue-calendar-component';
Vue.use(Vuex); //将vuex注册vue
Vue.use(Calendar, { locale: 'en', color: 'gray' })

var store = new Vuex.Store({
    //vuex中全局共享的数据  
    state: {
        dates: "",
        dateg: "",
        sleepNum: "",
        cityName: ""
    },
    //修改vuex中全局共享的数据
    mutations: {
        //
        setDates(state, name) {
            state.dates = name;
            //this.$store.commit("serName"); 设置

        },
        setDateg(state, name) {
            state.dateg = name;
            //this.$store.commit("serName"); 设置

        },
        setSleep(state, name) {
            state.sleepNum = name;
            //this.$store.commit("serName"); 设置

        },
        setCityName(state, name) {
            state.cityName = name;
            //this.$store.commit("serName"); 设置

        }
    },
    //获取vuex中全局共享的数据
    getters: {
        getDates(state) {
            return state.dates;
            //$store.getters.方法   获取
        },
        getDateg(state) {
            return state.dateg;
            //$store.getters.方法   获取
        },
        getSleep(state) {
            return state.sleepNum;
            //$store.getters.方法   获取
        },
        getCityName(state) {
            return state.cityName;
            //$store.getters.方法   获取
        }
    }
})
Vue.config.productionTip = false
new Vue({
    router,
    store,
    render: h => h(App)
}).$mount('#app')