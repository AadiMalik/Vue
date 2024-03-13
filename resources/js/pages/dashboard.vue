<template>
      <h1>Dashboard</h1>
      <button type="button" class="btn btn-danger" @click="logout">logout</button>
</template>
<script>
import router from '../router.js';
import { useStore } from 'vuex';
export default {
      setup() {
            const store = useStore();
            function logout(){
                  
                  store.dispatch('removeToken');
                  router.push('/')
            }
            return {logout,router}
      },
}
</script>