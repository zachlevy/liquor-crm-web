# Controllers

angular.module("LiquorCrmWeb.controllers", [])

.controller("StoresCtrl", ["$scope", "appApi", ($scope, appApi)->
  console.log "StoresCtrl"

  # get stores
  appApi.get("stores").then((result) ->
    $scope.stores = result
    console.log '$scope.stores'
    console.log $scope.stores
  )
])

.controller("StoreCtrl", ["$scope", "$routeParams", "appApi", ($scope, $routeParams, appApi) ->
  console.log "StoreCtrl"

  # get store
  appApi.get("stores/#{$routeParams.storeId}").then((result) ->
    $scope.store = result
    console.log '$scope.store'
    console.log $scope.store
  )
])

.controller("ProductsCtrl", ["$scope", "appApi", ($scope, appApi)->
  console.log "ProductsCtrl"

  # get products
  appApi.get("products").then((result) ->
    $scope.products = result
    console.log '$scope.products'
    console.log $scope.products
  )
])

.controller("ProductCtrl", ["$scope", "$routeParams", "appApi", ($scope, $routeParams, appApi) ->
  console.log "ProductCtrl"

  # get product
  appApi.get("products/#{$routeParams.productId}").then((result) ->
    $scope.product = result
    console.log '$scope.product'
    console.log $scope.product
  )

  # get product inventories
  appApi.get("products/#{$routeParams.productId}/inventories").then((result) ->
    $scope.inventories = result
    console.log '$scope.inventories'
    console.log $scope.inventories
  )
])
