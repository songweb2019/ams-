
<template>
 <div class="wai">

  <div :class="[topScroll?'topFix':'']" class="nav topFix">
      <!-- <ul class="city">
        <li :class="[isCity?'active':'']" @click="isCity=true">国内</li>
        <li :class="[isCity?'':'active']" @click="isCity=false">海外</li>
      </ul> -->
      <div  class="navInput">
          <div class="inputS f1">
              <div class="f1 t-left">
                    <div class="adr">
                      目的地
                    </div>
                    <div class="f1">
                          <input   class="searchcityin" v-model="cityName"  type="text" placeholder="城市、景点、商圈" >
                          <!-- <input v-if="!isCity"  class="searchcityin" v-model="cityName" type="text" placeholder="城市" > -->
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
import riLi from '../riliS.vue'
export default {
  inject:['reload'],
  data(){
    return {
      showS:false,
      countNum:"不限",
      ruTime:"",
      ryTimeRi:false,
      goTime:"",
      goTimeRi:false,
      countNums:0,//住了几晚
      ruDate:"",
      goDate:"",
      nameCook:"",//登陆的用户名
      isLogin:false,//是否登录
      topScroll:false,//距离顶部的距离
      cityName:""
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
       if(!this.cityName){
        this.cityName=false;
      }
      this.$router.push({path:'/list',query:{cityName:this.cityName}});
      this.reload();
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
    scrollS(){    
      var top = document.documentElement.scrollTop || document.body.scrollTop || window.pageYOffset;
        if(top>=600){
          this.topScroll=true;
        }else{
          this.topScroll=false;
        }
    },
    goM(){
      this.goTimeRi=!this.goTimeRi;
     },
    ruM(){
      //入住时间获取焦点
  
      this.ryTimeRi=!this.ryTimeRi;
    },
    checkNum(e){
      //获取自定义属性
      this.countNum=e.target.dataset.num;
      this.showS=!this.showS;
    },
    ruNum(){
      this.showS=!this.showS;  
    },
    getLogin(){
      //是否登录
      if(document.cookie!=''){
            var obj=document.cookie.split(";");
            if(obj[0].split("=")[0]=="uname"&&obj[0].split("=")[1]!=1){
              this.nameCook=obj[0].split("=")[1];
              this.isLogin=true;
            }else{
              this.isLogin=false;
            }
      }
    },
    toLogin(){
      this.$router.push({path:'/login'});
    },
    goLogin(){
      document.cookie=`uname=1`;
      this.isLogin=false;
    },
    getDay(){
      this.ruTime=this.$store.getters.getDates;
      this.goTime=this.$store.getters.getDateg;
      this.countNums=this.$store.getters.getSleep;
      this.cityName=this.$store.getters.getCityName;
    }
  },
  mounted(){
    window.addEventListener('scroll',this.scrollS);
     
  },
  created(){
    this.getLogin();
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
    cityName(){
    this.$store.commit("setCityName",this.cityName);
      }
   }
}
</script>
<style scoped>
.wai{
    width: 100%;
    margin: 0px auto;
    position: relative;
    box-sizing: border-box;
    padding-top: 16px;
    padding-bottom: 16px;
    padding-left: 45px;
    top: 50px;
    background: #f4f4f4;
}
.nav{
    background: #fff;
    margin-bottom: 50px;
    box-shadow: 0 0 4px 0 rgba(17, 70, 109, 0.01), 0 0 12px 0 rgba(0, 0, 0, 0.04);
    box-sizing: border-box;
    padding: 20px 40px;
    margin: 0 auto;
    border-radius: 12px;
    /* position: absolute;
    top: 432px;
    left: 260px; */
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
  left: -225px;
  padding-top: 7px;
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
.adr{
      float: left;
    margin-top: 20px;
    margin-right: 10px;
    font-size: 0;
        width: 24px;
    height: 24px;
    background: url("../../../assets/carsouel/theme-city-icon.png");
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
}
.inputCenter::before{
    content: '';
    position: absolute;
    left: 0;
    top: 19px;
    display: inline-block;
    width: 1px;
    height: 28px;
    background: #ebebeb;
}
.inputCenter .iconCenter{
    float: left;
    margin-top: 20px;
    margin-right: 10px;
    font-size: 0;
    width: 24px;
    height: 24px;
    background: url("../../../assets/carsouel/theme-time-icon.png");
    color: #767676;
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
    background: url("../../../assets/carsouel/night-count.png") no-repeat center;
}
.time span{
  color: #484848;
  font-size: 12px;
}
input::-webkit-input-placeholder{
color: #bdbdbd; 
}
.buxian{
  padding-left: 20px;
  position: relative;
}
.buxian::before{
      content: '';
    position: absolute;
    left: 0;
    top: 19px;
    display: inline-block;
    width: 1px;
    height: 28px;
    background: #ebebeb;
}
div.buxian>div.leftS{
    background: url("../../../assets/carsouel/theme-people-icon.png");
    float: left;
    margin-top: 20px;
    margin-right: 10px;
    font-size: 0;
    width: 24px;
    height: 24px;
    color: #c6c6c6;
}
div.buxian>div.rightS{
    float: left;
    width: 104px;
    position: relative;
    cursor: pointer;
}
div.buxian>div.rightS::after{
    content: '';
    display: inline-block;
    width: 15px;
    height: 15px;
    background: url("../../../assets/carsouel/search-down-icon.png") no-repeat center;
    position: absolute;
    left: 46px;
    top: 24px;
}
div.rightS>span{
  color: #484848;
  font-weight: 700;
  font-size: 18px;
  cursor: pointer;
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
}
.ruzhunum ul.ru{
  list-style: none outside none;
  text-align: left;
  overflow:auto
}
.ruzhunum ul.ru li{
    padding: 10px 50px;
    width: 200px;
    cursor: pointer;
    font-size: 14px;
}
.ruzhunum ul.ru li:hover{
  background: #f8f8f8;
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

div.topFix{
   width: 100%;
    position: relative;
    padding: 0;
    border-radius: 0;
    background:#FFFFFF; 
    box-shadow: 0 0 12px 0 rgba(0, 0, 0, 0.04), 0 0 6px 0 rgba(0, 0, 0, 0.08);
    height: 66px;
    line-height:66px;
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
    color: #767676;
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
    color: #767676;
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
    color: #767676;
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
  div.topFix+div.goTime,div.topFix+div.ruTime+div.goTime{
    position: fixed;
    top: 134px;
    left: 570px;
  }
  div.topFix+div.ruTime{
     position: fixed;
    top: 134px;
    left: 160px;
  }
</style>



