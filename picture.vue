<template>
    <div class="app-picture">
        <div class="top">
            <img :src="list.img_url">
        </div>
        <div class="mui-card">
				<div class="mui-card-content">
					<div class="mui-card-content-inner">
						<p>
                        <span>{{list.title}}
                        </span>
                        <br>
                        <span>{{list.content}}
                        </span>
                        </p>
						<p style="color: #333;"></p>
					</div>
				</div>
			</div>
            <div class="mui-card">
				<div class="mui-card-header">详细参数</div>
				<div class="mui-card-content">
					<div class="mui-card-content-inner">
						<p class="p2">
                            <span>格式：psd</span>
                            <span class="sp4">尺寸：1920×5000像素</span>
                        </p>
                        <p class="p2">
                            <span>模式：RGB</span>
                            <span class="sp5">编号：324734</span>
                        </p>
                        <p class="p2">
                            <span>体积：16.036MB</span>
                            <span class="sp3">原创者：谜豆</span>
                        </p>
                        <p class="p2">
                            <span>上传时间：2018-11-11</span>
                            <span class="sp3"></span>
                        </p>
					</div>
				</div>
			</div>
             <div class="mui-card">
				<div class="mui-card-header">标签</div>
				<div class="mui-card-content">
					<div class="mui-card-content-inner biaoqiao">
                        <div class="p1">
                            <div>
                                <span>大促首页</span>
                                <span>京东双11</span>
                                <span>立体几何</span>
                            </div>
                            <div>
                                <span>迷彩渐变</span>
                                <span>首页模板</span>    
                                <span>双十一页面</span>
                            </div>
                            <div>
                                <span>双十二页面</span>
                                <span>活动促销</span>
                                <span>猫头</span>
                            </div>
                        </div>
					</div>
				</div>
			</div>
            <div class="footer">
                <div class="ft1">你可能在找这些</div>
            </div>
            <div class="z-item">
            <div class="item" v-for="item in imglist" :key="item.id">
                <div class="img">
                        <img :src="item.img_url" class="img1">
                </div>
                <div class="item1">
                    <p class="title">{{item.title}}</p>
                </div>
            </div>   
        </div>
    </div>
</template>
<script>
    export default {
        data(){
            return {
                imglist:[],
                list:{}
            }
        },
        methods:{
             getProduct(){
                var url="http://127.0.0.1:5000/home";
                this.$http.get(url).then(result=>{
                    this.imglist=result.body
                })
            },
            getpicture(){
                var url="http://127.0.0.1:5000/picture"
                this.$http.get(url).then(result=>{
                    this.list=result.body
                })
            }
        },
        created(){
            this.getProduct();
            this.getpicture();
        }
    }
</script>
<style>
    .top{
        width:100%;
        height:500px;
        overflow:hidden;
    }
    img{
        width:100%;
    }
    .biaoqian{
        display:flex;
        white-space:wrap;
    }
    .p1{
        color:rgb(155,155,155);
    }
    .p1 span{
        color:#666;
    }
    .ft1{
        color:rgb(155,155,155);
        font-size:17px;
        margin-left:20px;
    }
    .z-item{ 
        display:flex;
        justify-content:space-between;
        flex-wrap:wrap;  /*子元素换行*/
        padding:5px;
    }
    .item{
        width:49%;
        flex-direction:column;   /*垂直布局*/
        justify-content:space-between;   /*两端对齐*/
    }
    div.item div.img{
        width:176px;
        height:240px;
        overflow:hidden;
        flex-direction:column;   /*垂直布局*/
        justify-content:space-between;   /*两端对齐*/
    }
     div.item div.img .img1{
       width:100%
    }
    .item .title{
        font-size:.9rem;
    }
    .p1 span{
        margin-right:50px;
        font-size:14px;
    }
    .p1 span:hover{
        color:lightseagreen;
    }
    .p2{
        font-size:16px;
        color:#606060;
    }
    .p2 .sp3{
        margin-left:50px;
    }
    .p2 .sp4{
        margin-left:90px;
    }
    .p2 .sp5{
        margin-left:84px;
    }
    .ft1{
        font-size:15px;
        padding:3px;
        color:#666;
    }
</style>