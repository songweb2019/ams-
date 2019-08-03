<template>
    <div class="first">
          <div class="box">
                <ul  @mouseenter="clearT" @mouseleave="timeout">
                  <li v-for="(elem,i) of imgs" :key="i" v-show="i+1==n">
                    <a href="javascript:;">
                      <img :src='"http://127.0.0.1:3000/"+elem' alt="">
                    </a>
                  </li>
                </ul>
          </div>
          <div class="smallBox">
            <div>
                <ul  @mouseenter="clearT" @mouseleave="timeout" :style="{height:(90*smallImgs.length)+'px',marginTop:n<=imgs.length-7?(n-1)*-70+'px':'-280px'}">
                  <li v-for="(elem,i) of smallImgs" :key="i"  @click="change(i+1)">
                    <a href="javascript:;" :class="i+1==n?'active':''">
                      <img :src='"http://127.0.0.1:3000/"+elem' alt="">
                    </a>
                  </li>
                </ul>
                <a href="javascript:;" class="prev" @click="changeIndex(-1)"  @mouseenter="clearT" @mouseleave="timeout"></a>
                 <a href="javascript:;" class="next" @click="changeIndex(1)"  @mouseenter="clearT" @mouseleave="timeout"></a>
              </div>
          </div>
    </div>
</template>
<script>
import qs from 'qs'
    export default {
        data() {
            return {
              n:1,//图片当前的位置
              isLove:false,
              //imgs:['//i1.mayi.com//mayi53/M94/QN/IX/NAURJ34722NYCGQ3RJJ8E9JCEJDDF6.jpg_732x480cw.jpg','//i1.mayi.com//mayi87/M72/VH/XS/Z8JDW9ZLNSEV28VNS7HLUC9RXZ7MDB.jpg_732x480cw.jpg','//i1.mayi.com//mayi53/M19/GH/OM/772KW8RNWNC8WJZGJ7ZLVGMUSFWP95.jpg_732x480cw.jpg','//i1.mayi.com//mayi53/M94/QN/IX/NAURJ34722NYCGQ3RJJ8E9JCEJDDF6.jpg_732x480cw.jpg','//i1.mayi.com//mayi87/M72/VH/XS/Z8JDW9ZLNSEV28VNS7HLUC9RXZ7MDB.jpg_732x480cw.jpg','//i1.mayi.com//mayi53/M19/GH/OM/772KW8RNWNC8WJZGJ7ZLVGMUSFWP95.jpg_732x480cw.jpg','//i1.mayi.com//mayi53/M19/GH/OM/772KW8RNWNC8WJZGJ7ZLVGMUSFWP95.jpg_732x480cw.jpg','//i1.mayi.com//mayi53/M19/GH/OM/772KW8RNWNC8WJZGJ7ZLVGMUSFWP95.jpg_732x480cw.jpg'],
              //smallImgs:['//i1.mayi.com//mayi53/M94/QN/IX/NAURJ34722NYCGQ3RJJ8E9JCEJDDF6.jpg_90x60c.jpg','//i1.mayi.com//mayi87/M72/VH/XS/Z8JDW9ZLNSEV28VNS7HLUC9RXZ7MDB.jpg_90x60c.jpg','//i1.mayi.com//mayi53/M19/GH/OM/772KW8RNWNC8WJZGJ7ZLVGMUSFWP95.jpg_90x60c.jpg','//i1.mayi.com//mayi53/M94/QN/IX/NAURJ34722NYCGQ3RJJ8E9JCEJDDF6.jpg_90x60c.jpg','//i1.mayi.com//mayi87/M72/VH/XS/Z8JDW9ZLNSEV28VNS7HLUC9RXZ7MDB.jpg_90x60c.jpg','//i1.mayi.com//mayi53/M19/GH/OM/772KW8RNWNC8WJZGJ7ZLVGMUSFWP95.jpg_90x60c.jpg','//i1.mayi.com//mayi53/M19/GH/OM/772KW8RNWNC8WJZGJ7ZLVGMUSFWP95.jpg_90x60c.jpg','//i1.mayi.com//mayi53/M19/GH/OM/772KW8RNWNC8WJZGJ7ZLVGMUSFWP95.jpg_90x60c.jpg'],
              // imgs:[],
              // smallImgs:[],
              hid:0//查询字符串
           }
        },
        methods:{
              // queryHid(){
              //       if(this.$route.query.hid){
              //           var hid =this.$route.query.hid;
              //       }               
              //       this.axios.post("/product/detail",qs.stringify({
              //           hid:this.hid
              //       })).then(result=>{
              //           if(result.data.code>0){
              //               var list=result.data.data[0];
              //               var arr = Object.values(list);
              //               for(var i=2;i<13;i++){
              //                     this.imgs[i-2]=arr[i];                    
              //               }
              //               for(var i=13;i<24;i++){
              //                     this.smallImgs[i-13]=arr[i];                    
              //               }
              //           }else{
              //               this.imgs=['//i1.mayi.com//mayi53/M94/QN/IX/NAURJ34722NYCGQ3RJJ8E9JCEJDDF6.jpg_732x480cw.jpg','//i1.mayi.com//mayi87/M72/VH/XS/Z8JDW9ZLNSEV28VNS7HLUC9RXZ7MDB.jpg_732x480cw.jpg','//i1.mayi.com//mayi53/M19/GH/OM/772KW8RNWNC8WJZGJ7ZLVGMUSFWP95.jpg_732x480cw.jpg','//i1.mayi.com//mayi53/M94/QN/IX/NAURJ34722NYCGQ3RJJ8E9JCEJDDF6.jpg_732x480cw.jpg','//i1.mayi.com//mayi87/M72/VH/XS/Z8JDW9ZLNSEV28VNS7HLUC9RXZ7MDB.jpg_732x480cw.jpg','//i1.mayi.com//mayi53/M19/GH/OM/772KW8RNWNC8WJZGJ7ZLVGMUSFWP95.jpg_732x480cw.jpg','//i1.mayi.com//mayi53/M19/GH/OM/772KW8RNWNC8WJZGJ7ZLVGMUSFWP95.jpg_732x480cw.jpg','//i1.mayi.com//mayi53/M19/GH/OM/772KW8RNWNC8WJZGJ7ZLVGMUSFWP95.jpg_732x480cw.jpg'];
              //               this.smallImgs=['//i1.mayi.com//mayi53/M94/QN/IX/NAURJ34722NYCGQ3RJJ8E9JCEJDDF6.jpg_90x60c.jpg','//i1.mayi.com//mayi87/M72/VH/XS/Z8JDW9ZLNSEV28VNS7HLUC9RXZ7MDB.jpg_90x60c.jpg','//i1.mayi.com//mayi53/M19/GH/OM/772KW8RNWNC8WJZGJ7ZLVGMUSFWP95.jpg_90x60c.jpg','//i1.mayi.com//mayi53/M94/QN/IX/NAURJ34722NYCGQ3RJJ8E9JCEJDDF6.jpg_90x60c.jpg','//i1.mayi.com//mayi87/M72/VH/XS/Z8JDW9ZLNSEV28VNS7HLUC9RXZ7MDB.jpg_90x60c.jpg','//i1.mayi.com//mayi53/M19/GH/OM/772KW8RNWNC8WJZGJ7ZLVGMUSFWP95.jpg_90x60c.jpg','//i1.mayi.com//mayi53/M19/GH/OM/772KW8RNWNC8WJZGJ7ZLVGMUSFWP95.jpg_90x60c.jpg','//i1.mayi.com//mayi53/M19/GH/OM/772KW8RNWNC8WJZGJ7ZLVGMUSFWP95.jpg_90x60c.jpg'];
              //           }
              //       })
              // },
             changeIndex(m){
                    if(m>0){
                        if(this.n>0&&this.n<this.imgs.length){
                        this.n++;
                        }else if(this.n>=this.imgs.length){
                          this.n=1;
                        }
                    }else{
                      if(this.n>1){
                        this.n--;
                        }else if(this.n<=1){
                          this.n=this.imgs.length;
                        }
                    }
             },
              next(){
                 this.timer2=setInterval(()=>{
                        this.n=this.n==this.imgs.length?1:this.n+1;　
                    },4000);
              },
              clearT(){　　　　　　　　　　　　　
                  clearTimeout(this.timer2);
              },
              timeout(){　　　　
                this.btnD=false;　　
                  // 运动结束后设置bFlag为true，并且3秒后调用next，进行下一次运动。
                  // 运动时间是1s。
                 this.next();
              },
              change(num){　　　　　　　　　　
                  // 点击按钮，切换到对应图片，需要获取index。
                      this.n=num;　　　　　　　         // 将显示图片变为选中的那一张。　　　　
                  
              }
        },
        created(){
              this.next();
              // this.queryHid();
        },
        props:{
          imgs:{},
          smallImgs:{}
        }
    }
