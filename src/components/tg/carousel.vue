
<template>
 <div class="banner" >
  <div class="bannerImg">
    <div class="navTop">
        <div>
            <div class="logoLeft f1">
               <router-link to="/main">
                <img src="../../assets/logo.png" alt="">
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
                <router-link class="font-f" to="/main" >商旅合作</router-link>
              </li>
              <li>
                <p class="line"></p>
                <router-link class="font-f"  to="/main">帮助中心</router-link>
              </li>
              <li v-if="isLogin">
                <p class="line"></p>
                <router-link class="font-f"  to="/main" v-text="nameCook"></router-link>
                <ul class="myName">
                  <li class="t-left">
                      <router-link to="/main">我是房客</router-link>
                  </li>
                  <li class="t-left myDing">
                    <router-link to="/main">我的订单</router-link><router-link to="/main">我的账户</router-link>
                  </li>
                  <li class="t-left myDing">
                    <router-link to="/main">我的收藏</router-link><router-link to="/main">消息通知</router-link>
                  </li>
                  <li class="t-left myDing">
                    <router-link to="/main">邀请好友</router-link>
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
    <transition-group tag="div">
      <div v-for="(v,i) in banners" :key="i"  :style="{opacity:(i+1)==n?'1':'0'}" class="active">
       <router-link to="/list">
          <img :src='"http://127.0.0.1:3000/"+v.img' alt="" @mouseenter="clearT" @mouseleave="timeout">
        <div v-if="i==0" class="homeFont">
          <p>爱民宿</p>
          <p>家庭出游新选择</p>
          <p>2000万用户的放心选择</p>
        </div>
        <div v-if="i==n-1" class="titles">
            <p><span v-text="v.title"></span></p>
            <p class="adressP" v-text="v.adress"></p>
        </div>
       </router-link>
      </div>
    </transition-group>
  </div>
 <!-- 切换的小按钮部分 -->
  <ul class="bannerBtn clear-fix">
    <!-- <li v-for='num in 3'> -->
    <li v-for='(num,i) in banners.length' :key="i">
      <a href="javascript:;" :style="{background:num==n?'#ff7800':''}" @click='change(num)' class='aBtn'></a>
    </li>
  </ul>
  <div class="pnButton" v-if="btnD">
        <a href="javascript:;" class="prev" @mouseenter="clearT" @mouseleave="timeout" @click="changeIndex(-1)"></a>
        <a href="javascript:;" class="next" @mouseenter="clearT" @mouseleave="timeout" @click="changeIndex(1)"></a>
  </div>
  <div :class="[topScroll?'topFix':'']" class="nav">
      <ul class="city">
        <li :class="[isCity?'active':'']" @click="isCity=true">国内</li>
        <li :class="[isCity?'':'active']" @click="isCity=false">海外</li>
      </ul>
      <div  class="navInput">
          <div class="inputS f1">
              <div class="f1 t-left">
                    <div class="adr">
                      目的地
                    </div>
                    <div class="f1">
                          <input v-if="isCity"  class="searchcityin" v-model="cityName1" type="text" placeholder="城市、景点、商圈" >
                          <input v-if="!isCity"  class="searchcityin" v-model="cityName2"  type="text" placeholder="城市" >
                    </div>
              </div>
              <div class="f1 inputCenter">
                  <div class="iconCenter">住宿日期</div>
                  <div class="f1">
                      <input class="checkinday" type="text" placeholder="入住日期" v-model="ruTime" @focus="ruM">
                      <div class="time">
                        <span>{{countNums}}晚</span>
                      </div>
                      <input class="checkinday"  type="text" placeholder="退房日期" v-model="goTime" @focus="goM">
                  </div>
                  <div class="f1 t-left buxian">
                      <div class="leftS">入住人数</div>
                      <div class="rightS" @click="ruNum">
                        <span>{{countNum}}</span>
                      </div>
                      <div v-if="showS" class="ruzhunum">
                            <ul class="ru" @click="checkNum">
                              <li data-num="不限">不限</li>
                              <li data-num="1人">1人</li>
                              <li data-num="2人">2人</li>
                              <li data-num="3人">3人</li>
                              <li data-num="4人">4人</li>
                              <li data-num="5人">5人</li>
                              <li data-num="6人">6人</li>
                              <li data-num="7人">7人</li>
                              <li data-num="8人+">8人+</li>
                            </ul>
                      </div>
                  </div>
              </div>
          </div>
          <div class="search fr" @click="goList">搜索民宿</div>
      </div>
  </div>
  <ri-li :checkDay="checkDay"  v-if="ryTimeRi" class="ruTime"></ri-li>
  <ri-li :checkDay="checkDays"  v-if="goTimeRi" class="goTime"></ri-li>
 
