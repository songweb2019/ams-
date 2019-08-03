
<template>
<div>
    <div class="login">
        <footer>
          <p>© 2019mubeixi.top版权所有 经营性备案号：豫ICP备19020175号</p>
        </footer>
        <div class="logoS">
          <router-link to="/main">
            <img  src="../../assets/logoLogin.png" class="logo" alt="">
            <h1>爱民宿</h1>
       
          </router-link>
        </div>
        <div class="tg_login">
              <h3>注册/登录</h3>
              <!-- 登录 -->
              <div class="msg" v-if="arrMsg!=''">
                      <i></i><span style="color:red" v-text="arrMsg"></span>
              </div>
              <div class="msg" v-else-if="arrMsg==''">
              </div>
              <div class="loginInput" >
                <div v-if="loginUser">
                  <div class="uname">
                    <input type="text" @blur="nameBlur" v-model="unames" autocomplete="off" placeholder="请输入你的用户名">
                  </div>
                  <div class="upwd">
                    <input type="password" @blur="pwdBlur" v-model="upwds" placeholder="请输入你的密码">
                  </div>
                   <div class="actionPwdDiv">
                        <p class="actionPwd">
                            <a href="javascript:;">忘记密码?</a>
                            <input type="checkbox" v-model="ji">
                            <label for="rember_pwd">记住密码</label>
                        </p>
                        <p class="actionSame">
                            还没有账户<a href="javascript:;" @click="loginUser=false">快来注册吧！</a>
                        </p>
                    </div>
                    <div class="logins">
                        <button class="userLogin" @click="loginU" :disabled="deng">登录</button>
                    </div>
                </div> 


                 <div v-if="!loginUser">
                  <div class="uname">
                    <input type="text"  v-model="regnames" autocomplete="off" @blur="nameBlurR" placeholder="请输入注册用户名">
                  </div>
                  <div class="upwd">
                    <input type="password"  v-model="regpwds" @blur="pwdBlurR" placeholder="请输入注册密码">
                  </div>
                   <div class="actionPwdDiv">
                        <p class="actionSame" style="margin-top:33px;">
                            已有账户<a href="javascript:;" @click="loginUser=true">快来登录吧</a>
                        </p>
                    </div>
                    <div class="logins">
                        <button class="userLogin" @click="regs" :disabled="reg">注册</button>
                    </div>
                </div> 
                    <!-- 第三方 -->
                    <div class="mbx_other">
                    <h4>第三方账户登录</h4>
                    <a href="javascript:;" class="qq1"></a>
                    <a href="javascript:;" class='wx1'></a>
                    <a href="javascript:;" class="wb1"></a>
                    <a href="javascript:;" class="zfb1"></a>
                    </div>
                </div>
              </div>

        </div>
        
    </div>
</template>

<script>
import qs from 'qs'
export default {
  data(){
    return {
        unames:"",
        upwds:"",
        regnames:"",
        regpwds:"", 
        deng:false,
        reg:false,
        arrMsg:'',
        ji:false,
        loginUser:true
    }
  },
  created(){
    this.addPwd();
  },
  methods:{
    regs(){
        //发送ajax请求
         this.axios.post("/user/reg",qs.stringify({
              uname:this.regnames,
              upwd:this.regpwds
          })).then(result=>{
              if(result.data.code>0){
                alert("注册成功，快去登陆吧！");
               location.reload()
              }
          })
    },
    nameBlurR(){
       var reg=/^(([\u4e00-\u9fa5])|\w){3,8}$/;
        if(!reg.test(this.regnames)){
        this.reg=true;
        this.arrMsg="用户名长度为3到8位";
        }else{
          this.reg=false;
          this.arrMsg='';
        }
         this.axios.post("/user/regs",qs.stringify({
              uname:this.regnames
          })).then(result=>{
              if(result.data.code>0){
                this.arrMsg='用户名已经存在';          
                this.reg=true;
              }else{
                 this.arrMsg='';
                  this.reg=false;
              }
          })
    },
    nameBlur(){
      var reg=/^(([\u4e00-\u9fa5])|\w){3,8}$/;
      if(!reg.test(this.unames)){
        this.deng=true;
        this.arrMsg="用户名长度为3到8位";
      }else{
         this.deng=false;
         this.arrMsg='';
      }
    },
    pwdBlurR(){
       var reg=/^\w{3,8}$/;
      if(!reg.test(this.regpwds)){
          this.reg=true;
           this.arrMsg="密码长度为3到8位";
      }else{
         this.reg=false;
         this.arrMsg='';
      }
    },
    pwdBlur(){
      var reg=/^\w{3,8}$/;
      if(!reg.test(this.upwds)){
          this.deng=true;
           this.arrMsg="密码长度为3到8位";
      }else{
         this.deng=false;
         this.arrMsg='';
      }
    },
    loginU(){
      this.axios.post("user/login",qs.stringify({
              uname:this.unames,
              upwd:this.upwds
          })).then(result=>{
              if(result.data.code>0){
                this.$router.push({path:'/main'});
                this.arrMsg="";
                // document.cookie=`uname=${this.unames}`;
                sessionStorage.setItem("uname",this.unames);
                this.arrMsg="";
                if(this.ji){
                  localStorage.uname=this.unames;
                  localStorage.upwds=this.upwds;
                }else{
                  localStorage.uname='';
                  localStorage.upwds='';
                }
              }else{
                this.arrMsg="用户名或密码错误";
                 this.unames="";
                this.upwds="";
              }
          })
    },
    addPwd(){
           if(localStorage.uname){
             this.unames=localStorage.uname;
            this.upwds=localStorage.upwds;
           }
    }
  }
}
</script>

