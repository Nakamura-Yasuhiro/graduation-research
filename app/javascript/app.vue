<template>
  <v-app>
    <v-alert
      :value="true"
      type="success"
    >
      This is a success alert.
    </v-alert>


<v-container class="mt-12">
  <v-row class="mt-6" justify="center">
    <v-date-picker color="green" locale="en"></v-date-picker>
  </v-row>
</v-container>

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
.v-application .mt-12 {
    margin-top: 70vh!important;
}
</style>
