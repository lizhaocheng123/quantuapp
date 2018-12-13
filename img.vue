<template>
    <div class="app-img">
        <div class="z-item">
            <div class="item" v-for="item in list" :key="item.id">
                <div class="img">
                    <router-link to="/home/picture">
                        <img :src="item.img_url" class="img1">
                    </router-link>
                </div>
                <div class="item1">
                    <p class="title">{{item.title}}</p>
                </div>
            </div>   
        </div>
        <mt-button type="primary" size="large" class="btn" @click="getImage">加载更多</mt-button>
    </div>
</template>
<script>
    export default {
        data(){
            return {
                list:[],
                pageIndex:0,
                pageSize:11,
                hasMore:true,
                pageCount:2
            }
        },
        methods:{
            getImage(){
                this.pageIndex++
                this.hasMore=this.pageIndex<=this.pageCount
                if(!this.hasMore){return}
                var url="http://127.0.0.1:5000/gaoqing"
                url+="?pno="+this.pageIndex+"&pageSize="+this.pageSize
                this.$http.get(url).then(result=>{
                    var rows=this.list.concat(result.body.data)
                    this.list=rows;
                    this.pageCount=result.body.pageCount    
                })
            }
        },
        created(){
            this.getImage()
        }
    }
</script>
<style scoped>
    .z-item{ 
        display:flex;
        justify-content:space-between;
        flex-wrap:wrap;  /*子元素换行*/
        padding:5px;
        cursor:pointer;
    }
    .item{
        width:49%;
        flex-direction:column;   /*垂直布局*/
        justify-content:space-between;   /*两端对齐*/
        background-color:aliceblue;
    }
    div.item div.img{
        width:176px;
        height:240px;
        overflow:hidden;
        flex-direction:column;   /*垂直布局*/
        justify-content:space-between;   /*两端对齐*/
    }
    div.item div.img .img1{
       width:100%;
    }
    .item .title{
        font-size:.9rem;
        font-family: "Microsoft YaHei",Arial,Helvetica,sans-serif;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
    }
    .item .title:hover{
        color:#13d564;
        text-overflow: clip;
    }
    .btn{
        color:#518fa2;
        background:#b7e2ef;
    }
</style>
