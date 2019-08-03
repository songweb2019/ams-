<template>
    <div id="container">
        <!-- 第一个主体 往来无白丁 -->
        <div class="index-first mb-30">
            <!-- title 无白丁 样式固定 -->
            <img src="../../assets/index/homestay.png" class="title-left-pic">
            <div class="title">
                <h1>旅行，就要住名宿</h1>
                <p>
                    <span>谈笑有鸿儒，往来无白丁</span>
                </p>
            </div>
            <!-- 下面的图片 -->
            <div class="f1 ">
                <!-- 左边的图案 -->
                <div class="r1">
                    <!-- 上面的大图 -->
                    <div class="top-pic">
                        <router-link to="/list">
                            <img :src='"http://127.0.0.1:3000/"+list[0].img' alt="">
                        </router-link>
                        <span class="desc" v-text="list[0].title"></span>
                    </div>
                    <!-- 左边第二张 -->
                    <div class="top-pic-2 mt-20">
                        <div class="top-pic-f1">
                            <router-link to="/list">
                                <img :src='"http://127.0.0.1:3000/"+list[1].img'>
                            </router-link>
                            <span class="desc" v-text="list[1].title"></span>
                        </div>
                        <!-- 右边第二张 -->
                        <div class="top-pic-f1 ">
                            <router-link to="/list">
                                <img :src='"http://127.0.0.1:3000/"+list[2].img'>
                            </router-link>
                            <span class="desc" v-text="list[2].title"></span>
                        </div>
                    </div>
                </div>
                <!-- 右边的图案 -->
                <div class="r1">
                    <div class="top-pic-2">
                        <div class="top-pic-f1 ">
                           <router-link to="/list">
                               <img :src='"http://127.0.0.1:3000/"+list[3].img'>
                            </router-link>
                            <span class="desc" v-text="list[3].title"></span>
                        </div>
                        <!-- 右边第二张 -->
                        <div class="top-pic-f1">
                            <router-link to="/list">
                               <img :src='"http://127.0.0.1:3000/"+list[4].img'>
                            </router-link>
                            <span class="desc" v-text="list[4].title"></span>
                        </div>
                    </div>
                    <div class="top-pic mt-20">
                            <router-link to="/list">
                               <img :src='"http://127.0.0.1:3000/"+list[5].img'>
                            </router-link>
                            <span class="desc" v-text="list[5].title"></span>
                    </div>
                </div>
            </div>
        </div>
        <!-- 第二层 上一层过于冗余 -->
        <div class="mb-30">
        <img src="../../assets/index/theme_recommend.png" class="title-left-pic">
        <div class="title">
            <h1>旅行主题推荐</h1>
            <p>
                <span>有一种旅行，叫跋山涉水来睡你</span>
            </p>
        </div>
        <!--1个大div包含 2个div  -->
        <div class="second-pic">
            <!-- 左边的大图 -->
            <div class="second-pic-left">
                <router-link to="/list">
                               <img :src='"http://127.0.0.1:3000/"+list[6].img'>
                </router-link>
            </div>
            <!-- 右边的四张小图 -->
            <div class="second-pic-right">
                <!-- 1 -->
                <div>
                    <router-link to="/list">
                               <img :src='"http://127.0.0.1:3000/"+list[7].img'>
                    </router-link>
                </div>
                <!-- 2 -->
                <div>
                    <router-link to="/list">
                               <img :src='"http://127.0.0.1:3000/"+list[8].img'>
                    </router-link>
                </div>
                <!-- 3 -->
                <div class="mt-10">
                   <router-link to="/list">
                               <img :src='"http://127.0.0.1:3000/"+list[9].img'>
                    </router-link>
                </div>
                <!-- 4 -->
                <div class="mt-10">
                    <router-link to="/list">
                               <img :src='"http://127.0.0.1:3000/"+list[10].img'>
                    </router-link>
                </div>
            </div>
        </div>
        </div>
        <!-- 第三层 -->
        <div class="mb-60">
            <img src="../../assets/index/hotplace.png" class="title-left-pic">
            <div class="title">
                <h1>热门目的地</h1>
                <p>
                    <span>灵魂和身体，总有1个在路上</span>
                </p>
            </div>
            <!-- 下面的5张图片 -->
            <div class="hot-place">
                <!-- 1 -->
                <div class="hot-place-item">
                    <router-link to="/list">
                        <img src="../../assets/index/h-sanya.jpg" alt="">
                    </router-link>
                    <div class="info">
                        <p class="f18">三亚·</p>
                        <span class="f12">44900+家住宿</span>
                    </div>
                </div>
                <!-- 2 -->
                <div class="hot-place-item">
                    <router-link to="/list">
                        <img src="../../assets/index/h-beijing.jpg" alt="">
                    </router-link>
                    <div class="info">
                        <p class="f18">北京·</p>
                        <span class="f12">28600+家住宿</span>
                    </div>
                </div>
                <!--3  -->
                <div class="hot-place-item">
                    <router-link to="/list">
                        <img src="../../assets/index/h-shanghai.jpg" alt="">
                    </router-link>
                    <div class="info">
                        <p class="f18">上海·</p>
                        <span class="f12">27200+家住宿</span>
                    </div>
                </div>
                <!-- 4 -->
                <div class="hot-place-item">
                    <router-link to="/list">
                        <img src="../../assets/index/h-xianggang.jpg" alt="">
                    </router-link>
                    <div class="info">
                        <p class="f18">香港·</p>
                        <span class="f12">3700+家住宿</span>
                    </div>
                </div>
                <!-- 5 -->
                <div class="hot-place-item">
                    <router-link to="/list">
                        <img src="../../assets/index/h-daban.jpg" alt="">
                    </router-link>
                    <div class="info">
                        <p class="f18">大阪·</p>
                        <span class="f12">21100+家住宿</span>
                    </div>
                </div>
            </div>
        </div>
        <!-- 真实房源 -->
        <div class="real-house">
            <!-- 1 -->
            <div class="house1">
                <router-link to="/list">
                    <img src="../../assets/index/realroom.png" class="house-img">
                    <p class="house-p mt-10">真实房源</p>
                    <span class="house-span mt-5">上门实拍资质备案</span>
                </router-link>
            </div>
            <!-- 2 -->
            <div>
                <div class="house1">
                    <router-link to="/list">
                        <img src="../../assets/index/happyin.png" class="house-img">
                        <p class="house-p mt-10">安心入住</p>
                        <span class="house-span mt-5">到店无房赔付</span>
                    </router-link>
                </div>
            </div>
            <!-- 3 -->
            <div>
                <div class="house1">
                    <router-link to="/list">
                        <img src="../../assets/index/zhima.png" class="house-img">
                        <p class="house-p mt-10">芝麻信用</p>
                        <span class="house-span mt-5">房东房客实名认证</span>
                    </router-link>
                </div>
            </div>
            <!-- 4 -->
            <div>
                <div class="house1">
                    <router-link to="/list">
                        <img src="../../assets/index/pro-service.png" class="house-img">
                        <p class="house-p mt-10">专业客服</p>
                        <span class="house-span mt-5">7×24小时</span>
                    </router-link>
                </div>
            </div>
        </div>
        <!-- 下个阶段     哟普个路边宁波图 明天写  -->

       <!--暖冬三亚  -->
        <div class="sanya">
             <img src="../../assets/index/preference.png" class="title-left-pic">
            <div class="title">
                <h1>椰林暖冬-三亚</h1>
                <p>
                    <span>碧海蓝天金作沙, 椰风阵阵到天涯</span>
                </p>
            </div>
            <!-- 下面的三张图 -->
            <div class="haijingfang">
                <div v-for="(elem,i) of img1" :key="i">

                    <router-link target='_blank' :to="{path:'/detail',query:{hid:elem.hid}}">
                        <img :src="elem.mainImg">
                        <img src="../../assets/index/heart.png" class="heart">
                        <span class=" price" v-text="'¥'+elem.price">￥338</span>
                        <p class="hidden-txt" v-text="elem.title"></p>
                        <p class="pingfen"><span v-text="elem.fen.toFixed(1)+'分'"></span> <span v-if="elem.fen==5">完美！</span> <span v-text="elem.ping+'条评价'">20条评价</span>
                        <span>|</span> <span v-text="elem.spec+'居'">2居</span><span>|</span><span v-text="elem.city">武汉</span> </p>
                    </router-link>
                     <div class="customer">
                          <img src="../../assets/index/meinv.jpg" > 
                     </div>
                </div>
                <!-- <div>
                    <router-link to="/list">
                        <img src="../../assets/index/haijing1.jpg">
                        <img src="../../assets/index/heart.png" class="heart">
                        <span class=" price">￥368</span> 
                    
                    
                     <p class="hidden-txt">江汉路步行街/地铁3分钟/一室一厅小公寓</p>
                     <p class="pingfen"><span>4.9分</span> <span>超赞</span> <span>54条评价</span>
                     <span>|</span> <span>1居</span><span>|</span><span>武汉</span> </p>
                    </router-link>
                      <div class="customer">
                          <img src="../../assets/index/jiamghanlu.jpg" > 
                     </div> 
                </div>

                <div>
                       <router-link to="/list">
                        <img src="../../assets/index/haijing2.jpg">
                        <img src="../../assets/index/heart.png" class="heart">
                        <span class=" price">￥199</span>
                        <p class="hidden-txt">「留宿•小薄荷」北欧清新阳台黎黄陂路</p>
                        <p class="pingfen"><span>5.0分</span> <span>完美！</span> <span>20条评价</span>
                        <span>|</span> <span>1居</span><span>|</span><span>武汉</span> </p>
                       </router-link>
                     <div class="customer">
                          <img src="../../assets/index/liusu.jpg" > 
                     </div>

                </div>
                <div>

                    <router-link to="/list">
                        <img src="../../assets/index/haijing3.jpg">
                        <img src="../../assets/index/heart.png" class="heart">
                        <span class=" price">￥338</span>
                        <p class="hidden-txt">昙华林/黄鹤楼/户部巷/汉街双地铁口两居</p>
                        <p class="pingfen"><span>5.0分</span> <span>完美！</span> <span>20条评价</span>
                        <span>|</span> <span>2居</span><span>|</span><span>武汉</span> </p>
                    </router-link>
                     <div class="customer">
                          <img src="../../assets/index/meinv.jpg" > 
                     </div>
                </div> -->



            </div>
        </div>

        <div class="sanya">
             <img src="../../assets/index/hotplace.png" class="title-left-pic">
            <div class="title">
                <h1>蚂蚁优选</h1>
                <p>
                    <span>为你挑选出品质好、服务佳、设施全的优质房源</span>
                </p>
            </div>
            <!-- 下面的三张图 -->
            <div class="haijingfang">

                  <div v-for="(elem,i) of img2" :key="i">

                    <router-link target='_blank' :to="{path:'/detail',query:{hid:elem.hid}}">
                        <img :src="elem.mainImg">
                        <img src="../../assets/index/heart.png" class="heart">
                        <span class=" price" v-text="'¥'+elem.price">￥338</span>
                        <p class="hidden-txt" v-text="elem.title"></p>
                        <p class="pingfen"><span v-text="elem.fen.toFixed(1)+'分'"></span> <span v-if="elem.fen==5">完美！</span> <span v-text="elem.ping+'条评价'">20条评价</span>
                        <span>|</span> <span v-text="elem.spec+'居'">2居</span><span>|</span><span v-text="elem.city">武汉</span> </p>
                    </router-link>
                     <div class="customer">
                          <img src="../../assets/index/meinv.jpg" > 
                     </div>
                </div>
                <!-- <div>
                    <router-link to="/list">
                        <img src="../../assets/index/yulin.jpg">
                        <img src="../../assets/index/heart.png" class="heart">
                        <span class=" price">￥368</span> 
                        <p class="hidden-txt">江汉路步行街/地铁3分钟/一室一厅小公寓</p>
                        <p class="pingfen"><span>4.9分</span> <span>超赞</span> <span>54条评价</span>
                        <span>|</span> <span>1居</span><span>|</span><span>武汉</span> </p>
                    </router-link>
                      <div class="customer">
                          <img src="../../assets/index/jimu.jpg" >
                     </div> 
                </div>

                <div>
                      <router-link to="/list">
                        <img src="../../assets/index/haijing2.jpg">
                        <img src="../../assets/index/heart.png" class="heart">
                        <span class=" price">￥488</span>
                        <p class="hidden-txt">【沐舍】春熙路/九眼桥大阳台三居室</p>
                        <p class="pingfen"><span>4.9分</span> <span>超赞！</span> <span>28条评价</span>
                        <span>|</span> <span>3居</span><span>|</span><span>成都</span> </p>
                      </router-link>
                     <div class="customer">
                          <img src="../../assets/index/nv.jpg" > 
                     </div>

                </div>
                <div>

                      <router-link to="/list">
                        <img src="../../assets/index/jinguomao.jpg">
                        <img src="../../assets/index/heart.png" class="heart">
                        <span class=" price">￥558</span>
                        <p class="hidden-txt">近国贸三里屯欢乐谷-捕梦小筑Loft小窝</p>
                     <p class="pingfen"><span>5.0分</span> <span>完美！</span> <span>5条评价</span>
                     <span>|</span> <span>1居</span><span>|</span><span>北京</span> </p>
                      </router-link>
                     <div class="customer">
                          <img src="../../assets/index/hunsha.jpg" > 
                     </div>
                </div> -->


              
            </div>
        </div>
    </div>
