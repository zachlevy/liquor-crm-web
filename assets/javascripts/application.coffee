#= require vendor/angular/angular.min
#= require vendor/angular/angular-route.min
#= require_self
#= require_directory .

"use strict"

# Declare app level module which depends on filters, and services
angular.module("LiquorCrmWeb", ["LiquorCrmWeb.filters", "LiquorCrmWeb.services", "LiquorCrmWeb.directives", "LiquorCrmWeb.controllers", "ngRoute"]).config ["$routeProvider", ($routeProvider) ->

  $routeProvider.when "/stores",
    templateUrl: "partials/stores"
    controller: "StoresCtrl"

  $routeProvider.when "/stores/{store_id}",
    templateUrl: "partials/store"
    controller: "StoreCtrl"

  $routeProvider.when "/products",
    templateUrl: "partials/products"
    controller: "ProductsCtrl"

  $routeProvider.when "/products/{product_id}",
    templateUrl: "partials/product"
    controller: "ProductCtrl"

  $routeProvider.otherwise redirectTo: "/stores"
]
