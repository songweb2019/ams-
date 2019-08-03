<template>
  <div>
    <Calendar   @choseDay ='checkDay'></Calendar>
  </div>
</template>
<script>
import Calendar from 'vue-calendar-component';
export default {
  data(){
    return {

    }
  },
  components:{
   		Calendar
  },
  methods:{

  },
  props:{
    checkDay:{}
  }
}
</script>
<style scoped>

</style>

