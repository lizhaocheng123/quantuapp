import Vue from 'vue'
import Router from 'vue-router'
import HelloContainer from "./components/HelloWorld.vue"
import home from "./components/home.vue"
import news from "./components/news/news.vue"
import newsinfo from "./components/news/newsinfo.vue"
import sucai from "./components/sucai.vue"
import user from "./components/user.vue"
import picture from "./components/picture.vue"
import notfound from "./components/notfound.vue"
import img from "./components/img.vue"
Vue.use(Router)

export default new Router({
  routes: [
    {path:'/',redirect:"/home"},
    {path:"/img",component:img},
    {path:"/home",component:home},
    {path:"/news",component:news},
    {path:"/newsinfo",component:newsinfo},
    {path:"/sucai",component:sucai},
    {path:"/user",component:user},
    {path:"/home/picture",component:picture},
    {path:"/*",component:notfound}
  ]
})
