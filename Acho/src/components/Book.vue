<template>
  <div>
    <table>
      <tr style rel="stylesheet" type="text/css" href=".assets/style.css">
          <td>序号</td>
          <td>姓名</td>
          <td>作者</td>
      <tr v-for="item in books">
        <td style = "color : red; font-size :34px">{{item.id}}</td>
        <td style="font-size : 34px; font-weight : bold" >{{item.name}}</td>
        <td style="font-size : 34px; font-weight : bold" >{{item.author}}</td>
      </tr>

    </table>
  </div>
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