<style scoped>
a{
  text-decoration: none;
}
.login{
    background: url("../../assets/login/login.jpg") no-repeat center ;
    background-size: cover;
    border-top: 1px solid transparent;
    border-bottom: 1px solid transparent;
    margin-top: -1px;
    padding: 0 0 20px;
    height: 600px;
    position: relative;
}
footer{
      position: absolute;
    left: 0;
    right: 0;
    top: 100%;
    width: 100%;
    margin: 0;
        clear: both;
    font-size: 12px;
    color: #999;
        margin-top: 30px;
    text-align: center;
}
.tg_login{
    position: absolute;
    z-index: 2;
    top: 122px;
    right: 320px;
    width: 312px;
    padding-bottom: 38px;
    box-shadow: 0 0 8px #ccc;
    background-color: #FEFEFE;
}
.tg_login>h3{
      height: 38px;
    font-size: 18px;
    color: #9b745c;
    font-family: "microsoft yahei";
    text-align: center;
    line-height: 38px;
    margin-top: 14px;
}
.msg{
 height: 17px;
 padding-left: 26px;
}
.msg i{
    display: inline-block;
    width: 17px;
    height: 17px;
    margin-right: 5px;
    overflow: hidden;
    background-position: 0 -191px;
    vertical-align: -3px;
    background: url("../../assets/login/arr.png") no-repeat center;
    background-position: 0 -296px;
}
.loginInput>div{
  position: relative;
}
.uname>input{
    background: url("../../assets/login/ico-uinput.png") no-repeat 12px 12px;
    background-color: #fff;
    display: block;
    width: 214px;
    height: 36px;
    border: 1px solid #e6e6e6;
    border-radius: 4px;
    margin-top: 12px;
    margin-left: 25px;
    color: #666;
    line-height: 38px;
    padding-left: 38px;
}
.upwd>input{
    background: url("../../assets/login/ico-uinput.png") no-repeat 12px -24px;
    background-color: #fff;
    display: block;
    width: 214px;
    height: 36px;
    border: 1px solid #e6e6e6;
    border-radius: 4px;
    margin-top: 12px;
    margin-left: 25px;
    color: #666;
    line-height: 38px;
    padding-left: 38px;
}
.actionPwdDiv{
  width: 254px;
}
/*  */
.actionPwd {
    margin-top: 8px;
}

.actionPwdDiv p {
    align: center;
    display: block;
    padding-left: 38px;
}

.actionPwd a {
    float: right;
    font-size: 12px;
    position: relative;
    left: 25px;
    top: 3px;
    color: #888888;
}

.actionPwd input {
    width: 12px;
    height: 12px;
    position: relative;
    top: 2px;
}

.actionPwd label {
    font-size: 12px;
    position: relative;
    top: -1px;
}

.actionSame {
    text-align: center;
    font-size: 12px;
    margin-top: 6px;
}

.actionSame a {
    color: #BDA393;
}

.logins {
    width: 254px;
    text-align: center;
    margin-top: 15px;
    margin-left: 25px;
}

.logins button {
    width: 248px;
    height: 40px;
    font-size: 14px;
    background-color: white;
    border: 1px solid #8b766c;
    color: #8b766c;
}


.userReg:disabled, .userLogin:disabled {
    background-color: #A88F82;
    color: #fff;
}
.mbx_other {
    /*position: absolute;
	top: 320px;
	right: -10px;*/
    width: 312px;
    height: 45px;
    background: #fefefe;
    border-bottom-left-radius: 4px;
    border-bottom-right-radius: 4px;
    text-align: center;
    /*padding-bottom: 70px;
	box-shadow: 0 0 8px #ccc;*/
}

.mbx_other h4 {
    display: block;
    margin-block-start: 4em;
    margin-block-end: 1.33em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    width: 100%;
    color: #9b745c;
    font-size: 12px;
    text-align: center;
    background: url("../../assets/login/otherLoginHr.png") no-repeat center center;
}

.mbx_other a {
    display: inline-block;
    width: 21px;
    height: 16px;
    margin: 0px 8px 0;
    background: url("../../assets/login/ico-otherLogin.png") no-repeat;
    vertical-align: middle;
}

.mbx_other .qq1 {
    background-position: 0 0;
}

.mbx_other .wx1 {
    background-position: -42px 0;
}

.mbx_other .wb1 {
    background-position: -87px 0;
}

.mbx_other .zfb1 {
    background-position: -130px 0;
}
.qq1:hover {
    background-position: 0 -27px;
}

.wx1:hover {
    background-position: -42px -27px;
}

.wb1:hover {
    background-position: -87px -27px;
}

.zfb1:hover {
    background-position: -130px -27px;
}
.logoS{
  display: flex;
  position: absolute;
  top: 50px;
  left: 400px;
  cursor: pointer;
}
.logoS img.logo{
  width: 40px;
  height: 40px;
  background:#17bd88;
  padding: 3px;
  border-radius: 5px;
  margin-right: 10px;
}

.logoS h1{
  font-size: 38px;
  line-height: 46px;
  font-weight: 400;
}
.logoS a{
  display: flex;
  color: #000000;

}
.logo{
  width: 45px;
  height: 45px;
}

</style>
