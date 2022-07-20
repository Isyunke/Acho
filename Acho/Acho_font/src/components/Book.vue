<template>
    <section class="main">
    <div class="container">
      <div class="main-body no-bg">
        <div class="widget signin">
          <div class="widget-header">登录</div>
          <div class="widget-content">
            <template v-if="loginMethod.password">
              <div class="field">
                <label class="label">用户名/邮箱</label>
                <div class="control has-icons-left">
                  <input
                    v-model="username"
                    class="input is-success"
                    type="text"
                    placeholder="请输入用户名或邮箱"
                    @keyup.enter="submitLogin"
                  />
                  <span class="icon is-small is-left"
                    ><i class="iconfont icon-username"
                  /></span>
                </div>
              </div>

              <div class="field">
                <label class="label">密码</label>
                <div class="control has-icons-left">
                  <input
                    v-model="password"
                    class="input"
                    type="password"
                    placeholder="请输入密码"
                    @keyup.enter="submitLogin"
                  />
                  <span class="icon is-small is-left"
                    ><i class="iconfont icon-password"
                  /></span>
                </div>
              </div>

              <div class="field">
                <label class="label">验证码</label>
                <div class="control has-icons-left">
                  <div class="field is-horizontal">
                    <div class="field login-captcha-input">
                      <input
                        v-model="captchaCode"
                        class="input"
                        type="text"
                        placeholder="验证码"
                        @keyup.enter="submitLogin"
                      />
                      <span class="icon is-small is-left"
                        ><i class="iconfont icon-captcha"
                      /></span>
                    </div>
                    <div v-if="captchaUrl" class="field login-captcha-img">
                      <a @click="showCaptcha"><img :src="captchaUrl" /></a>
                    </div>
                  </div>
                </div>
              </div>

              <div class="field">
                <button class="button is-success" @click="submitLogin">
                  登录
                </button>
                <nuxt-link class="button is-text" to="/user/signup">
                  没有账号？点击这里去注册&gt;&gt;
                </nuxt-link>
              </div>
            </template>

            <div
              v-if="loginMethod.qq || loginMethod.github || loginMethod.osc"
              class="third-party-line"
            >
              <div class="third-party-title">
                <span>第三方账号登录</span>
              </div>
            </div>

            <div class="third-parties">
              <github-login v-if="loginMethod.github" :ref-url="ref" />
              <osc-login v-if="loginMethod.osc" :ref-url="ref" />
              <qq-login v-if="loginMethod.qq" :ref-url="ref" />
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
  export default {
    name: "Book",
    data(){
      return {
        msg:'hello vue',
        books:[
          {
            id: 1,
            name: '张三',
            author: '王五'
          },
          {
            id: 2,
            name: '张4',
            author: '王7'
          }
        ]
      }
    }
  }
</script>

<style scoped>
td{
  font-size: 34px;
}
</style>

