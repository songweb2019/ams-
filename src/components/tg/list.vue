<template>
  <div>
      <nav-top class="navTop"></nav-top>
      <nav-cen></nav-cen>
      <list-sec></list-sec>
     <div>
        <list-li></list-li>
     </div>
     <footers></footers>
  </div>
</template>
<script>
import qs from   'qs';
import navS from './list/nav.vue'
import navC from './list/navBar.vue'
import listRight from './list/listRight.vue'
import listSec from './list/listSec.vue'
import listLi from './list/listLi.vue'
import footers from './footer.vue'
export default {
    data(){
      return {
        
      }
    },
    components:{
     "navTop":navS,
     "navCen":navC,
     "listRight":listRight,
     "listSec":listSec,
     "listLi":listLi,
     "footers":footers
   },
   methods:{
    
   },
   created(){
   }
}
</script>
<style scoped>
.navTop{
  position: fixed;
}
</style>

