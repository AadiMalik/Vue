<template>
      <div class="container mt-3">
            <div class="row justify-content-center">
                  <div class="col-md-6">
                        <div class="card">
                              <div class="card-header">
                                    <h3>Login</h3>
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
                                          <button type="submit" class="btn btn-primary">Login</button>
                                    </form>
                              </div>
                        </div>
                  </div>
            </div>
      </div>
</template>

<script>
import { reactive } from 'vue'
export default {
      setup() {
            let form = reactive({
                  email:'',
                  password:''
            });
            const login = async()=>{
                  await axios.post('/api/auth/login',form).then(res=>{
                        console.log(res);
                  })
            }
            return{form,login};
      },
}
</script>