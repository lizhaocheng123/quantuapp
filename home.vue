<template>
    <div class="app-home">
        <div class="swipe">
            <mt-swipe :auto="4000">
            <mt-swipe-item v-for="item in list" :key="item.id">
                <img :src="item.img_url">
            </mt-swipe-item>
        </mt-swipe>
        </div>
        <mt-button type="primary"  class="mtbt mt1">平面广告</mt-button>
        <mt-button type="primary"  class="mtbt mt2">电商淘宝</mt-button>
        <mt-button type="primary"  class="mtbt mt3">网页uid</mt-button>
        <mt-button type="primary"  class="mtbt mt4">装饰装修</mt-button>
        <mt-button type="primary"  class="mtbt mt5">视频音效</mt-button>
        <mt-button type="primary"  class="mtbt mt6">产品工业</mt-button>
        <mt-button type="primary"  class="mtbt mt7">ppt模板</mt-button>
        <mt-button type="primary"  class="mtbt mt8">高清图库</mt-button>
        <div class="z-item">
            <div class="item" v-for="item in imglist" :key="item.id">
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
        <mt-button type="primary" size="large" class="mtbt1" @click="getProduct">加载更多</mt-button>
        <div class="footer">Copyright @ 2015千图网 沪ICP备10011451号-6</div>
    </div>
</template>
<script>
    export default {
        data(){
            return {
                list:[],
                imglist:[],
                pageIndex:0,
                pageSize:7,
                hasMore:true,
                pageCount:2
            }
        },
        methods:{
            getImage(){
                var url="http://127.0.0.1:5000/image";
                this.$http.get(url).then(result=>{
                    this.list=result.body
                })
            },
            /*getProduct(){
                var url="http://127.0.0.1:5000/photo";
                this.$http.get(url).then(result=>{
                    this.imglist=result.body
                })
            } */
            getProduct(){
                this.pageIndex++
                this.hasMore=this.pageIndex<=this.pageCount
                if(!this.hasMore){return}
                var url="http://127.0.0.1:5000/photo";
                url+="?pno="+this.pageIndex+"&pageSize="+this.pageSize
                this.$http.get(url).then(result=>{
                    var rows=this.imglist.concat(result.body.data)
                    this.imglist=rows;
                    this.pageCount=result.body.pageCount
                })
            },
        },
        created(){
            this.getImage();
            this.getProduct();
        }
    }
</script>
<style scoped>
    .app-home{
        background-color:#f1f1f1;
    }
    .swipe{
        width:100%;
    }
    .mint-swipe{
        padding:10px 0;
        height:105px;
    }
    .mint-swipe img{
        width:100%
    }
    .mtbt{
        font-size:14px;
        margin:7px;
        line-height: 1.37rem;
        border-radius: 4px;
    }
    .mt1{
        background: #eadfbf;
        color: #a8810d;
    }
    .mt2{
        background: #eed9bb;
        color: #8f724d;
    }
    .mt3{
        background: #eddbcc;
        color: #ad6834;
    }
    .mt4{
        background: #e7c0c0;
        color: #924545;
    }
    .mt5{
        background: #b7e2ef;
        color: #518fa2;
    }
    .mt6{
        background: #d6e7c0;
        color: #7d9b56;
    }
    .mt7{
        background: #c1e7c0;
        color: #51964f;
    }
    .mt8{
        background: #b8d2fb;
        color: #4f6b97;
    }
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
    .mtbt1{
        margin:5px;
        color:#518fa2;
        background:#b7e2ef;
    }
    .footer{
        color:#b8b8b8;
        font-size:12px;
        margin-left:30px;
        margin-top:10px;
        margin-bottom:10px;
    }
</style>