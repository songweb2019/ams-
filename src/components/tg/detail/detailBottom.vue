<template>
     <!-- 最外层 -->
         <div class="main">
             <!-- 房源介绍 -->
             <div class="fangyuanjieshao">
                   <div class="jieshao">房源介绍</div>
                   <div class="hi">
					 Hi，很高兴认识你~ 想和您分享北京的家。相比起旅行，我更喜欢接待热爱旅行、热爱生活的朋友们~给您们在探索奇妙世界的旅途中 一个温暖舒适，可以好好放松的住所~<br>
					【户型】我的房子是两室一卫（一个卧室外阳台面积比较大，所以当成客厅使用了，放的粉色的沙发可以打开成沙发床，也有独立的房间门，关上门后就是一个独立的卧室），干净整洁，有厨房，有1张1.8米双人床1张1.5 <span style="color:red;cursor:pointer">
                        更多交通、周边、房客守则</span><br>
                   </div>
             </div>
             <!-- 基本信息 -->
              <div class="fangyuanjieshao">
                   <div class="jieshao">基本信息</div>
                   <ul class="jibenxinxi">
					 <li>房源类型：<span>公寓</span></li>
                     <li>卫生间：<span>1</span></li>
                     <li>被单更换：<span>每客一换</span></li>
                      </ul>
                     <ul class="jibenxinxi">
                       <li>大床(2×1.8米)：<span>1张</span></li>
                       <li>双人沙发床(2×1.5米)：<span>1张</span></li>
                       <li>能否加床：<span>不能</span></li>
                     </ul>
             </div>
             <!-- 配套设施 -->
             <div class="fangyuanjieshao">
                   <div class="jieshao">配套设施</div>
                     
                   <ul class="peitao">
					 <li>
                         <span class="tupian"><img src="../../../assets/erji/WIFI.png" ></span>无线网络</li>
                     <li><span class="tupian"><img src="../../../assets/erji/xiyiji.png" alt="">
                        </span>洗衣机</li>
                     <li>
                         <span class="tupian"><img src="../../../assets/erji/24hotwater.png" alt=""></span>24小时热水</li>
                    </ul>
                     <ul class="peitao">
					 <li> <span class="tupian"><img src="../../../assets/erji/tv.png" alt=""></span>电视</li>
                     <li><span class="tupian"><img src="../../../assets/erji/nuanqi.png" alt=""></span>暖气</li>
                     <li><span class="tupian"><img src="../../../assets/erji/liangyijia.png" alt=""></span>晾衣架</li>
                    </ul>
                    <ul class="peitao">
					 <li><span class="tupian"><img src="../../../assets/erji/kongtiao.png" alt=""></span>空调</li>

                     <li><span class="tupian"><img src="../../../assets/erji/hu.png" alt=""></span>水壶</li>
                     <li><span class="tupian"><img src="../../../assets/erji/xiyifen.png" alt=""></span>洗衣粉</li>
                    </ul>
                    <ul class="peitao">
					 <li><span class="tupian"><img src="../../../assets/erji/bingxiang.png" alt=""></span>冰箱</li>
                     <li><span class="tupian"><img src="../../../assets/erji/chuifengji.png" alt=""></span>吹风机</li>
                     <li><span class="tupian"><img src="../../../assets/erji/dasao.png" alt=""></span>打扫工具</li>
                    </ul> 
             </div>
             <!-- 重新其结构 -->
             <div class="disi">
                 <div class="shoufei">
                    收费说明
                 </div>
                 <div class="yufu">
                      <p>预付订金：提交订单后，支付总房费的100%作为预付订金交付蚂蚁平台</p>
                      <p>退款政策：<span class="quxiao">入驻前3天取消，全额退款</span></p>
                      <p>押金：300元<span class="away">到达房源后，线下直接交给房东</span></p>
                      <p class="bold">以下费用由房东线下额外收取，不包含在房费中。</p>
                      <p class="bold">打扫卫生：1客1扫</p>
                      <p class="bold">被单更换：1客1换</p>
                      <p class="bold">牙具更换：1客1换</p>
                      <p class="bold">毛巾/浴巾更换：1客1换</p>
                      <p>温馨提示：房东提供的服务可能会收费，不在以上费用中。请谨慎核对，以免发生纠纷。</p>
                 </div>
                 </div>
                 <!-- 入驻须知 -->
                 <div class="ruzhuxuzhi">
                    <div class="ruzhu">入驻须知</div>
                   <ul class="jiedai">
					 <li>接待时间：<span>08:00-22:00</span></li>
                     <li>退房时间：<span>12:00以前</span></li>
                     <li>入驻时间：<span>15:00以后</span></li>
                     <li>外宾接待：<span>不接待</span></li>
                      </ul>
                     <ul class="jiedai">
                       <li>最少入驻：<span>1天</span><a href="javascript:;">查看可租状态</a></li>
                       <li>最多入驻：<span>180天</span></li>
                       <!-- 不想写router-link -->
                       <li>发票：<span>支持开发票</span><a>查看开票须知</a></li>
                       <!--  -->
                     </ul>
             </div>
             <!-- 蚂蚁提示 -->
             <div style="clear:both"></div>
             <div class="mayi">
             <div class="ruzhu">蚂蚁提示</div>
             <p class="lineH24">入住后如您认为照片与房间实质有太大差异，蚂蚁客服将对双方提出的证据进行认定，如属实，未入住天数的费用将全额退款</p>
             </div>
            
 <!-- 客人评价 -->
 <div class="pingjia">
     <span class="fangyuanpingjia">本房源评价(28)</span> <span class="fangdongpingjia">房东收到的所有评价(28)</span><span class="fr" >有内容的评价</span><input type="checkbox" class="fr" style="height:30px">
 </div>
 <!-- 房源总好评率 -->
 <div class="fangyuanhaoping">
   <div class="haopinglv">
