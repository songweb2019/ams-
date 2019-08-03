
<template>
  <div>
         <!-- this.$route.query.id 获取地址栏查询字符串-->
         <nav-top></nav-top>
         <detail-top :main="main"></detail-top>
         <div class="topFix" v-if="topScroll">
              <ul>
                <li :class="[topH<600?'active':'']"><a href="javascript:;" @click="change(100)" >图片</a></li>
                <li :class="[(topH>=600)&&(topH<1600)?'active':'']"><a href="javascript:;" @click="change(600)">关于房源</a></li>
                <li :class="[(topH>=1600)&&(topH<3400)?'active':'']"><a href="javascript:;" @click="change(1600)">评价</a></li>
                <li :class="[(topH>=3400)&&(topH<4143)?'active':'']"><a href="javascript:;" @click="change(3543)">地图</a></li>
                <li class="price">
                    <div class="clearfloat">
                        <div class="priceL">
                              ¥<span v-text="main.price">858</span>/晚
                        </div>
                        <div class="suding">
                              <img src="//staticnew.mayi.com/resourcesWeb/images/v2016/suding_icon.png" alt="">
                        </div>
                    </div>
                </li>
              </ul>
         </div>
         <div class="center">
             <detail-car class="left" :imgs="imgs" :smallImgs="smallImgs"></detail-car>
             <div class="centerS">
               <ul>
                <li>
                  <div class="li1">
                    <img src="../../assets/detail/room_ping.png" alt="">
                    <span>整套出租</span>
                  </div>
                  <p>2室0厅1厨1阳台·58m²</p>
                </li>
                <li>
                  <div class="li1">
                    <img src="../../assets/detail/ruzhu.png" alt="">
                    <span>可住4人</span>
                  </div>
                  <p>共2张床· 不可加床</p>
                </li>
                <li>
                  <div class="li1">
                    <img src="../../assets/detail/haoping.png" alt="">
                    <span>100%好评</span>
                  </div>
                  <p v-text="main.ping+'条评价'"></p>
                </li>
               </ul>
             </div>
             <detail-rig :main="main" class="right" :class="[(topScroll)&&(topH<=2900)?'topRight':'']"></detail-rig>
         </div>
        <detail-bottom></detail-bottom>
        <div class="ditu">
          <h6>房源地址:<span v-text="main.subtitle"></span></h6>
          <ditu   class="di"></ditu>
        </div>
        <footers class="footers"></footers>
  </div>
</template>
<script>
import qs from 'qs'
import navTop from './list/nav.vue'
import detailTop from './detail/detailTop.vue'
import detailCar from './detail/detailCar.vue'
import detailRig from './detail/detailRig.vue'
import footers from './footer.vue'
import detailBottom from './detail/detailBottom.vue'
import ditu from './detail/ditu.vue'
export default {
    data() {
            return {
              isLove:false,
              imgs:[],//详情轮播图大图
              smallImgs:[],//详情轮播图大图
              main:'',
              hid:1,
              topScroll:false,
              topH:0
             }
        },
        methods:{
          change(i){
            document.documentElement.scrollTop=i;
          },
          scrollS(){    
                var top = document.documentElement.scrollTop || document.body.scrollTop || window.pageYOffset;                 
                  this.topH=top;
                  if(top>=210){
                        this.topScroll=true;
                  }else{
                     this.topScroll=false;
                  }
                  //210
          },
           queryHid(){
              if(this.$route.query.hid){
                       this.hid =this.$route.query.hid;
                }  
             this.axios.post("/product/detail",qs.stringify({
                         hid:this.hid
            })).then(result=>{
                if(result.data.code>0){
                      var list=result.data.data[0];
                      this.main=result.data.main[0];
                      var arr = Object.values(list);
                      for(var i=0;i<=10;i++){
                            this.imgs[i]=arr[i];                    
                      }
                      for(var i=11;i<=21;i++){
                            this.smallImgs[i-11]=arr[i];                    
                      }

                }
                  
            })
           }
        },
        created(){
              this.queryHid();
        },
        mounted(){
          window.addEventListener('scroll',this.scrollS);
        },
        components:{
          "navTop":navTop,
          "detailTop":detailTop,
          "detailCar":detailCar,
          "detailRig":detailRig,
          "detailBottom":detailBottom,
          "footers":footers,
          "ditu":ditu
       }
}
</script>
<style scoped lang="scss">
.center{
    width: 1190px;
    margin: 0 auto
}
.left{
    width: 836px;
    height: 486px;
    position: relative;
    float: left;
}
.right{
  position: relative;
  top: -484px;
  left: 50px;
}
.footers{
  margin-top: 50px;
}
.topFix{
  position: fixed;
    left: 0;
    top: 0;
    z-index: 1000;
    width: 100%;
    background: #fff;
    border: 1px solid #e3e6e6;
    height: 50px;
}
.topFix {
    ul{
      width: 1190px;
      margin: 0 auto;
      li{
        float: left;
        a{
          width: 102px;
          height: 48px;
          line-height: 50px;
          text-align: center;
          font-size: 16px;
          color: #322c27;
          display: block;
        }
        &.active a{
          border-bottom: 2px solid #22bb62;
        }
        &.price{
            float: right;
            position: relative;
            width: 332px;
            padding-top: 10px;
            left: -1px;
            top: 0;
            background: #eee;
            color: #fff;
            line-height: 40px;
            border-bottom: solid 1px #dce0e0;
        }
      }
    }
      
}


.clearfloat{
  zoom: 1;
  &::after{
      display: block;
      clear: both;
      content: "";
      visibility: hidden;
      height: 0;
  }
}
.priceL{
    float: left;
    padding-left: 10px;
    color: #ff5d51;
    span{
      font-size: 22px;
      line-height: 30px;
      color: #ff5d51;
    }
}

.suding{
  display: inline-block;
  position: relative;
  left: 0;
  top: 0px;
  img{
    width: auto;
    vertical-align: middle;
    margin-top: -4px;
    margin-left: 6px;
    cursor: pointer;
  }
}

.topRight{
  position: fixed;
    left: 1032.5px;
    top: 10px;
    z-index: 200;
}
.ditu{
    position: relative;
    padding-bottom: 40px;
    margin: 0 auto;
    background: #fff;
    width: 1190px;
    .di{
      border: 1px solid #dce0e0;
    }
    h6{
      position: absolute;
      left: 0;
      top: 0;
      background: rgba(0,0,0,0.5);
      color: #fff;
      line-height: 40px;
      font-size: 14px;
      z-index: 1;
      padding: 0 20px;
    }
}
.centerS{
   width: 780px;
    float: left;
    padding-top: 14px;
    padding-bottom: 20px;
    overflow: hidden;
    ul li{
        width: 256px;
        float: left;
        text-align: center;
         p{
            font-size: 14px;
            color: #777776;
          }
        .li1{
          display: inline-block;
          &::after{
            display: block;
            clear: both;
            content: "";
            visibility: hidden;
            height: 0;
          }
          img{
            display: block;
            margin-right: 4px;
            width: 28px;
            height: 28px;
            float: left;
          }
          span{
             float: left;
            font-size: 18px;
            line-height: 28px;
            color: #322c27;
            margin-top: 4px;
          }
        }
    }
}
</style>


