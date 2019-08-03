<template>
<div class="all">
    <div class="wai">
          <div class="top clearfloat">
                <div class="clearfloat">
                    <div class="priceL">
                          ¥<span v-text="main.price">858</span>/晚
                    </div>
                    <div class="suding">
                          <img src="//staticnew.mayi.com/resourcesWeb/images/v2016/suding_icon.png" alt="">
                    </div>
                </div>
                <div class="priceR">
                    <span>满3天9.8折，满7天9.5折，满15天9.0折</span>
                </div>
          </div>

          <div class="clearfloat">
                <div class="input">
                      <div class="inputD">
                          <input type="text" class="inputRu" v-model="ruTime">
                      </div>
                      <div>
                        至
                      </div>
                      <div class="inputD">
                          <input type="text" class="inputRu" v-model="goTime">
                      </div>
                </div>
                <div class="number">
                  <a href="javascript:;"><img src="//staticnew.mayi.com/resourcesWeb/images/detail/daosanjiao.png" alt=""></a>
                    <input type="text" value="1套">
                </div>
          </div>

          <div class="clearfloat priceTotal">
                  <div class="f1">
                      总计¥<span >858</span>
                  </div>
                  <div class="priceTotalR">
                      <a href="javascript:;">
                        下载APP送500元大礼包
                        <span></span>
                      </a>
                      <div class="wx">
                          <img src="../../../assets/footer/app.jpg" alt="">
                      </div>
                  </div>
          </div>  
          <div class="pay">
              <a href="javascript:;">立即预定</a>
          </div>
    </div>

    <div  class="dateS">
          <ul>
            <li class="none">
              <b>7月20日</b>
              <p>¥858</p>
            </li>
            <li>
              <b>7月21日</b>
              <p>¥908</p>
            </li>
            <li>
              <b>7月22日</b>
              <p>¥700</p>
            </li>
            <li>
              <b>7月23日</b>
              <p>¥700</p>
            </li>
            <li>
              <b>7月24日</b>
              <p>¥700</p>
            </li>
          </ul>
          <div>
            完整房态日历
          </div>
    </div>
    
    <div class="fang">
            <div class="fangFir">
                  <img src="../../../assets/exam01/head.jpg" alt="">
            </div>
            <div class="fangSec">
                <font>北京天安门10086宋掌柜在线wait you</font>
                <p class="renzheng">
                  <span>
                      <i></i>
                      身份认证
                  </span>
                  <span>
                      <i class="last"></i>
                      手机认证
                  </span>
                </p>
                <a href="javascript:;" class="msg">在线聊天</a>
                <span>拨打电话</span>
            </div>
            <div class="huifu">
                  <p><b>回复率</b><b><span>100%</span></b></p>
                  <p class="huifuP"><b>订单确认时间</b><b><span>1分钟</span></b></p>
                  <p><b>收到评价</b><b><span>28条</span></b></p>
            </div>
    </div>
</div>
</template>
<script>
import qs from 'qs'
    export default {
        data() {
            return {
              isLove:false,
              ruTime:'7月8号',
              goTime:'7月10号'
             }
        },
        methods:{
          getDay(){         
            if(this.$store.getters.getDates&&this.$store.getters.getDateg){
              this.ruTime=this.$store.getters.getDates;
              this.goTime=this.$store.getters.getDateg;
              }
          }
        },
        created(){
            this.getDay();
        },
        props:{
          main:{}
        }
    }
</script>
<style scoped>
.all{
      width: 330px;
    float: left;
    margin-left: 22px;
    margin-bottom: -1px;
}
input{
      border: 0 none;
    outline: none;
}
.wai{
    width: 330px;
    padding: 0 0 20px;
    border: 1px solid #e9e8e9;
    border-top: none;
    float: left;
    background: #FFF;
    position: relative;
}

.top{
    width: 332px;
    padding-top: 10px;
    left: -1px;
    top: 0;
    background: #eee;
    color: #fff;
    line-height: 40px;
    border-bottom: solid 1px #dce0e0;
}
.clearfloat:after {
    display: block;
    clear: both;
    content: "";
    visibility: hidden;
    height: 0;
}
.clearfloat{
  zoom: 1;
}
.priceL{
    float: left;
    padding-left: 10px;
    color: #ff5d51;
}
.priceL span{
      font-size: 22px;
    line-height: 30px;
    color: #ff5d51;
}
.suding{
  display: inline-block;
  position: relative;
    left: 0;
    top: 0px;
}
.suding img{
    width: auto;
    vertical-align: middle;
    margin-top: -4px;
    margin-left: 6px;
    cursor: pointer;
}
.priceR{
    line-height: 15px;
      padding-bottom: 10px;
    padding-right: 10px;
    display: block;
    background: url("../../../assets/detail/ge_price.png") no-repeat 10px 2px;
    padding-left: 26px;
}
.priceR span{
    color: #322c27;
    line-height: 18px;
    font-size: 12px;
    padding-right: 10px;
}
.input{
      border: 1px solid #bfbfbf;
    display: inline-block;
    margin-right: 8px;
    width: 208px;
    height: 40px;
    margin: 20px 20px 0;
    float: left;
}
.number{
      width: 70px;
    height: 40px;
    margin-top: 20px;
    float: left;
    border: 1px solid #bfbfbf;
    position: relative;
}
.input .inputD{
    width: 92px;
    position: relative;
    background-color: #fff;
    float: left;
}
.inputD+div{
      line-height: 38px;
      float: left;
}
.inputRu{
  width: 84px;
    height: 38px;
    line-height: 38px;
    color: #322c27;
    padding-left: 6px;
    padding-right: 6px;
    border: 0 solid #fff;
    text-align: center;
}
.number input{
      width: 30px;
    line-height: 38px;
    padding-left: 10px;
    color: #322c27;
    float: left;
    height: 38px;
    border: 0px;
}
.number img{
      float: right;
    margin: 10px 5px 9px;
}
.priceTotal{
      width: 290px;
    padding: 0 20px;
    height: 48px;
    position: relative;
    color: #403f3e;
}
.priceTotal span{
      font-size: 16px;
    line-height: 48px;
    font-family: Tahoma, Geneva, sans-serif;
}

