	import Vue from 'vue'
import App from './App.vue'
import router from './router'

import'mint-ui/lib/style.css'
Vue.config.productionTip = false
//5: 设置请求的根路径 
//Vue.http.options.root = "http://127.0.0.1/vue_ser/";
//6:全局设置post 时候表音的数据组织格式为 application/x-www-form-urlencoded
//Vue.http.options.emulateJSON = true;
// 导入 MUI 的样式表， 和 Bootstrap 用法没有差别
import './lib/mui/css/mui.css'
// 导入 MUI 的样式表，扩展图标样式，购物车图标
// 还需要加载图标字体文件
import './lib/mui/css/icons-extra.css'
//引入指定组件
import{Header,Swipe,SwipeItem,Button} from "mint-ui"
//注册当前项目中
Vue.component(Header.name,Header)
Vue.component(Swipe.name,Swipe)
Vue.component(SwipeItem.name,SwipeItem)
Vue.component(Button.name,Button)
//引入Vue-Resource
import VueResource from "vue-resource"
//注册
Vue.use(VueResource)
Vue.http.options.root="http://127.0.0.1:5000/"

Vue.filter("datetimeFilter",function(val){
  var date=new Date(val);
  var y=date.getFullYear();     //获取年份
  var m=date.getMonth()+1;      //获取月份
  var d=date.getDate();
  var h=date.getHours();
  var mi=date.getMinutes();
  var s=date.getSeconds();
  m<10&&(m="0"+m)              //如果月份小于10加前缀0
  d<10&&(d="0"+d) 
  h<10&&(h="0"+h)
  mi<10&&(mi="0"+mi)
  s<10&&(s="0"+s)
  return `${y}-${m}-${d} ${h}:${mi}:${s}`
})
new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
