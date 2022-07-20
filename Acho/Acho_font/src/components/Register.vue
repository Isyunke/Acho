<template>
  <div class = "container">
    <div class = "form-body">
<!--      <div class = "pageHeader">-->

<!--        &lt;!&ndash; Unnamed (组合) &ndash;&gt;-->
<!--        <div id="u5">-->

<!--          &lt;!&ndash; Unnamed (矩形) &ndash;&gt;-->
<!--          <div id="u6" class="ax_default label">-->
<!--            <div id="u6_div" class=""></div>-->
<!--            &lt;!&ndash; Unnamed () &ndash;&gt;-->
<!--            <div id="u7" class="text">-->
<!--              <p><span>Acho 开源社区</span></p>-->
<!--            </div>-->
<!--          </div>-->

<!--          &lt;!&ndash; Unnamed (矩形) &ndash;&gt;-->
<!--          <div id="u8" class="ax_default _文本">-->
<!--            <div id="u8_div" class=""></div>-->
<!--            &lt;!&ndash; Unnamed () &ndash;&gt;-->
<!--            <div id="u9" class="text">-->
<!--              <p><span>Open Soure Community</span></p>-->
<!--            </div>-->
<!--          </div>-->
<!--      </div>-->
<!--      </div>-->
    <el-form ref="form" :model="registerForm" class="login_in">
      <el-form-item>
        <el-input placeholder="请输入用户名" v-model="registerForm.username"></el-input>
      </el-form-item>
      <el-form-item>
        <el-input placeholder="请输入密码" v-model="registerForm.password" show-password></el-input>
      </el-form-item>
<!--      <el-form-item>-->
<!--        <el-input placeholder="请确认密码" v-model="registerForm.passwordConfirm" show-password></el-input>-->
<!--      </el-form-item>-->
      <el-row>

<!--        <el-button type="primary" @click="onSubmit" class="form-confirm">注册</el-button>-->


        <el-button type="primary" @click="toLogin" class="form-confirm">去登录</el-button>
        <el-button type="primary" @click="dialogFormVisible = true">注册</el-button>
      </el-row>

    </el-form>
      <el-dialog title="注册" :visible.sync="dialogFormVisible">
        <el-form :model="form">
<!--          <el-form-item label="登录方式" :label-width="formLabelWidth">-->
<!--            <el-select v-model="form.region" placeholder="请选择">-->
<!--              <el-option label="手机号" value="shanghai"></el-option>-->
<!--              <el-option label="邮箱" value="beijing"></el-option>-->
<!--            </el-select>-->
<!--          </el-form-item>-->
          <el-form-item label="昵称" :label-width="formLabelWidth">
            <el-input placeholder="取个名字吧" v-model="form.name" autocomplete="off"></el-input>
          </el-form-item>
          <el-form-item label="邮箱/手机号" :label-width="formLabelWidth">
            <el-input placeholder="请输入邮箱或手机号" v-model="form.account" autocomplete="off"></el-input>
          </el-form-item>
          <el-form-item label="密码" :label-width="formLabelWidth">
            <el-input placeholder="请输入密码" v-model="form.passwd" autocomplete="off"></el-input>
          </el-form-item>
          <el-form-item label="确认密码" :label-width="formLabelWidth">
            <el-input placeholder="请再次输入" v-model="form.con_pwd" autocomplete="off"></el-input>
          </el-form-item>
        </el-form>
        <div slot="footer" class="dialog-footer">
          <el-button @click="dialogFormVisible = false">取 消</el-button>
          <el-button type="primary" @click="dialogFormVisible = false">注册</el-button>
        </div>
      </el-dialog>
    </div>
  </div>
</template>

<script>
export default {
  name: "Register",
  data() {
    return {
      registerForm:{
        username:'',
        password:'',
        passwordConfirm:'',
      },
      dialogTableVisible: false,
      dialogFormVisible: false,
      form: {
        name: '',
        account: '',
        passwd: '',
        con_pwd: '',
        region: '',
        date1: '',
        date2: '',
        delivery: false,
        type: [],
        resource: '',
        desc: ''
      },
      formLabelWidth: '120px'
    }
  },
  methods: {
    onSubmit(){
      var _this = this
      if(this.registerForm.password !== this.registerForm.passwordConfirm){
        this.$message({
          message:'两次输入的密码不一致',
          type:'error'
        })
        return
      }
      this.axios.post("/register",{
        username:this.registerForm.username,
        password:this.registerForm.password
      })
        .then(function (response) {
          _this.$router.replace('/login')
        })
        .catch(function (error) {
          console.log(error)
        })
    },
    toLogin(){
      this.$router.replace('/login')
    }
  }
}</script>

<style scoped>

/*------------------------------*/
.container{
  height: 100%;
  width: 100%;
  /*background-image: url("../../static/bg.png");*/
  background-image: url("../assets/images/登录/u1.png");
  background-size: cover;
  position: fixed;
  left: 0px;
  top:0px;
}
.form-body{
  border-radius: 10px;
  margin: 200px auto;
  /*margin: 100px auto auto;*/
  width: 25%;
  min-width: 200px;
  padding: 30px 30px 15px 30px;
  background-color: rgba(255,255,255,0.8);
  box-shadow: 5px 3px 10px rgba(0,0,0,0.9);
}
.form-confirm{
  width: 50%;
  background-color: #585858;
  border: 2px solid #484848;
  border-radius: 4px;
}
</style>
