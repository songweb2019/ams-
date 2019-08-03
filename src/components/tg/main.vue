
<template>
      <div>
         <car></car>
         <fft style="margin-top:80px"></fft>
         <footers class="footers"></footers>
      </div>  
</template>

<script>

import  car from "./carousel.vue"
import  footer from "./footer.vue"
import  fft from "./index.vue"
export default {
    data(){
      return{

      }
    },
    methods:{
    },
    components:{
     "car":car,
     "footers":footer,
     "fft":fft
   },
   created(){
  
   }
    
}
</script>

<style scoped>
.footers{
  margin-top: 50px;
}
</style>

