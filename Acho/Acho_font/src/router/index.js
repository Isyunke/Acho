import Vue from 'vue'
import Router from 'vue-router'
import Book from "../components/Book";
import TopMenu from "../components/TopMenu"
import WorkLine from "../components/WorkLine"
import ElementUI from 'element-ui';  //导入组件
import 'element-ui/lib/theme-chalk/index.css';//导入样式
import Register from "../components/Register";
import Login_in from "../components/Login_in";
import Success from "../components/Success";
import Error from "../components/Error"
import Login from "../components/Login";

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
    },
    {
      path : "/register",
      component:Register
    },
    {
      path: "/login_in",
      component: Login_in
    },
    {
      path : "/success",
      name : "success",
      component: Success
    },
    {
      path: "/error",
      name : "error",
      component: Error,
      hidden:true
    },
    {
      path: "/login",
      component:Login
    }

  ]
})