</template>
<script>
import qs from 'qs'
    export default {
        data() {
            return {
                list:[{img:'img/index/houses.jpg'},{img:'img/index/houses.jpg'},{img:'img/index/houses.jpg'},{img:'img/index/houses.jpg'},{img:'img/index/houses.jpg'},{img:'img/index/houses.jpg'},{img:'img/index/houses.jpg'},{img:'img/index/houses.jpg'},{img:'img/index/houses.jpg'},{img:'img/index/houses.jpg'},{img:'img/index/houses.jpg'}],
                img1:[],
                img2:[]
            }
        },
        created(){
            this.axios.post("/product/lou",qs.stringify({
        
            })).then(result=>{
              this.list=result.data;
            })
            this.axios.post("/product/index",qs.stringify({
        
            })).then(result=>{
                this.img1=result.data.data.slice(0,3);
                this.img2=result.data.data.slice(3,6);

                // var arr = Object.values(result.data.data);
                // for(var i=0;i<3;i++){
                //     this.img1[i]=arr[i];
                //  }
                // for(var i=3;i<6;i++){
                //     this.img2[i-3]=arr[i];
                // }
                // console.log(this.img1,this.img2);
            })
        }
    }
</script>
<style scoped>
    a {
        text-decoration: none;
       
    }
    a:active {
        color: black;
    }
    #container {
        width: 1050px;
        margin: 0 auto;
    }
    .index-first {
        height: 551px;
    }
    .f1 {
        height: 461px;
        height: 551px;
        display: flex;
        justify-content: space-between;
    }
    .title {
        height: 90px;
        padding-left: 9px;
        /* margin-bottom:30px; */
        display: inline-block;
    }
    .title-left-pic {
        float: left;
        vertical-align: middle;
        width: 55px;
    }
    .top-pic {
        width: 515px;
        height: 261px;
        position: relative;
    }
    .desc {
        position: absolute;
        bottom: -1px;
        left: -1px;
        width: 80px;
        height: 49px;
        text-align: center;
        line-height: 49px;
        background: #f6f1ed;
        color: #484848;
        border-radius: 0 50px 0 0px;
        font-size: 20px;
        font-weight: 600;
        padding: 0 20px 0 0;
    }
    .mb-30{
        margin-bottom: 30px;
    }
    .mb-60{
        margin-bottom: 60px;
    }
    .top-pic-2 {
        display: flex;
        justify-content: space-between;
    }
    .top-pic-f1 {
        width: 248px;
        height: 180px;
        position: relative;
    }
    .mt-20 {
        margin-top: 20px;
    }
    .mt-10 {
        margin-top: 10px;
    }
    .mt-5 {
        margin-top: 5px;
    }
    /* 第二层 */
    .second-pic {
        height: 380px;
        display: flex;
        justify-content: space-between;
    }
    .second-pic-left {
        width: 515px;
    }
    .second-pic-right {
        width: 516px;
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
    }
    /* 要改 */
    #container div {
          overflow: hidden; 
    }
    #container img {
        border-radius: 12px;
        transition: all 1s linear;
    }
    #container img:hover {
        transform: scale(1.05)
    }
    /* 第三层 */
    .hot-place {
        display: flex;
        height: 220px;
        justify-content: space-between;
    }
    .hot-place-item {
        width: 158px;
        background: tomato;
        border-radius: 12px;
        position: relative;
    }
    .info {
        position: absolute;
        bottom: 0px;
        background: rgba(0, 0, 0, 0.8);
        width: 100%;
        color: #f6f1ed;
        height: 49px;
        font-weight: 700;
        line-height: 49px;
        font-family: "PingFang SC", "Hiragino Sans GB", Arial, Verdana, Tahoma, "微软雅黑";
        padding-left: 10px;
    }
    .f18 {
        font-size: 18px;
        display: inline-block;
    }
    .f12 {
        font-size: 12px;
    }
    .real-house {
        width: 1050px;
        height: 123px;
        display: flex;
        justify-content: space-around;
        padding: 40px 0;
    }
    .house-img {
        width: 60px;
        height: 60px;
    }
    .house-p {
        color: #2b2f33;
        font-size: 20px;
    }
    .house-span {
        font-size: 14px;
        color: #767676;
    }
    .house1 {
        height: 123px;
        width: 112px;
       
        display: flex;
         align-items: center; 
        text-align: center;
    }
    .haijingfang{
        display: flex;
        justify-content: space-between;
    }
  .haijingfang div{
      width: 337px;
     
      position: relative;
      border-radius: 12px;
  }  
  .haijingfang div img:first-child{
      width: 100%;
  }
  .heart{
      position: absolute;
      right:11px;
       top:16px; 
  }
  .price{
      background:rgba(0,0,0,0.7);
      border-radius:0 10px 0 12px;
      color:#fff;
      padding:0px 15px 0px 15px;
      line-height: 40px;
      position: absolute;
      bottom:106px;
      left:0px;
      width: 53px;
      height:40px;
      font-size: 22px;
      font-family: "PingFang SC", "Hiragino Sans GB", Arial, Verdana, Tahoma, "微软雅黑" ;
      font-weight:700;

  }
  
  .hidden-txt{
      font-size:20px;
      width: 282px;
      height: 26px;
      font-weight:700;
      white-space: nowrap;
      text-overflow: ellipsis;
      color: #2b2f33;
      overflow: hidden;
      margin-right: auto;
  }
  .pingfen {
height: 22px;
width: 282px;
display: flex;
justify-content: space-around;
margin-top:5px;
font-size:14px;
color: #484848;
}
.pingfen span:first-child,.pingfen span:nth-child(2){
    color: #FA8100;
}
 .haijingfang .customer{
    width: 45px;
    height: 45px;
    position: relative;
    display: inline-block;
    top:-48px;
    left:286px;
    border-radius:50%;
}

  
</style>