<template>
    <div class="app-news">
        <div><img src="../../img/12.jpg" class="img1"></div>
        <ul class="mui-table-view">
			<li class="mui-table-view-cell mui-media" v-for="item in list" :key="item.id">
				<router-link :to="'/newsinfo?id='+item.id">
					<img class="mui-media-object mui-pull-left" :src="item.img_url">
					<div class="mui-media-body">
						{{item.title}}
						<p class='mui-ellipsis'>
                            <span>{{item.ctime | datetimeFilter}}</span>
                        </p>
					</div>                   
				</router-link>
			</li>
		</ul>
        <mt-button type="primary" size="large" @click="getMore" class="btn">加载更多</mt-button>
    </div>
</template>
<script>
    export default {
        data(){
            return {
                list:[],
                pageIndex:0,      //属性显示当前页数
                pageSize:5,         //页大小
                hasMore:true,      //是否存在下一页数据
                pageCount:2,      //总页数
            }
        },
        methods:{
            //加载更多
            getMore(){
                this.pageIndex++
                //判断是否有下一页数据
                this.hasMore=this.pageIndex <= this.pageCount
                //如果没有下一页数据停止函数的执行
                if(!this.hasMore){return}
                var url="http://127.0.0.1:5000/news";
                url+="?pno="+this.pageIndex+"&pageSize="+this.pageSize
                this.$http.get(url).then(result=>{
                   // console.log(result)
                   //concat  拼接数组 将两个数组拼接新数组
                   var rows=this.list.concat(result.body.data)
                    this.list=rows
                    //保存总页数
                    this.pageCount=result.body.pageCount
                })
            }
        },
        created(){
            this.getMore()
        }
    }
</script>
<style>
    .img1{
        width:100%;
        margin-top:10px;
        margin-bottom:5px;
    }
    .app-news .btn{
        margin-top:15px;
        color:#518fa2;
        background:#b7e2ef;
    }
</style>