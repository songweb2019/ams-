<template> 
 <div class="app"> 
  <div class="allmap" ref="allmap"></div> 
 </div> 
</template> 
<script> 
import qs from "qs"
export default { 
    data(){
      return{
         main:""
      }
    },
    methods:{ 
       queryHid(){
              if(this.$route.query.hid){
                       this.hid =this.$route.query.hid;
                }  
             this.axios.post("/product/detail",qs.stringify({
                         hid:this.hid
            })).then(result=>{
                if(result.data.code>0){
                      this.main=result.data.main[0];
          //百度地图api
          let map =new BMap.Map(this.$refs.allmap); // 创建Map实例 
          map.centerAndZoom(new BMap.Point(this.main.jing,this.main.wei), 15);// 初始化地图,设置中心点坐标（经纬度/城市的名称）和地图级别 
          map.addControl(new BMap.MapTypeControl({//添加地图类型控件 
            mapTypes:[ 
            BMAP_NORMAL_MAP, 
            BMAP_HYBRID_MAP 
            ]})); 
          map.setCurrentCity("北京");// 设置地图显示的城市 此项是必须设置的 
          map.enableScrollWheelZoom(true); //开启鼠标滚轮缩放 
          //map.setMapStyle({style:'midnight'});//地图风格
          
            var icon = new BMap.Icon('http://webmap0.map.bdstatic.com/wolfman/static/common/images/us_cursor_9517a2b.png', new BMap.Size(10, 22), {
              imageOffset:new BMap.Size(-10,0)
            });
            //创建一个图像标注实例。point参数指定了图像标注所在的地理位置
            var mkr = new BMap.Marker(new BMap.Point(this.main.jing,this.main.wei), {
                icon: icon
            });
            //将覆盖物添加到地图中
              var label = new BMap.Label("北京市", {
                offset : new BMap.Size(-85, -120)
            });
            map.addOverlay(mkr);
            //将地图的中心点更改为给定的点
            map.panTo(this.main.jing,this.main.wei);
                      
                }
            })
        }
 },
 created(){
   this.queryHid();
 }
 
} 
</script> 
<style>
.app { 
 font-family: 'Avenir', Helvetica, Arial, sans-serif; 
 -webkit-font-smoothing: antialiased; 
 -moz-osx-font-smoothing: grayscale; 
 text-align: center; 
 color: #2c3e50; 
 margin-top: 60px; 
}   
/*设置地图的宽高*/
.allmap{ 
 height: 500px; 
 overflow: hidden; 
} 
</style>