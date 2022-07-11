import Vue from 'vue'
import Router from 'vue-router'
import Book from "../components/Book";
import TopMenu from "../components/TopMenu"
import WorkLine from "../components/WorkLine"
import ElementUI from 'element-ui';  //导入组件
import 'element-ui/lib/theme-chalk/index.css';  //导入样式
 
Vue.use(ElementUI); //全局引用

Vue.use(Router)

export default new Router({
  routes: [
    {
      path:'/book',
      component:Book
    },
    {
      path:'/index',
      component:TopMenu
    },
    {
      path : '/work',
      component : WorkLine
    }
  ]
})
