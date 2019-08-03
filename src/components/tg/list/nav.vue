
<template>
    <div class="navTop">
        <div>
            <div class="logoLeft f1">
               <router-link to="/main">
                <img src="../../../assets/logo.png" alt="">
                <span class="aiminsu">爱民宿</span>
               </router-link>
            </div>
            <ul class="fr">
              <li>
                <p class="line"></p>
                <span class="service font-f">客服热线</span>
                <ul>
                  <li>400-888-8888</li>
                </ul>
              </li>
              <li>
                <p class="line"></p>
                <router-link class="font-f regs" tag="a" target="_blank" to="/login">注册新用户送500元大礼包</router-link>
              </li>
              <li>
                <p class="line"></p>
                <router-link class="font-f" to="/list" >商旅合作</router-link>
              </li>
              <li>
                <p class="line"></p>
                <router-link class="font-f"  to="/list">帮助中心</router-link>
              </li>
              <li v-if="isLogin">
                <p class="line"></p>
                <router-link class="font-f"  to="/list" v-text="nameCook"></router-link>
                <ul class="myName">
                  <li class="t-left">
                      <router-link to="/list">我是房客</router-link>
                  </li>
                  <li class="t-left myDing">
                    <router-link to="/list">我的订单</router-link><router-link to="/main">我的账户</router-link>
                  </li>
                  <li class="t-left myDing">
                    <router-link to="/list">我的收藏</router-link><router-link to="/main">消息通知</router-link>
                  </li>
                  <li class="t-left myDing">
                    <router-link to="/list">邀请好友</router-link>
                  </li>
                  <hr class="mb5">
                  <li class="t-left myDing">
                     <div class="goLogin" @click="goLogin">退出登录</div>
                  </li>
                </ul>
              </li>
               <li v-else-if="!isLogin">
                <div class="regLogin" @click="toLogin">登录/注册</div>
              </li>
            </ul>
        </div>
    </div>

</template>
<script>
import qs from 'qs';
export default {
  data(){
    return {
        isLogin:false,//是否登录
        nameCook:"",//登陆的用户名
    }
  },
  created(){
   
  },
  methods:{
     getLogin(){
      //是否登录
      if(sessionStorage.getItem("uname")){
              this.nameCook=sessionStorage.getItem("uname");
              this.isLogin=true;
      }else{
            this.isLogin=false;
      }
    },
    toLogin(){
      this.$router.push({path:'/login'});
    },
    goLogin(){
      // document.cookie=`uname=1`;
      sessionStorage.removeItem("uname");
      localStorage.removeItem('uname');
      this.isLogin=false;
    },
    addPwd(){
         if(localStorage.uname){
            this.nameCook=localStorage.uname;
            this.isLogin=true;
           }
    }
  },
  mounted(){
  },
  created(){
    this.getLogin();
    this.addPwd();
  }
}
</script>
<style scoped>
div.navTop{
  background-color:#727272;
  height: 50px;
 line-height: 50px;
}

