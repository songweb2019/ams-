<template>
  <div class="footer">
    <div class="foot">
      <!-- 标题 -->
      <p class="foottitle" >
        {{foottitle}}
       <img :src="require('../../assets/footer/time.png')" v-bind:title='foottime'></p>

      <!-- 中间 -->
      <div class="footmid">
      <!-- 联系列表 -->
      <ul class="footlist1">
        <li v-for="(contact,i) in contacts" :key="i">{{contact.list1}}</li>
      </ul>
      <!-- 帮助中心 -->
      <ul class="footlist2">
        <li v-for="(help,i) in helps" :key="i">
          <a href="javascript:;">{{help.list2}}</a>
        </li>
      </ul>
      <!-- app -->
      <div class="footapp">
        <p>下载App</p>
        <p>{{footapp}}</p>
        <img :src="require('../../assets/footer/app.jpg')" v-on:click="reverseImg">
      </div>     
      <!-- 关注我们  -->
      <div class="footatten">
        <p>关注我们</p>
        <div class="attenImg">
          <a href="javascript:;">
            <img :src="require('../../assets/footer/weixin_logo.png')" class="weixin">
          </a>
          <a href="javascript:;">
            <img :src="require('../../assets/footer/xinlang_logo.png')" class="sina">
          </a>  
        </div>
      </div>
      </div>
 
     <!-- 版权  -->
     <div class="footcopy"> 
       <p>网站备案/许可证号：© 2019mubeixi.top版权所有 经营性备案号：豫ICP备19020175号 TG互联网技术有限公司</p>
       <p class="copyp2">
         <a href="javascript:;">
         <img :src="require('../../assets/footer/babs.png')">豫ICP备 1902017519020175号</a>
       </p>
       <div class="copybotimg">
       <img :src="require('../../assets/footer/cnnic1.png')">
       <img :src="require('../../assets/footer/cert.png')">
       <img :src="require('../../assets/footer/gsj.png')">  
       </div>            
     </div>
    </div>  
  </div>
</template>

<script>
  export default {
    data(){
      return{
        foottitle:'喜欢旅行，也会喜欢上爱民宿',
        foottime:'当前时间：'+new Date().toLocaleString(),
        contacts:[
          {list1:'联系我们'},
          {list1:'186-9068-7256'},
          {list1:'客户服务'}, 
          {list1:'QQ：1653413730'},
          {list1:'Email：amstg@aliyun.com'},
        ],
        helps:[
          {list2:'帮助中心'},
          {list2:'房源审核规范'},
          {list2:'房客帮助'},
          {list2:'服务协议'},
          {list2:'隐私政策'},
          {list2:'免责声明'},
        ],
        footapp: 'A M S'
      }
    },
    methods:{
      reverseImg:function(){
        //翻转选中的字符串
        this.footapp = this.footapp.split('').reverse().join('')
      }
    }
  }
</script>
<style>
/* 脚 */
*{margin: 0;padding:0;}
ul li{list-style: none;}
a{text-decoration: none;}
/* 通用 脚 */
.footer{
  width:100%;
  padding:20px 0px;
  background: #322c27;
  color: #f3f3f3;
  overflow: hidden;
}
.foot{
  width: 1200px;
  padding: 0px 20px;
  background: #322c27;
  margin: 0 auto;
}
/* 标题 */
.foottitle{
  font:20px 华文行楷;
}
/* footmid */
.footmid{
  height: 200px;
} 
/* 联系列表 ******* 帮助列表  */
.footlist1,.footlist2{
  width: 300px;
  float: left;
}
.footlist1{
   margin-left: 60px;
}
.footlist2{
  text-align: center;
}
.footlist2 li{
  margin:5px 0px;
}
.footlist2 a{
  color: #f3f3f3;
}
.footlist2 a:hover{
  color: #c1c1c1;
}
.footlist1 li:nth-child(1),.footlist2 li:nth-child(1){
  font-size: 20px;
  margin:20px 0px;
}
.footlist1 li:nth-child(2){
  font-size: 22px;
  margin-bottom:20px;
}
.footlist1 li:nth-child(3){
  margin-bottom:15px;  
}
.footlist1 li:nth-child(4),.footlist1 li:nth-child(5){
  font-size: 14px;
  margin:5px 0px;
}

/* 下载 */
.footapp{
  float: left;
  margin-top:20px;
  text-align: center;
  margin-left: 100px;
}
.footapp p:nth-child(1){
  margin-bottom: 8px;
}
.footapp p:nth-child(2){
  margin-bottom: 4px;
}
.footapp img{
  width: 120px;
}
/* 关注 */
.footatten{
  width: 200px;
  float: left;
  text-align: center;
  margin-top:60px;
  margin-left:100px;
}
.footatten .attenImg a img{
  margin:20px 5px;
  border-radius: 50%;
}
.attenImg a:hover .weixin{
  background: rgb(60, 196, 43);
}
.attenImg a:hover .sina{
  background: rgb(228, 38, 38);  
}

/* 版权 */
.footcopy{
  text-align: center;
  color:#c1c1c1;
  font-size:12px;
  margin-top:50px;
}
.footcopy .copyp2{
  font-size: 16px;
  margin-top:10px;
}
.footcopy .copyp2 a{
  color: #c1c1c1;
}
.footcopy p img{
  width: 15px;
}
/* 最下方三个图片 */
.copybotimg img{
  margin:20px 20px 0px 0px;
}
</style>