</div>
</template>
<script>
import qs from 'qs';
import riLi from './riliS.vue'
export default {
  data(){
    return {
       banners:[],
         n:1,　　　　　　　// 图片的index。
         bFlag:true,      // 锁定
         timer1:'',　　　　// 这是bFlag定时器的数据
         timer2:'',　　　　// 这是自动播放（next（））定时器的数据
         timer3:'',　　　　// 这是打开浏览器时，初始运动定时器的数据
      canClick:true,
      timer:null,
      showS:false,
      countNum:"不限",
      ruTime:"",
      ryTimeRi:false,
      goTime:"",
      goTimeRi:false,
      countNums:0,//住了几晚
      ruDate:"",
      goDate:"",
      btnD:false,
      nameCook:"",//登陆的用户名
      isLogin:false,//是否登录
      isCity:true,//是否是海外
      topScroll:false,//距离顶部的距离
      cityName1:'',//城市的名字
      cityName2:''
    }
  },
  created(){
    window.addEventListener("resize",()=>{
      this.innerWidth=window.innerWidth;
    })
  },
  methods:{
    goList(){
      //发送ajax请求
      if(!this.cityName1&&this.cityName2!=''){
        this.cityName1=this.cityName2;
      }else if(!this.cityName1&&!this.cityName2){
         this.cityName1=false;
      }
      this.$router.push({path:'/list',query:{cityName:this.cityName1}});
    },
    scrollS(){    
      var top = document.documentElement.scrollTop || document.body.scrollTop || window.pageYOffset;
        if(top>=600){
          this.topScroll=true;
        }else{
          this.topScroll=false;
        }
    },
    checkDays(data){
      this.goDate=data;
      var m=data.slice(5,6);
      var d=data.slice(7,9)
      this.goTime=m+"月"+d+"号";
      this.goTimeRi=!this.goTimeRi;
      this.$store.commit("setDateg",this.goTime);
    },
    checkDay(data){   
      this.ruDate=data;
      var m=data.slice(5,6);
      var d=data.slice(7,9)
      this.ruTime=m+"月"+d+"号";
      this.ryTimeRi=!this.ryTimeRi;
      this.$store.commit("setDates",this.ruTime);
    },
    changeIndex(m){
         if(m>0){
            if(this.n>0&&this.n<this.banners.length){
            this.n++;
            }else if(this.n>=this.banners.length){
              this.n=1;
            }
         }else{
           if(this.n>1){
            this.n--;
            }else if(this.n<=1){
              this.n=this.banners.length;
            }
         }
    },
    getDay(){
      this.ruTime=this.$store.getters.getDates;
      this.goTime=this.$store.getters.getDateg;
      this.countNums=this.$store.getters.getSleep;
      this.cityName=this.$store.getters.getCityName;
    },
    goM(){
      this.goTimeRi=!this.goTimeRi;
     },
    //  showQ(e){//走的日期时间
    //       this.goTimeRi=false;
    //       var d = new Date(e.target.dataset.se);  
    //       this.goDate=d; 
    //       var  month= (d.getMonth() + 1);
    //       var da= d.getDate();
    //       var youWant= month+ '月' + da+'号'; 
    //       this.goTime= youWant;
    //       if(isNaN(month)){
    //         var youWant= new Date().getMonth()+1+'月'+new Date().getDate()+'号'; 
    //         this.goTime= youWant;
    //       }
    //   },
    ruM(){
      //入住时间获取焦点
  
      this.ryTimeRi=!this.ryTimeRi;
    },
    //  showT(e){
    //     this.ryTimeRi=false;
    //       var d = new Date(e.target.dataset.se);   
    //       this.ruDate=d;  
    //       var  month= (d.getMonth() + 1);
    //       var da= d.getDate();
    //       var youWant= month+ '月' + da+'号'; 
    //       this.ruTime= youWant;
    //       if(isNaN(month)){
    //         var youWant= new Date().getMonth()+1+'月'+new Date().getDate()+'号'; 
    //         this.ruTime= youWant;
    //       }
    //   },
    checkNum(e){
      //获取自定义属性
      this.countNum=e.target.dataset.num;
      this.showS=!this.showS;
    },
    ruNum(){
      this.showS=!this.showS;  
    },
    car(){
      //发送ajax请求轮播图片
       this.axios.post("/product/car",qs.stringify({
             
          })).then(result=>{
            this.banners=result.data;
          })

    },
   next(){
        // 下一张　　　
        // 为了避免连续点击。让bFlag运动结束后再变为true。　　　　　　　　　　　　　　
        if(this.bFlag){　　　　　　　　　　　　
            this.bFlag=false;
            this.clearT();　　　　　　　　　   // 运动之前，清除所有定时器。
            this.n=this.n+1==this.banners.length+1?1:this.n+1;　  // 下一张，如果是第4张，就返回第一张。
            // 调用timeout函数，延迟进入下一次轮播，以便可以点击切换。
            this.timeout();
        }
    },
    clearT(){
        this.btnD=true;
        // 清除所有定时器　　　　　　　　　　　　　　　
        clearTimeout(this.timer1);
        clearTimeout(this.timer2);
        clearTimeout(this.timer3);
    },
    timeout(){　　　　
       this.btnD=false;　　
        // 运动结束后设置bFlag为true，并且3秒后调用next，进行下一次运动。
        // 运动时间是1s。
        this.timer2=setTimeout(()=>{
            this.bFlag=true
        },1000);
        this.timer1=setTimeout(()=>{
            this.next()
        },4000);
    },
    change(num){　　　　　　　　　　
        // 点击按钮，切换到对应图片，需要获取index。
        if(this.bFlag){
            this.bFlag=false;
            this.clearT();
            this.n=num;　　　　　　　         // 将显示图片变为选中的那一张。　　　　
            this.timeout()
        }
    },
    getNum(){
       var d1=new Date(this.goDate).getTime();
         var d2=new Date(this.ruDate).getTime();
         var d3=d1-d2;
         if(d3>0){
           this.countNums=Math.floor(d3 / 1000 / 60 / 60 / 24);
           this.$store.commit("setSleep",this.countNums);
         }else{
            this.countNums=0;
            this.$store.commit("setSleep",this.countNums);
         }
    },
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
    this.timer3=setTimeout(this.next,4000);
    window.addEventListener('scroll',this.scrollS);
  },
  created(){
    this.car();
    this.getLogin();
    this.addPwd();
    this.getDay();
  },
  components:{
     "riLi":riLi
   },
   watch:{
    goDate(){
       this.getNum();
     },
    ruDate(){
      this.getNum();
    },
    cityName1(){
    this.$store.commit("setCityName",this.cityName1);
      },
       cityName2(){
    this.$store.commit("setCityName",this.cityName2);
      }
   }
}
</script>
<style scoped lang="scss">
ul li{
  list-style: none;
}
.banner{
    position: relative;
}
.bannerImg{
    position: relative;
    height: 560px;
    overflow: hidden;   
    div{
        position: absolute;
        top:0;
        left: 0;
        &.homeFont{
             position: absolute;
            left: 270px;
            top: 150px;
            p{
              font-size: 18px;
              color: #fff;
              &:first-child{
                  font-size: 36px;
                  font-weight: 700;
              }
              &:nth-child(1){
                   font-size: 48px;
                   font-weight: 700;
              }
            }
        }
        &.active{
          transition:all 2s linear;
          width: 1583px;
          height: 560px;
        }
    } 
}

