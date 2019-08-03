 <template>
    <div class="wai clearfloat">
          <div class="top clearfloat">
                <div class="clearfloat">
                    <div class="priceL">
                          ¥<span>858</span>/晚
                    </div>
                    <div class="suding">
                          <img src="//staticnew.mayi.com/resourcesWeb/images/v2016/suding_icon.png" alt="">
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

        }
    }
</script>
<style scoped>
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
</style>