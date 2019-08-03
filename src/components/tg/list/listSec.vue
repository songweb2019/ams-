
<template>
    <div class="cont1">
          <div class="path_link">
              <router-link to="/main">首页</router-link><label> > </label>
              <h1>{{cityName}}短租房</h1>
              <span>{{cityName}}的房源获得超过1007800次房客评价，平均得分4.9分（满分5分）</span>
          </div>
          <div class="checkDiv">
              <ul>
                <li class="tuijian">
                  <div>推荐</div>
                  <div class="item">
                    <a href="javascript:;" :class="buxian?'on':''" @click="buxian1">不限</a>
                    <div class="add" v-for="(elem,i) of data" :key="i">
                        <a href="javascript:;"   :class="elem.isC?'check':''" v-text="elem.name"  @click="check(i)"></a>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="font-d">位置</div>
                   <div class="item rt next">
                    <a href="javascript:;" :class="buxianB?'on':''" @click="buxian2" >不限</a>
                    <div class="add  sec" v-for="(elem,i) of data1" :class="i==0?'ccc':''" :key="i">
                        <a href="javascript:;" v-text="elem"></a>
                        <i></i>
                    </div>
                    <div class="lever">
                        <span>
                                            <a  style="position:relative;"
                                                    title="北京站/建国门" href="/beijing_beijingzhanjianguomen/"
                                                    _mayi_rp="weblist|sem_condition|position0">北京站/建国门
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="崇文门" href="/beijing_chongwenmen/"
                                                    _mayi_rp="weblist|sem_condition|position0">崇文门
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="王府井" href="/beijing_wangfujing/"
                                                    _mayi_rp="weblist|sem_condition|position0">王府井
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="广渠门" href="/beijing_guangqumen/"
                                                    _mayi_rp="weblist|sem_condition|position0">广渠门
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="十里堡" href="/beijing_shilibao/"
                                                    _mayi_rp="weblist|sem_condition|position0">十里堡
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="建外大街" href="/beijing_jianwaidajie/"
                                                    _mayi_rp="weblist|sem_condition|position0">建外大街
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="双井" href="/beijing_shuangjing/"
                                                    _mayi_rp="weblist|sem_condition|position0">双井
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="青年路" href="/beijing_qingnianlu/"
                                                    _mayi_rp="weblist|sem_condition|position0">青年路
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="四惠/高碑店" href="/beijing_sihuigaobeidian/"
                                                    _mayi_rp="weblist|sem_condition|position0">四惠/高碑店
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="交道口" href="/beijing_jiaodaokou/"
                                                    _mayi_rp="weblist|sem_condition|position0">交道口
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="天安门" href="/beijing_tiananmen/"
                                                    _mayi_rp="weblist|sem_condition|position0">天安门
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="国贸/CBD" href="/beijing_guomaocbd/"
                                                    _mayi_rp="weblist|sem_condition|position0">国贸/CBD
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="劲松" href="/beijing_jingsong/"
                                                    _mayi_rp="weblist|sem_condition|position0">劲松
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="东四" href="/beijing_dongsi/"
                                                    _mayi_rp="weblist|sem_condition|position0">东四
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="朝外大街" href="/beijing_chaowaidajie/"
                                                    _mayi_rp="weblist|sem_condition|position0">朝外大街
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="朝阳门" href="/beijing_chaoyangmen/"
                                                    _mayi_rp="weblist|sem_condition|position0">朝阳门
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="大望路" href="/beijing_dawanglu/"
                                                    _mayi_rp="weblist|sem_condition|position0">大望路
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="三里屯/工体" href="/beijing_sanlitun/gongti/"
                                                    _mayi_rp="weblist|sem_condition|position0">三里屯/工体
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="朝阳公园/团结湖" href="/beijing_chaoyanggongyuan/"
                                                    _mayi_rp="weblist|sem_condition|position0">朝阳公园/团结湖
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="安定门" href="/beijing_andingmen/"
                                                    _mayi_rp="weblist|sem_condition|position0">安定门
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="角门/马家堡" href="/beijing_jiaomenmajiabao/"
                                                    _mayi_rp="weblist|sem_condition|position0">角门/马家堡
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="十里河" href="/beijing_shilihe/"
                                                    _mayi_rp="weblist|sem_condition|position0">十里河
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="世贸天阶" href="/beijing_shimaotianjie/"
                                                    _mayi_rp="weblist|sem_condition|position0">世贸天阶
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="和平门" href="/beijing_hepingmen/"
                                                    _mayi_rp="weblist|sem_condition|position0">和平门
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="方庄" href="/beijing_fangzhuang/"
                                                    _mayi_rp="weblist|sem_condition|position0">方庄
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="阜成门" href="/beijing_fuchengmen/"
                                                    _mayi_rp="weblist|sem_condition|position0">阜成门
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="西直门" href="/beijing_xizhimen/"
                                                    _mayi_rp="weblist|sem_condition|position0">西直门
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="广安门" href="/beijing_guanganmen/"
                                                    _mayi_rp="weblist|sem_condition|position0">广安门
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="西客站/六里桥" href="/beijing_xikezhanliuliqiao/"
                                                    _mayi_rp="weblist|sem_condition|position0">西客站/六里桥
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="中关村" href="/beijing_zhongguancun/"
                                                    _mayi_rp="weblist|sem_condition|position0">中关村
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="知春路" href="/beijing_zhichunlu/"
                                                    _mayi_rp="weblist|sem_condition|position0">知春路
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="宣武门" href="/beijing_xuanwumen/"
                                                    _mayi_rp="weblist|sem_condition|position0">宣武门
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="西单" href="/beijing_xidan/"
                                                    _mayi_rp="weblist|sem_condition|position0">西单
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="国展中心地区" href="/beijing_guozhanzhongxindiqu/"
                                                    _mayi_rp="weblist|sem_condition|position0">国展中心地区
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="万寿路" href="/beijing_wanshoulu/"
                                                    _mayi_rp="weblist|sem_condition|position0">万寿路
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="学院路" href="/beijing_xueyuanlu/"
                                                    _mayi_rp="weblist|sem_condition|position0">学院路
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="苏州桥" href="/beijing_suzhouqiao/"
                                                    _mayi_rp="weblist|sem_condition|position0">苏州桥
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="望京" href="/beijing_wangjing/"
                                                    _mayi_rp="weblist|sem_condition|position0">望京
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="牛街" href="/beijing_niujie/"
                                                    _mayi_rp="weblist|sem_condition|position0">牛街
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="三元桥/国展" href="/beijing_sanyuanqiao/guozhan/"
                                                    _mayi_rp="weblist|sem_condition|position0">三元桥/国展
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="永定门/南站" href="/beijing_yongdingmennanzhan/"
                                                    _mayi_rp="weblist|sem_condition|position0">永定门/南站
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="五道口" href="/beijing_wudaokou/"
                                                    _mayi_rp="weblist|sem_condition|position0">五道口
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="安贞" href="/beijing_anzhen/"
                                                    _mayi_rp="weblist|sem_condition|position0">安贞
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="管庄" href="/beijing_guanzhuang/"
                                                    _mayi_rp="weblist|sem_condition|position0">管庄
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="亚运村" href="/beijing_yayuncun/"
                                                    _mayi_rp="weblist|sem_condition|position0">亚运村
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="酒仙桥/798" href="/beijing_jiuxianqiao798/"
                                                    _mayi_rp="weblist|sem_condition|position0">酒仙桥/798
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="动物园" href="/beijing_dongwuyuan/"
                                                    _mayi_rp="weblist|sem_condition|position0">动物园
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="牡丹园" href="/beijing_mudanyuan/"
                                                    _mayi_rp="weblist|sem_condition|position0">牡丹园
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="大屯" href="/beijing_datun/"
                                                    _mayi_rp="weblist|sem_condition|position0">大屯
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="燕莎" href="/beijing_yansha/"
                                                    _mayi_rp="weblist|sem_condition|position0">燕莎
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="公主坟" href="/beijing_gongzhufen/"
                                                    _mayi_rp="weblist|sem_condition|position0">公主坟
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="八角游乐园" href="/beijing_bajiaoyouleyuan/"
                                                    _mayi_rp="weblist|sem_condition|position0">八角游乐园
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="蓝色港湾" href="/beijing_lansegangwan/"
                                                    _mayi_rp="weblist|sem_condition|position0">蓝色港湾
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="回龙观" href="/beijing_huilongguan/"
                                                    _mayi_rp="weblist|sem_condition|position0">回龙观
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="丰台科技园" href="/beijing_fengtaikejiyuan/"
                                                    _mayi_rp="weblist|sem_condition|position0">丰台科技园
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="新国展" href="/beijing_xinguozhan/"
                                                    _mayi_rp="weblist|sem_condition|position0">新国展
                                            </a>
											</span>
                                            <span>
                                            <a  style="position:relative;"
                                                    title="大兴黄村" href="/beijing_daxinghuangcun/"
                                                    _mayi_rp="weblist|sem_condition|position0">大兴黄村
                                            </a>
											</span>

                  </div>
                  </div>
                  
                </li>
                <li style="margin-left:240px">
                  <div class="font-d price">价格</div>
                  <a href="javascript:;" :class="buxianD?'on':''" @click="buxianD=!buxianD" >不限</a>
                   <div class="price">                 
                       <price-range class="prices"></price-range>
                  </div>
                </li>
                <li class="tuijian">
                  <div>户型</div>
                  <div class="item">
                    <a href="javascript:;" :class="buxianC?'on':''" @click="buxian3">不限</a>
                    <div class="add" v-for="(elem,i) of data2" :key="i">
                        <a href="javascript:;"   :class="elem.isC?'check':''" v-text="elem.name"  @click="checks(i)"></a>
                    </div>
                  </div>
                </li>
              </ul>
          </div>
    </div>

