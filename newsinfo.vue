<template>
    <div class="app-newsinfo">
        <div class="mui-card">
			<div class="mui-card-header">{{info.title}}</div>
			<div class="mui-card-content">
				<div class="mui-card-content-inner">
					<p>作者：{{info.author}}</p>
                    <p>时间：{{info.ctime}}</p>
					<p>{{info.content}}</p>
				</div>
			</div>
            <comment-box :id="this.id"></comment-box>
        </div> 
    </div>
</template>
<script>
    import comment from "../sub/comment.vue"
    export default {
        data(){
            return {
                info:{},
                id:this.$route.query.id
            }
        },
        methods:{
            getnewsinfo(){
                var url="http://127.0.0.1:5000/newsinfo"
                this.$http.get(url).then(result=>{
                    this.info=result.body
                })
            }
        },
        created(){
            this.getnewsinfo()
        },
         components:{
           "comment-box":comment
        }
    }
</script>
<style>
    
</style>