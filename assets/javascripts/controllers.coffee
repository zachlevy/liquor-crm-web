# Controllers

angular.module("LiquorCrmWeb.controllers", [])

.controller("StoresCtrl", ["$scope", "$routeParams", "appApi", ($scope, $routeParams, appApi)->
  console.log "StoresCtrl"
  appApi.get("stores").then((result) ->
    $scope.stores = result
    console.log '$scope.stores'
    console.log $scope.stores
  )
])

.controller("StoreCtrl", ["$scope", "$routeParams", "appApi", ($scope, $routeParams, appApi) ->
  console.log "StoreCtrl"
  appApi.get("stores/#{$routeParams.storeId}").then((result) ->
    $scope.store = result
    console.log '$scope.store'
    console.log $scope.store
  )
])

.controller("ProductsCtrl", [->
  console.log "ProductsCtrl"
])

.controller("ProductCtrl", ["$scope", "$routeParams", ($scope, $routeParams) ->
  console.log "ProductCtrl"
  $scope.product = {}
  $scope.product.id = $routeParams.productId
])