<p >房源总好评率</p>
<p>100%</p>
<img src="../../../assets/erji/red_star.png" >
   </div>
   <div class="zhejiewesheng">
     <ul  class="zhejiewesheng-ul">
     <li>整洁卫生<span><img src="../../../assets/erji/red_star.png" alt=""></span></li>
     <li>设施环境<span><img src="../../../assets/erji/red_star.png" alt=""></span></li>
     <li>性价比&nbsp;&nbsp;&nbsp;<span><img src="../../../assets/erji/red_star.png" alt=""></span></li>
     </ul>
   </div>
   <div>
  <ul  class="zhejiewesheng-ul weizhi">
     <li>交通位置<span><img src="../../../assets/erji/red_star.png" alt=""></span></li>
     <li>房东服务<span><img src="../../../assets/erji/red_star.png" alt=""></span></li>
     </ul>
   </div>
 </div>
 <!-- 下面的评论 -->
 <div style="margin-top:20px">
     <div class="kerenpinglun">
         <img src="../../../assets/erji/keren.jpg" >
         <p>m#_876996640</p>
     </div>
     <div class="pinglun">
          <p>
      超赞：一进屋子整个人都惊呆了，有个小阳台，厨房啥都有，浴霸超级暖，旁边有个大超市，交通也很方便。关键是掌柜态度超好超有耐心！
   </p>
   <span>2018年12月入住</span>
     </div>
     <!-- 房东回复 -->
     <div class="pinglun fangdonghuifu">
         <img src="../../../assets/erji/zhuren.jpg">
         <div class="ml">
             <span>房东回复:</span>
         <p>谢谢您的认可，欢迎下次再来～</p>
         <span>2018-12-02 00:00</span>
         </div>
     </div>
 </div>

 <!-- 下面的评论 -->
 <div style="margin-top:20px">
     <div class="kerenpinglun">
         <img src="../../../assets/erji/keren.jpg" >
         <p>m#_876996640</p>
     </div>
     <div class="pinglun">
          <p>
      超赞：一进屋子整个人都惊呆了，有个小阳台，厨房啥都有，浴霸超级暖，旁边有个大超市，交通也很方便。关键是掌柜态度超好超有耐心！
   </p>
   <span>2018年12月入住</span>
     </div>
     <!-- 房东回复 -->
     <div class="pinglun fangdonghuifu">
         <img src="../../../assets/erji/zhuren.jpg">
         <div class="ml">
             <span>房东回复:</span>
         <p>谢谢您的认可，欢迎下次再来～</p>
         <span>2018-12-02 00:00</span>
         </div>
     </div>
 </div>

 <!-- 下面的评论 -->
 <div style="margin-top:20px">
     <div class="kerenpinglun">
         <img src="../../../assets/erji/keren1.jpg" >
         <p>m#_876996640</p>
     </div>
     <div class="pinglun">
          <p>
      交通很方便，房间装修很新，也很温馨，用品也都是消毒后封装的，毛巾那些不用担心重复使用，小区也非常安静，以后来京还住这里！
   </p>
   <span>2018年11月入住</span>
     </div>
     <!-- 房东回复 -->
     <div class="pinglun fangdonghuifu">
         <img src="../../../assets/erji/zhuren.jpg">
         <div class="ml">
             <span>房东回复:</span>
         <p>谢谢您的认可。我们保洁都是专业的阿姨，布草毛巾浴巾也是一客一换。欢迎您再来～❤️</p>
         <span>2018-11-27  00:00</span>
         </div>
     </div>
 </div>
