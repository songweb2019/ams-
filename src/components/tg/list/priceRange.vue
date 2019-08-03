
<template>
  <div class="new-filter">
    <span class="multi-range">
        <input type="range" min="0" max="1000" v-model="rangeBoundary0" id="lower">
        <input type="range" min="0" max="1000" v-model="rangeBoundary1" id="upper">
    </span>
    <div class="price">¥{{rangeMin}}-¥{{rangeMax}}<span v-if="rangeMax==1000">+</span></div>
</div>
</template>

<script>
export default {
      data(){
            return {
            rangeBoundary0:0,
            rangeBoundary1:1000
            }
        },
        computed:{
            rangeMax:function () {
                return Number(this.rangeBoundary0) >Number(this.rangeBoundary1)?this.rangeBoundary0:this.rangeBoundary1
            },
            rangeMin:function () {
                return Number(this.rangeBoundary0) >Number(this.rangeBoundary1)?this.rangeBoundary1:this.rangeBoundary0
            }
        }
}
</script >

<style scoped>
.price{
  position: absolute;
  top:8px;
  left: 250px;
  display: inline-block;
  margin-left: 20px;
  color: #BDBDBD;
  min-width: 7em;
}
input[type=range]{
        box-sizing: border-box;
        -webkit-appearance: none;
        -moz-appearance: none;
        appearance: none;
        width: 250px;
        margin: 0;
        padding: 0px;
        /* Add some L/R padding to ensure box shadow of handle is shown */
        overflow: hidden;
        border: 0;
        border-radius: 1px;
        outline: none;
        background: -webkit-linear-gradient(#4ED4A7,#4ED4A7) no-repeat center;
        background: linear-gradient(#4ED4A7, #4ED4A7) no-repeat center;
        /* Use a linear gradient to generate only the 2px height background */
        background-size: 100% 2px;
        pointer-events: none;
    }
    input[type=range]:active,
    input[type=range]:focus {
        outline: none;
    }
    input[type=range]::-webkit-slider-thumb {
        height: 20px;
        width: 20px;
        border-radius: 20px;
        background-color: #fff;
        border: 1px solid #4ED4A7;
        position: relative;
        margin: 5px 0;
        /* Add some margin to ensure box shadow is shown */
        cursor: pointer;
        -webkit-appearance: none;
        appearance: none;
        pointer-events: all;
        box-shadow: 0 1px 4px 0.5px rgba(0, 0, 0, 0.25);
    }
    input[type=range]::-webkit-slider-thumb::before {
        content: ' ';
        display: block;
        position: absolute;
        top: 13px;
        left: 100%;
        width: 2000px;
        height: 2px;
    }
    .multi-range {
        position: relative;
        height: 25px;
        display: inline-block;
    }
    .multi-range input[type=range] {
        position: absolute;
    }
    .multi-range input[type=range]:nth-child(1)::-webkit-slider-thumb::before {
        background-color: red;
    }
    .multi-range input[type=range]:nth-child(2) {
        background: none;
    }
    .multi-range input[type=range]:nth-child(2)::-webkit-slider-thumb::before {
        background-color: grey;
    }

 
</style>