.bannerBtn{
    height:50px;
    width: 200px;
    position:absolute;
    left:769px;
    top: 405px;
    margin-left:-100px;
    bottom:22px;
    text-align:center;
    li{
        margin: 0 13px;
        width: 20px;
        height: 20px;
        border-radius: 50%;
        float:left;
        background: rgba(255,255,255,.4);
        a{
          display: block;
          width: 14px;
          height: 14px;
          border-radius: 50%;
          margin: 3px;
          &.aBtn{
               transition:all 0.6s linear;
          }
        }
    }
}


div.active img{
  width: 100%;
  height: 100%;
}
.bannerImg div.titles{
  position: absolute;
  left: 940px;
  top: 372px;
  text-align: right;
}
.adressP{
  display:block;
  margin-top:8px;
  color:#fff;
  font-weight:600;
  font-size:14px;
}
div.titles p:first-child{
    display: inline-block;
    background: #fff;
    padding: 2px 6px;
    height: 26px;
    box-sizing: border-box;
    border-radius: 6px;
    color: #484848;
    font-weight: 600;
    font-size: 14px;
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
    ul.city{
        margin-bottom: 14px;
        padding-left: 2px;
        li{
            box-sizing: border-box;
            float: left;
            margin-right: 20px;
            padding-bottom: 8px;
            font-size: 18px;
            color: #767676;
            cursor: pointer;
            &.active{
                  color: #484848;
                  font-weight: 700;
                  border-bottom: 3px solid #484848;
            }
        }
    }
    ul::after{
      display: block;
      content: "";
      clear: both;
    }
}
.navInput{
  position: relative;
  width:970px;
  height:64px;
  >div.inputS{
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
}

.f1{
  float: left;
}
.t-left{
  text-align: left;
}
.adr{
      float: left;
    margin-top: 20px;
    margin-right: 10px;
    font-size: 0;
        width: 24px;
    height: 24px;
    background: url("../../assets/carsouel/theme-city-icon.png");
    background-size: cover;
    color: #767676;
}
.searchcityin{
      color: #bdbdbd;
  background: #f8f8f8;
  width: 178px;
  font-weight: 700;
  font-size: 18px;
  border: 0px;
  line-height: 64px;
  outline:none;
}
.inputCenter{
    text-align: center;
    position: relative;
    padding: 0 20px;
    &::before{
        content: '';
        position: absolute;
        left: 0;
        top: 19px;
        display: inline-block;
        width: 1px;
        height: 28px;
        background: #ebebeb;
    }
    .iconCenter{
        float: left;
        margin-top: 20px;
        margin-right: 10px;
        font-size: 0;
        width: 24px;
        height: 24px;
        background: url("../../assets/carsouel/theme-time-icon.png");
        color: #767676;
    }
}
.checkinday{
      background: #f8f8f8;
      width: 96px;
      color: #bdbdbd;
      font-weight: 700;
      font-size: 18px;
      outline: none;
      border: 0px;
      line-height: 64px;
}
.time{
    display: inline-block;
    margin-right: 25px;
    width: 51px;
    height: 17px;
    line-height: 17px;
    vertical-align: baseline;
    background: url("../../assets/carsouel/night-count.png") no-repeat center;
    span{
        color: #484848;
        font-size: 12px;  
    }
}

input::-webkit-input-placeholder{
    color: #bdbdbd; 
}
.buxian{
  padding-left: 20px;
  position: relative;
  &::before{
      content: '';
      position: absolute;
      left: 0;
      top: 19px;
      display: inline-block;
      width: 1px;
      height: 28px;
      background: #ebebeb;
  }
  >div.leftS{
    background: url("../../assets/carsouel/theme-people-icon.png");
    float: left;
    margin-top: 20px;
    margin-right: 10px;
    font-size: 0;
    width: 24px;
    height: 24px;
    color: #c6c6c6;
  }
  >div.rightS{
    float: left;
    width: 104px;
    position: relative;
    cursor: pointer;
    span{
      color: #484848;
      font-weight: 700;
      font-size: 18px;
      cursor: pointer;
    }
    &::after{
      content: '';
      display: inline-block;
      width: 15px;
      height: 15px;
      background: url("../../assets/carsouel/search-down-icon.png") no-repeat center;
      position: absolute;
      left: 46px;
      top: 24px;
    }
  }
}



.fr{
  float: right;
}
.search{
      background: #21C48E;
    background-image: linear-gradient(-135deg, #22CA92 0%, #21C48E 100%);
    background-image: -moz-linear-gradient(-135deg, #22CA92 0%, #21C48E 100%);
    background-image: -webkit-linear-gradient(-135deg, #22CA92 0%, #21C48E 100%);
    background-image: -ms-linear-gradient(-135deg, #22CA92 0%, #21C48E 100%);
    border-radius: 100px;
    width: 196px;
    height: 60px;
    line-height: 60px;
    text-align: center;
    cursor: pointer;
    font-size: 24px;
    position: relative;
    color: #fff;
    font-weight: 600;
}
.ruzhunum{
    overflow: hidden;
    outline: none;
    padding: 0;
    height: 345px;
    line-height: normal;
    position: absolute;
    top: 96px;
    left: 0;
    background: #FFFFFF;
    box-shadow: 0 0 4px 0 rgba(17, 70, 109, 0.01), 0 0 12px 0 rgba(0, 0, 0, 0.04);
    z-index: 10000;
    box-sizing: border-box;
    border-radius: 12px;
    color: #484848;
    ul.ru{
      list-style: none outside none;
      text-align: left;
      overflow:auto;
      li{
          padding: 10px 50px;
          width: 200px;
          cursor: pointer;
          font-size: 14px;
          &:hover{
              background: #f8f8f8;
          }
      }
    }
}



.ruTime{
  position:absolute;
  left:306px;
  top:566px;
  z-index: 999;
}
.goTime{
  position:absolute;
  left:716px;
  top:566px;
   z-index: 999;
}
.prev{
    background: url("../../assets/carsouel/slide-jiantou.png") no-repeat -61px -141px;
    z-index: 999;
    position: absolute;
    float: left;
    left: 60px;
    top: 270px;
    width: 59px;
    height: 59px;
    margin-top: -29.5px;
}
.next{
    width: 59px;
    height: 59px;
    background: url("../../assets/carsouel/slide-jiantou.png") no-repeat -2px -141px;
    z-index: 999;
    position: absolute;
    top: 270px;
    right: 60px;
}
.navTop{
  position: relative;
  height: 70px;
  line-height: 70px;
  z-index: 999;
  width: 100%;
  >div{
    width: 1050px;
    margin: 0 auto;
    color: #ffffff;
    position: relative;
    >ul>li{
      float: left;
      margin-left: 20px;
      position: relative;
      cursor: pointer;
    }
    >div.logoLeft{
        position: relative;
        top: 15px;
        >a{
            text-decoration: none;
            cursor: pointer;
            outline: none;
            color: #322c27;
            img{
                 width: 40px;
                height: 40px;
                margin-right: 12px;
                box-sizing: border-box;
                vertical-align: top;
                margin-top: 0;
                border: none;
            }
        }
    }
  }
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
    background: url("../../assets/carsouel/public_header_icon.png") no-repeat;
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
    background: url("../../assets/carsouel/public_header_icon.png") no-repeat;
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
    background: url("../../assets/carsouel/public_header_icon.png") no-repeat;
    margin-left: 6px;
    vertical-align: middle;
    margin-top: 0;
    background-position: 0 -2px;
}
ul.fr li div.regLogin{
    top: 19px;
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
div.topFix{
   width: 100%;
    position: fixed;
    top: 0;
    left: 0;
    padding: 0;
    border-radius: 0;
    background: rgba(72, 72, 72, 0.9);  
    box-shadow: 0 0 12px 0 rgba(0, 0, 0, 0.04), 0 0 6px 0 rgba(0, 0, 0, 0.08);
    height: 50px;
    line-height: 50px;
    z-index: 99999;
    margin-bottom: 50px;
    box-sizing: border-box
}
div.topFix>ul.city{
  display: none;
}
div.topFix>div{
    width: 1050px;
    margin: 0 auto;
}
div.topFix>div.navInput>div.inputS{
    background: none;
    width: auto;
    height: 50px;
    line-height: 50px;
    padding: 0;
    border-radius: 100px;
    box-sizing: border-box;
    vertical-align: middle;
    font-size: 0;
}
div.topFix div.adr{
    float: left;
    color: #fff;
    font-size: 14px;
    background: none;
    margin: 0;
    width: auto;
    height: auto;
}
div.topFix div.adr+div{
    float: left;
    width: 217px;
    background: #f8f8f8;
    height: 32px;
    line-height: 46px;
    border-radius: 3px;
    padding: 0 20px;
    box-sizing: border-box;
    margin-top: 9px;
    margin-left: 15px;
}
div.topFix .searchcityin{
    background: #f8f8f8;
    font-size: 14px;
    color: #484848;
    height: 17px;
    width: 177px;
}
div.topFix  div.inputCenter::before,div.topFix  div.buxian::before{
  display: none;
}
div.topFix div.iconCenter{
  float: left;
    color: #fff;
    font-size: 14px;
    background: none;
    margin: 0;
    width: auto;
    height: auto;
}
div.topFix div.iconCenter+div{
    float: left;
    width: 279px;
    text-align: left;
    background: #f8f8f8;
    height: 32px;
    line-height: 43px;
    border-radius: 3px;
    padding: 0 20px;
    box-sizing: border-box;
    margin-top: 9px;
    margin-left: 15px;
}
div.topFix div.iconCenter+div .checkinday{
      background: #f8f8f8;
    font-size: 14px;
    color: #BDBDBD;
    height: 17px;
    width: 77px;
    font-weight: 700;
}
div.topFix div.iconCenter+div .time{
    text-align: center;
    margin-left: 0;
    margin-right: 20px;
    }
div.topFix div.inputCenter  div.leftS{
    float: left;
    color: #fff;
    font-size: 14px;
    background: none;
    margin: 0;
    width: auto;
    height: auto;
    }
div.topFix div.inputCenter  div.rightS{
    float: left;
    width: 104px;
    background: #f8f8f8;
    height: 32px;
    line-height: 32px;
    border-radius: 3px;
    padding: 0 20px;
    box-sizing: border-box;
    margin-top: 9px;
    margin-left: 15px;
  }
  div.topFix div.inputCenter  div.rightS span{
    font-size: 14px;
    color: #484848;
    font-weight: 400;
  }
    div.topFix div.inputCenter  div.rightS::after{
      margin-left: 20px;
      width: 12px;
      height: 12px;
      background-size: cover;
      -moz-background-size: cover;
      -webkit-background-size: cover;
      -o-background-size: cover;
      top: 10px;
    }
  div.topFix div.search{
    height: 32px;
    line-height: 32px;
    width: 124px;
    margin-top: 9px;
    font-size: 16px;
    padding: 0;
  }
  div.topFix div.ruzhunum{
    top:50px;
  }
  div.topFix+div.goTime,div.topFix+div.ruTime,div.topFix+div.ruTime+div.goTime{
    position: fixed;
    top: 50px;
  }
  .logoLeft img{
      background: #fff;
    padding: 3px;
    border-radius: 5px;
}
</style>