.nav{
  background: #fff;
    margin-bottom: 50px;
    box-shadow: 0 0 4px 0 rgba(17, 70, 109, 0.01), 0 0 12px 0 rgba(0, 0, 0, 0.04);
    box-sizing: border-box;
    padding: 20px 40px;
    margin: 0 auto;
    border-radius: 12px;
    position: absolute;
    top: 432px;
    left: 260px;
    height: 153px;
}
.nav ul.city{
    margin-bottom: 14px;
    padding-left: 2px;
}
.nav  ul.city li{
    box-sizing: border-box;
    float: left;
    margin-right: 20px;
    padding-bottom: 8px;
    font-size: 18px;
    color: #767676;
    cursor: pointer;
}
.nav ul.city li.active{
    color: #484848;
    font-weight: 700;
    border-bottom: 3px solid #484848;
}
.nav ul::after{
  display: block;
  content: "";
  clear: both;
}
.navInput{
  position: relative;
  width:970px;
  height:64px;
}
.navInput>div.inputS{
      background: #f8f8f8;
    border-radius: 100px;
    width: 764px;
    height: 64px;
    line-height: 64px;
    padding: 0 20px;
    box-sizing: border-box;
    vertical-align: middle;
    font-size: 0;
}
.f1{
  float: left;
}
.t-left{
  text-align: left;
}
.navTop{
  position: relative;
  height: 70px;
  line-height: 70px;
  z-index: 999;
  width: 100%;
}
.navTop>div{
    width: 1050px;
    margin: 0 auto;
    color: #ffffff;
    position: relative;
}
.navTop>div>div.logoLeft{
  position: relative;
  top: 9px;
}
.navTop>div>div.logoLeft>a{
    text-decoration: none;
    cursor: pointer;
    outline: none;
    color: #fff;
    font-weight: 600;
}
.navTop>div>div.logoLeft>a>img{
  width: 34px;
  height: 34px;
  margin-right: 12px;
  box-sizing: border-box;
  vertical-align: top;
  margin-top: 0;
  border: none;
  /* background: url("../../assets/logo.png") no-repeat center center;
  background-size: 200%; */
}
div.navTop>div>ul>li{
    float: left;
    margin-left: 20px;
    position: relative;
    cursor: pointer;
}
.font-f{
      font-weight: 600;
      font-size: 14px;
      color: #fff;
}
span.service::before{
    content: '';
    display: inline-block;
    width: 18px;
    height: 20px;
    background: url("../../../assets/carsouel/public_header_icon.png") no-repeat;
    margin-right: 6px;
    vertical-align: text-bottom;
    background-position: 0 -76px;
}
span.service+ul{
  display: none;
  color: #484848;
  text-align: center;
  border-radius: 6px;
  width: 141px;
  position: absolute;
  top: 52px;
  right: -32px;
  background: #fff;
  box-shadow: 0 0 12px 0 rgba(0, 0, 0, 0.04), 0 0 4px 0 rgba(0, 0, 0, 0.12);
  line-height: 20px;
   box-sizing: border-box;
}
span.service+ul::before{
    content: '';
    position: absolute;
    top: -7px;
    left: 64px;
    display: inline-block;
    width: 0;
    height: 0;
    border-width: 0 7px 7px;
    border-style: solid;
    border-color: transparent transparent #fff;
}
span.service+ul>li{
    border-radius: 6px;
    white-space: nowrap;
    padding: 10px 20px;
    margin: 0;
}
p.line{
    display: none;
    position: absolute;
    top: 0;
    background: #fff;
    height: 4px;
    width: 100%;
}
li:hover span.service+ul,li:hover p:first-child{
  display: block;
}
ul.fr li:hover a+ul{
  display: block;
}
.regs::before{
    content: '';
    display: inline-block;
    width: 18px;
    height: 20px;
    background: url("../../../assets/carsouel/public_header_icon.png") no-repeat;
    margin-right: 6px;
    vertical-align: text-bottom;
    margin-top: 0;
    background-position: 0 -36px;
}
.regs::after{
       content: '';
    display: inline-block;
    width: 15px;
    height: 15px;
    background: url("../../../assets/carsouel/public_header_icon.png") no-repeat;
    margin-left: 6px;
    vertical-align: middle;
    margin-top: 0;
    background-position: 0 -2px;
}
ul.fr li div.regLogin{

    top: 9px;
    height: 32px;
    line-height: 28px;
    width: 122px;
    font-size: 14px;
    position: relative;
    border: 2px solid #fff;
    border-radius: 20px;
    box-sizing: border-box;
    text-align: center;
    font-weight: 600;
    cursor: pointer;
}
.myName{
    display: none;
    top: 49px;
    left: -48px;
    width: 199px;
    position: absolute;
    right: -32px;
    background: #fff;
    box-shadow: 0 0 12px 0 rgba(0, 0, 0, 0.04), 0 0 4px 0 rgba(0, 0, 0, 0.12);
    line-height: 20px;
    box-sizing: border-box;
    border-radius: 6px;
}
.myName::before{
    content: '';
    position: absolute;
    top: -7px;
    left: 64px;
    display: inline-block;
    width: 0;
    height: 0;
    border-width: 0 7px 7px;
    border-style: solid;
    border-color: transparent transparent #fff;
}
ul.myName>li:first-child,ul.myName>li:last-child{
 border-radius: 6px;
}
ul.myName>li:first-child>a{
  color: #484848;
  display: inline-block;
  padding: 6px 20px;
  margin: 0;
  padding-top: 16px;
  font-weight: 600;
  font-size: 16px;
}
.myDing a{
  display: inline-block;
  padding: 6px 20px;
  margin: 0;
  color: #484848;
  text-decoration: none;
  cursor: pointer;
  outline: none;
  font-size: 14px;
}
.mb5{
  height: 1px;
  background: #ebebeb;
  border: none;
  margin-bottom: 15px;
}
div.goLogin{
  position: relative;
  box-sizing: border-box;
    width: 160px;
    height: 36px;
    line-height: 36px;
    color: #17BD88;
    border: 1px solid #17BD88;
    border-radius: 100px;
    text-align: center;
    font-size: 14px;
    margin: 5px auto 16px;
}
.logoLeft img{
      background: #fff;
    padding: 3px;
    border-radius: 5px;
}
.fr{
  float: right;
}
.aiminsu{
  position: relative;
  top: -8px;
}
</style>
