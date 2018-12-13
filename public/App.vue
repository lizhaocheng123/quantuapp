<template>
 <div class="app-container">
    <mt-header fixed title="千图网" class="header"></mt-header>
    <router-view></router-view>
    <nav class="mui-bar mui-bar-tab">
			<router-link class="mui-tab-item mui-tab-item-a" href="#tabbar" to="/home">
				<span class="mui-icon mui-icon-home"></span>
				<span class="mui-tab-label">首页</span>
			</router-link>
			<router-link class="mui-tab-item mui-tab-item-a" href="#tabbar-with-chat" to="/news">
				<span class="mui-icon mui-icon-extra mui-icon-extra-order"></span>
				<span class="mui-tab-label">设计咨询</span>
			</router-link>
			<router-link class="mui-tab-item mui-tab-item-a" href="#tabbar-with-contact" to="/sucai">
				<span class="mui-icon mui-icon-extra mui-icon-extra-class"></span>
				<span class="mui-tab-label">素材分类</span>
			</router-link>
			<router-link class="mui-tab-item mui-tab-item-a" href="#tabbar-with-map" to="/user">
				<span class="mui-icon mui-icon-contact"></span>
				<span class="mui-tab-label">用户</span>
			</router-link>
		</nav>
 </div>
</template>

<style>
   .app-container{
     padding-top:40px;
     padding-bottom:50px;
     overflow-x:hidden;
   }
 .mui-bar-tab .mui-tab-item-tao.mui-active {
    color: #007aff;
 }
.mui-bar-tab .mui-tab-item-tao {
    display: table-cell;
    overflow: hidden;
    width: 1%;
    height: 50px;
    text-align: center;
    vertical-align: middle;
    white-space: nowrap;
    text-overflow: ellipsis;
    color: #929292;
}
.mui-bar-tab .mui-tab-item-tao .mui-icon {
    top: 3px;
    width: 24px;
    height: 24px;
    padding-top: 0;
    padding-bottom: 0;
}

.mui-bar-tab .mui-tab-item-tao .mui-icon~.mui-tab-label {
   font-size:11px;
   display:block;
   overflow:hidden;
   text-overflow:ellipsis;

}
.mui-bar-tab .mui-tab-item .mui-tab-label{
    color:#666;
    font-size:12px !important;
}
.mui-bar-tab .mui-tab-item-a:hover{
    color:#51964f;
}
.mt-header{
    line-height:30px;
    font-size:16px;
}
.app-container .header{
    background:lightskyblue;
    color:#3A5FCD
}
</style>
