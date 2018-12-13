<template>
    <div class="app-user"> 
		
        <div class="mui-card">
				<div class="mui-card-content">
					<div class="mui-card-content-inner">
                        <img src="../img/logo3.png" class="img1">
					</div>
				</div>
			</div>
            <div class="mui-card">
				<div class="mui-card-content">
					<div class="mui-card-content-inner">
						<form action="#">
           					用户名：<input type="text" name="uname" v-model="unameval" onfocus><br>
           	 				密码：<input type="text" upwd="upwd" v-model="upwdval"><br>
            <input type="button" id="btn" value="登录" @click="btnSubmit"><br> 
        </form>
					</div>
				</div>
				<div class="mui-card-footer">
					<a class="mui-card-link"><button class="button mui-btn mui-btn-danger">微博登录</button></a>
					<a class="mui-card-link"><button class="button mui-btn mui-btn-primary">注册</button></a>
				</div>
			</div>
            <mt-button type="primary" size="large" class="btn">QQ一键登录</mt-button>    
    </div>
</template>
<script>
	import {Toast} from "mint-ui"
    export default {
        data(){
            return {
				unameval:"",
				upwdval:""
			}
        },
		methods:{
			btnSubmit(){
				var name=this.unameval;
				var upwd=this.upwdval;  
				//console.log(name,upwd)
				var url="http://127.0.0.1:5000/login"
				this.$http.get(url+"?uname="+name+"&upwd="+upwd).then(result=>{
					if(result.body.code==1){
						Toast(result.body.msg)
						this.$router.push("/")
					}else{
						Toast(result.body.msg)
					}
				})
			}
		}
    }
</script>
<style>
#btn{
	margin-left:130px;
	background:cadetblue;
	color:aqua;
}
.app-user .btn{
	margin-top:10px;
	color:#518fa2;
    background:#b7e2ef;
}
</style>