<div style="margin-top:20px">
     <div class="kerenpinglun">
         <img src="../../../assets/erji/keren4.jpg" >
         <p>m#_876996641</p>
     </div>
     <div class="pinglun">
          <p>
      非常好的房东，房间很大很明亮，房间设施齐全，无线和电视都非常好用，周边设施齐全，有任何问题房东都可以耐心解决，点赞！
   </p>
   <span>2018年11月入住</span>
     </div>
     <div class="pinglun fangdonghuifu">
         <img src="../../../assets/erji/zhuren.jpg">
         <div class="ml">
             <span>房东回复:</span>
         <p>谢谢您的评价，我希望每位入住的客人，都会有愉快的入住体验。欢迎下次再来～</p>
         <span>2018-11-27  00:00</span>
         </div>
     </div>
 </div>
 

<div style="margin-top:20px">
     <div class="kerenpinglun">
         <img src="../../../assets/erji/keren3.jpg" >
         <p>m#_876996641</p>
     </div>
     <div class="pinglun">
          <p>
      超级小粉红！话不多说放图片！就是房子位置小难找，但是进对了门特别方便，出去就有好吃的
   </p>
   <span>2018年11月入住</span>
     </div>
     <div class="pinglun fangdonghuifu">
         <img src="../../../assets/erji/zhuren.jpg">
         <div class="ml">
             <span>房东回复:</span>
         <p>谢谢您的五星评价，欢迎下次再来❤️</p>
         <span>2018-11-27  00:00</span>
         </div>
     </div>
 </div>

<div style="margin-top:20px">
     <div class="kerenpinglun">
         <img src="../../../assets/erji/keren.jpg" >
         <p>m#_863586489</p>
     </div>
     <div class="pinglun">
          <p>
      房东和房子这么赞，必须利给大家啊，哈哈
   </p>
   <span>2018年11月入住</span>
     </div>
     <div class="pinglun fangdonghuifu">
         <img src="../../../assets/erji/zhuren.jpg">
         <div class="ml">
             <span>房东回复:</span>
         <p>嘿嘿～谢谢呀，一位很赞的客人。❤️</p>
         <span>2018-11-27  00:00</span>
         </div>
     </div>
 </div>

<div style="margin-top:20px">
     <div class="kerenpinglun">
         <img src="../../../assets/erji/keren5.jpg" >
         <p>m#_876996640</p>
     </div>
     <div class="pinglun">
          <p>
      很有情调的房间，交通也很方便。
   </p>
   <span>2018年10月入住</span>
     </div>
     <!-- 按钮组 -->
     
</div>


 




 </div>
