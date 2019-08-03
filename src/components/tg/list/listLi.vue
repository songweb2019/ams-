<template>
  <!-- 详情页 -->
  <div class="details">
     <!-- 左边 -->
     <div class="detailsleft" v-if="!isNull">

     <!-- 一个列表 -->
     <div class="amsdet" v-for="(elem,i) of data" :key="i" >
      <!-- 图片内容 -->
      <router-link target='_blank' :to="{path:'/detail',query:{hid:elem.hid}}">
      <div class="detcarousel"> 
        <div class="detcarouselimg">
            <img :src="elem.mainImg">
        </div>
        <img src="../../../assets/exam01/collect_icon.png" class="detcollect">
        <p class="detprice" v-text="'¥'+elem.price"></p>
      </div>
      <!-- 标题内容 -->
      <div class="dettitlebody">
        <img src="../../../assets/exam01/head.jpg" class="detheadimg" title="联系房东">
        <p class="dettitle" title="" v-text="elem.title"></p>
        <ul class="detlist" title="">
	         <li><span style="color: #FA8100;" v-text="(elem.fen).toFixed(1)+'分'"></span><span style="color: #FA8100;" v-if="elem.fen==5.0"> 完美!</span>·</li>
	         <li v-text="elem.ping+'条评论·'"></li>
	         <li v-text="elem.spec+'居·'"></li>
	         <li v-text="'可住'+elem.num+'人'"></li>
	      </ul>
        <div class="detsubtitle" title="">
					<span class="subtitle" style="background: rgba(255,205,76,0.25);color: #FA9A00;">速订</span>
	        <span class="subtitle" style="background:#f4f4f4;">实拍</span>
	        <span class="subtitle" style="background:#f4f4f4;"> 可做饭</span>
	      </div>
      </div>
      </router-link>
     </div>
      <div class="amsdet"  v-if="resultLength%3>0&&page==lengths"></div>

        <div class="page" v-if="!isNull">
              <a class="prev" @click="prev" v-if="page>1">上一页</a>
              <a v-for="(elem,i) of lengths" :key="i" v-text="i+1" :class="i+1==page?'active':''" @click="change(i)"></a>
              <a class="next" @click="next" v-if="page<lengths">下一页</a>
        </div>
        
    </div>

    <div class="detailsleft" v-if="isNull">
        <!-- 查询不到显示 -->
        <div class="lose" v-if="isNull">
              <img src="//staticnew.mayi.com/resourcesWeb/v201807/list_page_new/images/no_rooom_status.png" alt="">
              <span>很抱歉，未找到适合的房源，建议改变筛选条件试试</span>
        </div>
    </div>
     <!-- 右边 -->
     <div class="detailsright">
        <list-right></list-right>
     </div>
  </div>
</template>

<script>
import listRight from './listRight.vue'
import qs from 'qs'
  export default {
    data(){
      return{
        data:[],
        page:1,//当前页
        count:12,//一页展示几个
        lengths:1,
        isNull:false,
        resultLength:1
      }
    },
    methods: {
        prev(){
          this.page--;
          this.show(this.page,this.count);
        },
        next(){
          this.page++;
          this.show(this.page,this.count);
        },
        change(i){
          this.page=i+1;
          this.show(this.page,this.count);
        },
        show(page,count){
          var city=this.$route.query.cityName;
          if(!city){
            city=false;
          }
          this.axios.post("product/list",qs.stringify({
             page,
             count,
             city
          })).then(result=>{
              if(result.data.code>0){
                    this.isNull=false;
                    this.resultLength=result.data.lengths[0].lengths;
                    this.lengths=Math.ceil(parseInt(result.data.lengths[0].lengths)/this.count);
                    this.data=result.data.data;
              }else{
                    this.isNull=true;
              }
          })
        },
        next(){
          if(this.page<this.lengths){
            this.page++;
            this.show(this.page,this.count);
          }
        }

    },components:{
     "listRight":listRight
    },
    created(){
          this.show(this.page,this.count);
    }
  }