.f1{
  float: left;
}
.priceTotalR{
    float: right;
    padding-right: 18px;
}
.priceTotalR a{
      line-height: 48px;
    cursor: pointer;
    color: #ff5d51;
}
.priceTotalR a span{
  width: 18px;
    height: 18px;
    right: 18px;
    top: 17px;
    background: url("../../../assets/detail/pub_erwm.png") no-repeat;
    background-position: 2px 0;
    position: absolute;
}
.wx{
  height: 80px;
  width: 80px;
  position: absolute;
  top: 30px;
  right: 14px;
  display: none;
}
.wx img{
  width: 100%;
  height: 100%;
}
.priceTotalR:hover .wx{
    display: block;
}
.pay{
      width: 290px;
    height: 40px;
    margin: 0 auto;
}
.pay a{
      width: 290px;
    font-size: 20px;
    display: block;
    text-align: center;
    line-height: 40px;
    color: #fff;
    background: #ffa800;
    border: 1px solid #ffa800;
}
.dateS{
      width: 100%;
    float: left;
    background: #fff;
    border: 1px solid #dce0e0;
    border-top: none;
}
.dateS ul{
  padding-top: 12px;
}
.dateS ul li{
      width: 65px;
    float: left;
    border-right: 1px solid #e4e7e7;
    padding: 2px 0 6px;
    line-height: 22px;
    font-family: "Hiragino Sans GB", Arial, Verdana, Tahoma,"微软雅黑" !important;
}
.dateS ul li.none{
    color: #bdbdbd !important;
    background: #f5f5f5;
}
.dateS ul li b{
  width: 100%;
    text-align: center;
    font-size: 13px;
    display: block;
    color: #322c27;
    font-weight: bold;

}
.dateS ul li p{
    font-size: 14px;
    color: #777776;
    text-align: center;
}
.dateS ul li.none p,.dateS ul li.none b{
  color: #bdbdbd !important;
}
.dateS div{
      width: 100%;
    font-size: 14px;
    line-height: 40px;
    text-align: center;
    cursor: pointer;
    color: #2ebe6a;
}
.fang{
    width: 100%;
    float: left;
    margin-top: 20px;
    border: 1px solid #dce0e0;
    background: #fff;
    position: relative;
}
.fangFir{
    width: 92px;
    height: 92px;
    display: block;
    padding: 20px;
    float: left;
    position: relative;
    z-index: 1;
}
.fangFir img{
      display: block;
    width: 92px;
    height: 92px;
    border-radius: 48px;
}
.fangSec{
      padding-top: 12px;
    float: left;
    width: 195px;
    position: relative;
}
.fangSec font{
  font-size: 16px;
    line-height: 32px;
    color: #4d4844;
    display: block;
    margin: 10px 0 0;
    text-align: center;
    text-overflow: ellipsis;
    overflow: hidden;
    white-space: nowrap;
}
.renzheng{
      color: #777776;
    font-size: 14px;
    text-align: center;
    position: relative;
}
.renzheng  span{
    display: inline-block;
    padding-left: 20px;
    line-height: 30px;
    height: 30px;
    margin-right: 5px;
}
.renzheng span:first-child{
      margin-right: 16px;
}
.renzheng  span i{
    position: absolute;
    display: block;
    width: 18px;
    height: 20px;
    left: 11px;
    top: 7px;
    background: url("../../../assets/detail/shenfenyz.png") no-repeat;
}
.renzheng span i.last{
      background-position: 0 -39px;
      left: 109px
}
.msg{
      width: 82px;
    height: 29px;
    border: 1px solid #2eba65;
    color: #62cb8b;
    display: inline-block;
    text-align: center;
    line-height: 29px;
    border-radius: 5px;
    cursor: pointer;
    margin-left: 5px;
    font-size: 14px;
}
.msg+span{
    width: 82px;
    height: 29px;
    border: 1px solid #2eba65;
    color: #62cb8b;
    display: inline-block;
    text-align: center;
    line-height: 29px;
    border-radius: 5px;
    cursor: pointer;
    margin-left: 11px;
     font-size: 14px;
}
div.huifu{
      padding: 16px 0 16px;
    width: 290px;
    margin: 0 20px;
    float: left;
    background: #fff;
    border-top: 1px solid #dce0e0;
    font-size: 14px;
    font-weight: normal;
}
div.huifu p{
      line-height: 25px;
    float: left;
    color: #545454;
    width: 88px;
}
div.huifu b{
    display: block;
    text-align: center;
    line-height: 20px;
    color: #777776;
    font-weight: normal;
}
div.huifu b span{
  color: #322c27;
  font-weight: normal;
}
.huifuP{
  width: 100px;
}
</style>