<template>
    <div>
          <div class="path">
              <router-link to="/main">首页 </router-link>><router-link  :to="{path:'/list',query:{cityName:main.city}}"> <span v-text="main.city"></span>短租房</router-link>
          </div>
          <div class="main-1">
                  <div class="desWord">
                    <h2>
                      <a href="javascript:;" v-text="main.title">「我宅」「有院·有竹」窗前有竹的房间</a>
                      <img class="youxuan" src="//staticnew.mayi.com/resourcesWeb/topic/2016/yzfy/images/level9-2_1.png" alt="">
                      <div class="biaoqian">
                              <span class="shipai_1" >实拍</span>
                              <span class="siheyuan_4" >四合院</span>
                      </div>
                    </h2>
                    <p>
                      <span v-text="main.subtitle"></span>
                      <!-- 北京东城区安定门内大街-道路(安定门内大街) -->
                      <!-- #锚点 下面地图 -->
                      <a href="javascript:;">查看地图</a>
                    </p>
                    <div class="shouchang">
                      <span>
                        <img v-if="!isLove" @click="isLove=true" src="//staticnew.mayi.com/resourcesWeb/images/detail/save_gray.png" alt="">
                        <img v-if="isLove"  @click="isLove=false"  src="//staticnew.mayi.com/resourcesWeb/images/detail/coll_x_red1.png" alt="">
                        <span @click="isLove=!isLove">收藏</span>
                        <span class="share">分享</span>
                      </span>
                    </div>
                    
                  </div>
          </div>
    </div>
</template>
<script>
import qs from 'qs'
    export default {
        data() {
            return {
              isLove:false
             }
        },
        created(){
        },
        props:{
          main:{}
        }
    }
</script>
<style scoped>
html a{
  color: #313442;
}
a{
    text-decoration: none;
    cursor: pointer;
    outline: none;
}
 .path{
    width: 1190px;
    height: 50px;
    margin: 0 auto;
    position: relative;
 }
.path a{
    line-height: 50px;
    color: #22bb62;
    font-size: 14px;
}
.main-1{
    width: 1190px;
    margin: 0 auto
}
.desWord{
      width: 100%;
    padding: 0 0 8px;
    position: relative;
}
.desWord h2{
      font-size: 24px;
    line-height: 28px;
    font-weight: normal;
}
.youxuan{
      height: 44px;
    display: inline-block;
    vertical-align: middle;
    cursor: pointer;
    position: absolute;
    margin-right: -6px;
}
div.biaoqian{
      cursor: pointer;
    position: absolute;
    margin-left: 81px;
    font-size: 14px;
    color: #777776;
    display: inline-block;
    text-indent: 22px;
}
.biaoqian span{
      float: left;
    height: 28px;
    margin-right: 15px;
}
.biaoqian span.shipai_1 {
    background: url(http://staticnew.mayi.com/resourcesWeb/images/shipai_xiangqing.png) no-repeat center left;
}
.biaoqian span.siheyuan_4 {
    background: url(http://staticnew.mayi.com/resourcesWeb/images/siheyuan_xiangqing.png) no-repeat center left;
}
.desWord p{
      line-height: 32px;
    color: #777776;
    width: 695px;
    height: 25px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    font-size: 14px;
}
.desWord p a{
      margin-left: 20px;
    display: inline-block;
    line-height: 16px;
    border-bottom: 1px dashed #777776;
    color: #777776;
}
.shouchang{
    position: absolute;
    top: 30px;
    left: 864px;
}
.shouchang span img{
  width: 18px;
  height: 18px;
}
.shouchang span span{
  color: #322c27;
    cursor: pointer;
    font-size: 14px;
    position: relative;
    top: -5px;
}
.share{
  padding-left: 22px;
    background: url("../../../assets/detail/pub.png") no-repeat center center;
    background-position: -2px -28px;
    margin-left: 20px;
    height: 19px;
    display: inline-block;
}
</style>