</script>
<style scoped lang="scss">
a{
  text-decoration: none;
  color:#777776;
}
*{margin: 0px;padding:0px;}
li{list-style: none;}
.details{
   min-height: 570px;
   width:94.44%;
   margin:0 auto;
   position: relative;
   margin-top: 50px;
   border-top: 1px solid #ebebeb;
   /* padding-top: 20px; */
    &::after{
         content: "";
        display: block;
        clear: both;
    }
   
 }

 .detailsleft{
  float: left;
   width:1214px;
   display:flex;
   justify-content:space-between;
   flex-wrap: wrap;
 }
 .detailsright{
   float: right;
   width: 260px;
   height:520px;
   /* position: absolute;
   top:0px;
   right:0px; */
   margin-top: 20px;
 }

/* 第一个列表内容 */
.amsdet{
  width:392px;
  height:361px;
  box-sizing: border-box;
  margin-top: 20px;

}
/* 图片内容 */
.detcarousel{
  width:392px;
  height:261px;
  position:relative;
}
.detcarouselimg{
  width:392px;
  height:261px;
  img{
       width:392px;
      height:261px;
      border-radius: 10px;
      cursor: pointer;
  }
}

/* 收藏图片 */
.detcollect{
  position: absolute;
  top:15px;
  right:20px;
  cursor: pointer;
}
/* 价格 */
.detprice{
  width:60px;
  height: 40px;
  color:#f3f3f3;
  font-size:20px;
  line-height: 40px;
  padding:0px 10px;
  border-top-right-radius:10px;
  border-bottom-left-radius: 10px;
  background: rgba(0,0,0,0.8);
  position: absolute;
  bottom:-2px;
  left:0px;
}

/* 标题内容 */
.dettitlebody{
  width: 100%;
  cursor: pointer;
  position: relative;
}
/* 头像 */
.detheadimg{
  width: 50px;
  height: 50px;
  border-radius:50%;
  position:absolute;
  top:-50px;
  right:20px;
  z-index:1;
  &:hover{
      box-shadow: 0px 0px 5px 2px #fff;
  }
}

/* 标题 */
.dettitle{
  width:65%;
  height:20px;
  margin:20px 0px 10px 0px;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  font-size: 16px;
  color: #484848;
  font-weight: bold;
}
/* 评价列表 */
.detlist{
  width:280px;
  height:20px;
  li{
       display: inline-block;
      font-size: 14px;
      margin:0px 0px 0px 4px;
      padding:0px 2px;
  }
}

/* 速订列表 */
.detsubtitle{
  width:250px;
  height:20px;
}
.subtitle{
  font-size:12px;
  margin:2px 10px;
}
.page{
    width: 100%;
    text-align: center;
    position: relative;
    margin-top: 40px;
    padding-bottom: 50px;
    a{
        background: #fff;
        color: #484848;
        width: 32px;
        height: 32px;
        display: inline-block;
        line-height: 32px;
        margin-left: 5px;
        box-sizing: border-box;
        &:hover,&.active{
             background: #21C58E;
            border-radius: 6px;
            color: #FFF;
        }
        &.prev,&.next{
             width: 82px;
            color: #767676;
        }
    }
}


.lose{
    margin: 0 auto;
    padding-top: 30px;
    text-align: center;
    padding-bottom: 30px;
    span{
         font-size: 14px;
        color: #767676;
        margin-top: 15px;
        display: block;
        text-align: center;
    }
}
.detcarouselimg{
  overflow: hidden;
  &:hover{
      box-shadow: 3px 3px 5px #999;
      transform: perspective(900px) rotateX(20deg) rotateY(0deg);
      transition: all .5s ease .1s;
      img{
          transform: rotate(10deg) scale(1.1);
      }
  }
  &::before{
     content: "";
    display:block;
    position: absolute;
    left: 0px;
    top: 0px;
      width: 392px;
    height: 261px;
    transform: scale3d(0, 1, 0);
    background-color: #ebebeb;
    transform-origin: center;
    transition: all 1s ease .1s;
    z-index: 1;
  }
  &:hover:before{
    transform: scale3d(1, 1,1);
    opacity: 0.6;
  }
  img{
    width: 100%;
    height: 100%;
    transition: all .5s;
  }
}


</style>