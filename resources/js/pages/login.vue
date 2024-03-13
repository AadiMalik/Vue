<template>
      <div class="container mt-3">
            <div class="row justify-content-center">
                  <div class="col-md-6">
                        <div class="card">
                              <div class="card-header">
                                    <h3>Login</h3>

                                    <div v-if="error" class="alert alert-danger">{{ error }}</div>
                              </div>
                              <div class="card-body">
                                    <form @submit.prevent="login">
                                          <div class="form-group">
                                                <label for="email">Email address</label>
                                                <input type="email" class="form-control" id="email"
                                                      placeholder="Enter email" v-model="form.email">
                                          </div>
                                          <div class="form-group">
                                                <label for="password">Password</label>
                                                <input type="password" class="form-control" id="password"
                                                      placeholder="Password" v-model="form.password">
                                          </div>
                                          <button type="submit" class="btn btn-primary mt-2">Login</button>
                                    </form>
                              </div>
                        </div>
                  </div>
            </div>
      </div>
</template>

<script>
import { reactive,ref } from 'vue';
import router from '../router.js';
import { useStore } from 'vuex';
export default {
      setup() {
            const store = useStore();
            let form = reactive({
                  email:'',
                  password:''
            });
            let error = ref('');
            const login = async()=>{
                  await axios.post('/api/auth/login',form).then(res=>{
                        if (res.data.success){
                              // localStorage.setItem('token',res.data.data.token);
                              store.dispatch('setToken', res.data.data.token);
                              router.push('/dashboard')
                        }else{
                              error.value = res.data.message;
                        }
                  })
            }
            return{form,login, error};
      },
}
</script>