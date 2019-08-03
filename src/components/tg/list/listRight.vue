<template>
  <div class="songFour">
    <!-- 地图找房 -->
    <div class="sfMap">
     <img src="../../../assets/list/ditu.png">
     <span>试试地图找房</span>
    </div>
    <!-- 列表 -->
    <ul class="sfList">
     <li>
       <i class="zsfy"></i>
       <span class="span1">真实房源</span>
       <span class="span2">上门实拍资质备案</span>
     </li>
     <li>
       <i class="axrz"></i>
       <span class="span1">安心入住</span>
       <span class="span2">到店无房赔付</span>
     </li>
     <li> 
       <i class="zmxy"></i>
       <span class="span1">芝麻信用</span>
       <span class="span2">房东房客实名认证</span>
     </li>
     <li>
       <i class="zykf"></i>
       <span class="span1">专业客服</span>
       <span class="span2">7 x 24小时</span>
     </li>
    </ul>
  </div>
</template>
<script>
  export default {
    data(){
    return{
    }
  },
    methods: {

    }
  }
</script>

<style scoped>
/* song04  */
 .songFour{
   width:260px;
   height:520px;
   position: relative;
   overflow: hidden;
 } 

 /* 试试地图找房 */
.sfMap{
    width: 260px;
    height: 206px
}
 /* 图片 */
.sfMap img{
    width: 260px;
    height: 206px;
    cursor: pointer;
}
 /* 文字 */
.sfMap span{
  color: #fff; 
  font-size: 14px;
  position: relative;
  top:-40px;
  left:90px;
}

/* 安全列表 */
.sfList{
  margin-top:10px;
  background:#f8f8f8;
  border-radius: 10px;
  overflow: hidden;
  cursor: pointer;
}
.sfList li{
  border-bottom:1px solid #ebebeb;
  position: relative;
  padding:18px 0px;
}
.sfList li i{
  width: 40px;
  height: 40px;
  position: absolute;
  left:20px;
  top:50%;
  margin-top: -20px;
  background:url('../../../assets/list/icon.png') no-repeat;
}
.sfList li i.zsfy{
  background-position: 2px 3px;
}
.sfList li i.axrz{
  background-position: 2px -74px;
}
.sfList li i.zmxy{
  background-position: 2px -147px;
}
.sfList li i.zykf{
  background-position: 2px -219px;
}

/* 文字 */
.sfList li span{
  display: block;
  padding-left: 82px;
}
.sfList .span1{
  font-size: 16px;
  color: #484848;
}
.sfList .span2{
  font-size: 14px;
  color: #767676;
}
</style>