<template>
    <div class="app-sucai">
        <div class="mui-content">
		        <ul class="mui-table-view mui-grid-view mui-grid-9">
		            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><router-link to="/home">
		                    <span class="mui-icon mui-icon-extra mui-icon-extra-lamp"></span>
		                    <div class="mui-media-body">平面广告</div></router-link></li>
		            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
		                    <span class="mui-icon mui-icon-extra mui-icon-extra-computer"></span>
		                    <div class="mui-media-body">高清壁纸</div></a></li>
		            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
		                    <span class="mui-icon mui-icon-extra mui-icon-extra-order"></span>
		                    <div class="mui-media-body">简历模板</div></a></li>
		            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
		                    <span class="mui-icon mui-icon-extra mui-icon-extra-holiday"></span>
		                    <div class="mui-media-body">网页UI</div></a></li>
		            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
		                    <span class="mui-icon mui-icon-extra mui-icon-extra-grech"></span>
		                    <div class="mui-media-body">游戏高清图</div></a></li>
		            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
		                    <span class="mui-icon mui-icon-extra mui-icon-extra-topic"></span>
		                    <div class="mui-media-body">PPT模板</div></a></li>
		            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><router-link to="/img" href="#">
		                    <span class="mui-icon mui-icon-image"></span>
		                    <div class="mui-media-body">高清图库</div></router-link></li>
		           <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
		                    <span class="mui-icon mui-icon-image"></span>
		                    <div class="mui-media-body">背景</div></a></li>
                    	   <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
		                    <span class="mui-icon mui-icon-paperclip"></span>
		                    <div class="mui-media-body">设计元素</div></a></li>
                            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
		                    <span class="mui-icon mui-icon-extra mui-icon-extra-order"></span>
		                    <div class="mui-media-body">文库模板</div></a></li>
		           <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
		                    <span class="mui-icon mui-icon-extra mui-icon-extra-order"></span>
		                    <div class="mui-media-body">Word模板</div></a></li>
                    	   <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
		                    <span class="mui-icon mui-icon-extra mui-icon-extra-order"></span>
		                    <div class="mui-media-body">EXCEL模板</div></a></li>
		        </ul> 
		</div>
    </div>
</template>
<script>
    export default {
        data(){
            return {

            }
        }
    }
</script>
<style>
  /*调整六宫格  */
  .app-sucai .mui-grid-view.mui-grid-9{
    background:#fff;
    border:0;
  }
  .app-sucai .mui-grid-view.mui-grid-9 img{
    width:60px;
    height:60px;
  }
  .app-sucai .mui-table-view.mui-grid-view .mui-table-view-cell .mui-media-body{
    font-size:13px;
  }
  .app-sucai .mui-content ul li a .mui-media-body{
	color:#518fa2 !important;
  }
</style>