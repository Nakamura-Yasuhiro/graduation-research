<template>
  <v-app>
    <v-alert
      :value="true"
      type="success"
    >
      This is a success alert.
    </v-alert>
  </v-app>
</template>



<script>
export default {
  data: function () {
    return {
      message: "Hello Vue!"
    }
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
v-img{
  margin-left: 50rem;
}
</style>
