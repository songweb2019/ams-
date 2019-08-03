//将引入axios库单独保存
//减少main.js代码量
//1:引入vue实例
import Vue from 'vue'
//2：引入axios库
import axios from 'axios'
//3：发送请求保存session信息
axios.defaults.withCredentials = true
    //设置请求头信息
    // axios.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded';
    //引入qs模块
    //4：设置请求基础路径
axios.defaults.baseURL = "http://127.0.0.1:3000/"
    //5：将axios注册vue实例  axios不支持use注册

Vue.prototype.axios = axios
    //在main.js引入axios.js文件