</template>
<script>
import qs from 'qs';
import priceRange from './priceRange.vue'
export default {
  data(){
    return {
      cityName:"郑州",
      data:[
        {isC:false,name:'可做饭'},
        {isC:false,name:'民宿优选'},
        {isC:false,name:'有家'},
        {isC:false,name:'月租周租'},
        {isC:false,name:'速订'},
        {isC:false,name:'实拍'},
        {isC:false,name:'商旅'}
      ],
      data1:['商圈','景点','行政区','车站机场','地铁','学校','医院'],
      data2:[
        {isC:false,name:'一居'},
        {isC:false,name:'二居'},
        {isC:false,name:'三居'},
        {isC:false,name:'四居及以上'}
      ],
      buxian:false,
      buxianB:false,
      buxianC:false,
      buxianD:false
    }
  },
  methods:{
    checks(i){
      this.data2[i].isC=!this.data2[i].isC;
      if(this.data2[i].isC){
          this.buxianC=false;
      }
    },
    check(i){
      this.data[i].isC=!this.data[i].isC;
      if(this.data[i].isC){
          this.buxian=false;
      }
    },
    buxian1(){
       this.buxian=!this.buxian;
        if(this.buxian){
          for(var elem of this.data){
            elem.isC=false;
          }
        }
    },
    buxian2(){
       this.buxianB=!this.buxianB;
        if(this.buxianB){
          for(var elem of this.data){
            elem.isC=false;
          }
        }
    },
    buxian3(){
       this.buxianC=!this.buxianC;
        if(this.buxianC){
          for(var elem of this.data2){
            elem.isC=false;
          }
        }
    }
  },
  created(){
    if(this.$store.getters.getCityName){
      this.cityName=this.$store.getters.getCityName;
    }
  },
  watch:{
    cityName(){
    this.$store.commit("setCityName",this.cityName);
    }
  },
  components:{
    "priceRange":priceRange
  }
}
</script>
<style scoped>
a{
  text-decoration: none;
    cursor: pointer;
    outline: none;
    color: #322c27;
}
.cont1{
    color: #484848;
    padding-top: 60px;
    background: #fff;
}
.path_link{
      width: 94.44%;
    margin: 0px auto;
    padding-bottom: 10px;
}
.path_link a{
  color: #484848;
  font-size: 14px;
}
a{
  text-decoration: none;
    cursor: pointer;
    outline: none;
}
.path_link  h1{
    display: inline;
    font-weight: normal;
    font-size: 14px;
}
.path_link span{
    margin-left: 10px;
    font-size: 12px;
}
.checkDiv{
   width: 94.44%;
    margin: 0px auto;
    display: block;
    background: #F8F8F8;
    border-radius: 6px;
    padding: 26px 26px 0;
    box-sizing: border-box;
    min-width: 1100px;
}
.checkDiv>ul{
    position: relative;
    display: block;
}
.checkDiv>ul>li{
    position: relative;
    display: inline-block;
    padding-bottom: 20px;
    box-sizing: border-box;
    font-size: 14px;
}
.checkDiv>ul>li.tuijian{
  display: block;
}
li.tuijian>div:first-child{
    position: absolute;
    left: 0;
    top: 0;
    line-height: 24px;
    font-weight: bold;
    font-size: 12px;
}
li.tuijian>div:last-child{
    padding-left: 54px;
    display: block;
    line-height: 24px;
}
div.item a{
  display: inline-block;
    padding: 0 6px;
    margin-top: -4px;
    border-radius: 2px;
    font-size: 12px;
    color: #484848;
}
div.item a.on{
    background: #21C58E;
    color: #fff;
    border-radius: 2px;
    line-height: 24px;
    box-sizing: border-box;
    padding-top: 1px;
    margin-right: 18px;
}
div.price+a.on{
    background: #21C58E;
    color: #fff;
    border-radius: 2px;
    line-height: 24px;
    box-sizing: border-box;
    padding-top: 1px;
    margin-right: 18px;
}
div.price+a{
   display: inline-block;
    padding: 0 6px;
    margin-top: -4px;
    border-radius: 2px;
    font-size: 12px;
    color: #484848;
    margin-right: 18px;
}
div.item>a:first-child{
     margin-right: 18px;
}
.add{
      color: #5d5c5b;
    display: inline-block;
    box-sizing: border-box;
    padding-left: 6px;
    padding-right: 6px;
    margin-right: 10px;
    position: relative;
    font-size: 12px;
}
.add a{
  background: url("../../../assets/list/xuanzekuang.png") no-repeat 0 6px;
    text-indent: 18px;
    padding: 0 6px;
    line-height: 24px;
    height: 24px;
    padding-top: 1px;
    margin-top: 0;
    color: #484848;
}
.add a.check{
   background-position: 0 -42px;
}
.font-d{
      position: absolute;
    left: 0;
    top: 0;
    line-height: 24px;
    font-weight: bold;
    font-size: 12px;
}
.rt{
      padding-left: 54px;
    display: block;
    line-height: 24px;
}
.add.sec a{
     background: none;
    text-indent: 18px;
    padding: 0 ;
    line-height: 24px;
    height: 24px;
    padding-top: 1px;
    margin-top: 0;
    color: #484848;
}
div.ccc{
  margin-left: -18px;
}
div.sec i{
    background: url("../../../assets/list/position_icon.png") no-repeat;
    background-position: 0 0;
    width: 10px;
    height: 5px;
    display: inline-block;
    margin-left: 5px;
    position: relative;
    top: -2px;
}
div.sec:hover i{
  background-position: 0 -10px;
}
.price{
  display: inline-block;
  height: 24px;
    position: relative;
}
.price.font-d{
  width: 40px;
}
.prices{
  position: absolute;
  top: 4px;
}
ul li div.lever{
     background: #fff;
    box-shadow: 0 1px 6px 0 rgba(0, 0, 0, 0.12);
    padding: 16px 30px 10px;
    display: none;
    position: absolute;
    z-index: 8;
    width: 754px;
    box-sizing: border-box;
    left: 80px;
    top: 24px;
    border-radius: 6px;
    overflow: hidden;
}
ul li div.lever a{
      line-height: 24px;
    display: inline-block;
    margin-right: 16px;
    font-size: 12px;
    width: 7em;
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
    color: #484848;
    position: relative;

}
div.lever a:hover{
  color: #21C58E;
}
</style>
