# Controllers

angular.module("LiquorCrmWeb.controllers", [])
.controller("StoresCtrl", [->
  console.log "StoresCtrl"
])

.controller("StoreCtrl", ["$scope", "$routeParams", ($scope, $routeParams) ->
  console.log "StoreCtrl"
  $scope.store = {}
  $scope.store.id = $routeParams.storeId
])

.controller("ProductsCtrl", [->
  console.log "ProductsCtrl"
])

.controller("ProductCtrl", ["$scope", "$routeParams", ($scope, $routeParams) ->
  console.log "ProductCtrl"
  $scope.product = {}
  $scope.product.id = $routeParams.productId
])
