<template>

      <div>
            <nav class="navbar navbar-expand-lg bg-light">
                  <div class="container-fluid">
                        <router-link class="navbar-brand" to="/">Website</router-link>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                              data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                              aria-expanded="false" aria-label="Toggle navigation">
                              <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                    <li class="nav-item">
                                          <router-link class="nav-link active" to="/">Home</router-link>

                                    </li>
                                    <li class="nav-item">
                                          <router-link class="nav-link" v-if="!$store.getters.getToken" to="/login">Login</router-link>
                                    </li>
                                    <li class="nav-item">
                                          <router-link class="nav-link" v-if="!$store.getters.getToken" to="/register">Register</router-link>
                                    </li>
                                    <li class="nav-item">
                                          <router-link class="nav-link" v-if="$store.getters.getToken" to="/dashboard">Dashbaord</router-link>
                                    </li>
                                    <!-- <li class="nav-item dropdown">
                                          <a class="nav-link dropdown-toggle" href="#" role="button"
                                                data-bs-toggle="dropdown" aria-expanded="false">
                                                Dropdown
                                          </a>
                                          <ul class="dropdown-menu">
                                                <li><a class="dropdown-item" href="#">Action</a></li>
                                                <li><a class="dropdown-item" href="#">Another action</a></li>
                                                <li>
                                                      <hr class="dropdown-divider">
                                                </li>
                                                <li><a class="dropdown-item" href="#">Something else here</a></li>
                                          </ul>
                                    </li>
                                    <li class="nav-item">
                                          <a class="nav-link disabled">Disabled</a>
                                    </li> -->
                              </ul>
                              <form class="d-flex" role="search">
                                    <input class="form-control me-2" type="search" placeholder="Search"
                                          aria-label="Search">
                                    <button class="btn btn-outline-success" type="submit">Search</button>
                              </form>
                        </div>
                  </div>
            </nav>
            <div>
                  <div class="container">
                        <div class="row">
                              <div class="col-md-12">
                                    <router-view></router-view>
                              </div>
                        </div>
                  </div>
            </div>
      </div>
</template>