</template>
<script>
export default {
    data(){
        return {

        }
    }
}
</script>
<style scoped>
    .main{
        width:832px;
        margin-left:182px;
        
    }
  .fangyuanjieshao{
      height: 90px;
      width:832px;
      display: flex;
      justify-content: space-between;
      border-top:1px solid #e3e6e6;
      padding:16px 0;
      align-items: center;
  }
 .jieshao{
     width: 142px;
     height:84px;

     color: #777776;
     font-size:18px;
 }
 /* 对a标签进行处理 */
 .hi>a{
     text-decoration: none;
     color:#ff5d51 ;
     margin-top:6px;
 }
 .hi{
   color: #322c27;
  font-size:14px;
  width: 668px;
  height: 85px;
 }

 /* 基本信息 */
 .jibenxinxi{
     list-style: none;
     height: 84px;
     width: 344px;
 }
 .jibenxinxi>li{
     width:344px;
     height: 28px;
     float: right;
     font-size:14px;
     color: #777776;
 }
 .jibenxinxi>li>span{
     color: #322c27;
 }
 .tupian{
     width: 24px;
     height: 24px;
     margin-right:13px;
 }
 .peitao{
     list-style:none;
 }
 .peitao>li{
     width: 172px;
     height: 28px;
 }
 /* 第四阶段 */
 .disi{
     width: 832px;
     height: 269px;
     display: flex;
     justify-content: space-around;
     border-top:1px solid #e3e6e6; 
     padding:16px 0; 
     /* border-bottom:1px solid #777776; */
 }
 .shoufei{
     width: 142px;
 }
 .yufu{
      width: 688px;
      color: #777776;
      font-size: 14px;
 }
 .yufu p{
     height: 28px;;
 }
.quxiao{
    color: #3eb382;
}
.bold{
    
    color: #322c27
}
.away{
    margin-left: 290px;
}
 .ruzhuxuzhi{
     padding:16px 0;
     width: 832px;
     height: 112px;
      border-top:1px solid  #e3e6e6;
     border-bottom: 1px solid  #e3e6e6;
 }
 .ruzhu{
     float: left;
     font-size:18px;
     color: #777776;
     width: 142px;
 }
.jiedai{
    float: left;
    list-style: none;
    padding:0px;
}
.jiedai>li{
    width: 344px;
    font-size: 14px;
    height: 28px;
    color: #777776;
}
.jiedai>li>a{
    text-decoration: none;
    color: #ff5d51;
    margin-left: 15px;
}
.lineH24{
    color: #777776;
    font-size: 14px;
}
.mayi{
    padding:16px 0; 
    border-bottom: 1px solid  #e3e6e6;
}
.pingjia{
    height: 22px;
    padding-bottom:30px;
    padding-top:30px;
    
}

.fr{
    float: right;
}
.fangyuanpingjia{
    font-size: 18px;
    color:#22bb62;
    margin-right: 20px;
}
.fangdongpingjia{
   color:#322c27;
   font-size: 18px; 
}
.fangyuanhaoping{
    height: 104px;
    display: flex;
    justify-content: space-around;
    align-items: center;
    padding:16px 0;
    border:1px solid #e3e6e6;
}
.haopinglv{
    width: 135px;
    text-align: center;
    font-size: 14px;
}
.haopinglv p{
    color: #322c27;
    margin-bottom:15px; 
}
.haopinglv p:nth-child(2){
    color: #00897b;
    font-size: 24px;
}
.zhejiewesheng{
    width: 344px;
}
.zhejiewesheng ul>li{
    height:28px;
}
.zhejiewesheng-ul>li{
width: 344px;
}
.zhejiewesheng-ul>li>span{
    margin-left:10px;
}
.zhejiewesheng-ul{
    list-style: none;
}
.weizhi{
    position: relative;
    top:-21px;
}
.pinglun{
    width: 690px;
    padding:20px 0 30px 0;
    border-bottom:2px solid #e3e6e6;
    margin-left:auto;
    font-size: 14px;
    font-family: "Hiragino Sans GB", Arial, Verdana, Tahoma,
		"微软雅黑";
        color: #322c27;
        display: inline-block;
         
        

}
.pinglun p{
margin-bottom: 10px;
}
.pinglun span{
    color:#777776;
    
}
.fangdonghuifu{
    margin-left: 132px;
    position: relative;
   
}
.fangdonghuifu>p{
    color:#4d4844;
    margin:10px 10px 10px  40px;
    margin-left:auto;

}
.fangdonghuifu img{
    width:40px;
    border-radius: 50%;
    position: absolute;
    top:21px;
}
.kerenpinglun{
    display: inline-block;
    text-align: center;
    margin-right: 20px;
   
}
.ml{
    margin-left: 50px;
}
.ml>p{
    margin-top:10px;
}
.kerenpinglun img{
    border-radius: 50%;
}

</style>