</script>
<style scoped lang="scss">
.first{
    overflow: hidden;
    height: 486px;
    margin-top: 4px;
    text-align: center;
    display: table-cell;
    vertical-align: middle;
    position: relative;
}

.box {
   overflow: hidden;
    width: 732px;
    height: 486px;
    position: relative;
    vertical-align: middle;
    display: table-cell;
  ul{
    width: 732px;
   height: 481px;
   li{
     text-align: center;
    vertical-align: middle;
    /* display: none; */
    height: 481px;
   }
  }
  
}




.smallBox {
   overflow: hidden;
    width: 732px;
    height: 486px;
    position: relative;
    vertical-align: middle;
    display: table-cell;
      div{
        position: relative;
        width: 104px;
        z-index: 1;
        overflow: hidden;
        height: 481px;
      }
}
.smallBox {
 ul{
    position: absolute;
    left: 10px;
    li{
        height: 60px;
        position: relative;
        margin-bottom: 10px;
        width: 90px;
        a{
          width: 90px;
          height: 60px;
          display: block;
          overflow: hidden;
          &.active{
            position: absolute;
            border: solid 2px #ff5d51;
            left: 0px;
            top: 0px;
            width: 86px;
            height: 56px;
          }
          img{
            width: 100%;
            height: 100%;
          }
        }
    }
 }
}


// .smallBox ul li a.active{
//     position: absolute;
//     border: solid 2px #ff5d51;
//     left: 0px;
//     top: 0px;
//     width: 86px;
//     height: 56px;
// }
.smallBox {
  .prev{
      background-image: url("../../../assets/detail/rt_lt1.png");
      background-repeat: no-repeat;
      background-size: 30px 50px;
      position: absolute;
      display: block;
      width: 90px;
      height: 30px;
      background-color: rgba(0,0,0,0.6);
      left: 10px;
      top: 0px;
      z-index: 1;
      background-position: 28px 6px;
    }
    .next{
      background-image: url("../../../assets/detail/rt_lt1.png");
      background-repeat: no-repeat;
      background-size: 30px 50px;
      position: absolute;
      display: block;
      width: 90px;
      height: 30px;
      background-color: rgba(0,0,0,0.6);
      left: 10px;
      top: 451px;
      background-position: 28px -27px;
      z-index: 10;
    }
}

</style>