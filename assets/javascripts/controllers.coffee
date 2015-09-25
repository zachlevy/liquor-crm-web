# Controllers

angular.module("LiquorCrmWeb.controllers", [])

.controller("StoresCtrl", ["$scope", "appApi", ($scope, appApi)->
  console.log "StoresCtrl"

  # get stores
  appApi.get("stores").then((result) ->
    $scope.stores = result
    # console.log '$scope.stores'
    # console.log $scope.stores
  )
])

.controller("StoreCtrl", ["$scope", "$routeParams", "appApi", ($scope, $routeParams, appApi) ->
  console.log "StoreCtrl"

  # get store
  appApi.get("stores/#{$routeParams.storeId}").then((result) ->
    $scope.store = result
    # console.log '$scope.store'
    # console.log $scope.store
  )
])

.controller("ProductsCtrl", ["$scope", "appApi", ($scope, appApi)->
  console.log "ProductsCtrl"

  # get products
  appApi.get("products").then((result) ->
    $scope.products = result
    # console.log '$scope.products'
    # console.log $scope.products
  )
])

.controller("ProductCtrl", ["$scope", "$routeParams", "appApi", "dashboardFactory", "$filter", ($scope, $routeParams, appApi, dashboardFactory, $filter) ->
  console.log "ProductCtrl"

  # get product
  appApi.get("products/#{$routeParams.productId}").then((result) ->
    $scope.product = result
    # console.log '$scope.product'
    # console.log $scope.product
  )

  # get product inventories
  appApi.get("products/#{$routeParams.productId}/inventories").then((result) ->
    $scope.inventories = result
    # console.log '$scope.inventories'
    # console.log $scope.inventories

    # dashboard
    $scope.dashboard = {}
    $scope.dashboard.sales = dashboardFactory.sum($scope.inventories, "sales")
    $scope.dashboard.shipments = dashboardFactory.sum($scope.inventories, "shipment")
    $scope.dashboard.last_updated_on = $scope.inventories[0]["lcbo_updated_on"]
    $scope.dashboard.inventory = dashboardFactory.sum($scope.inventories, "quantity")
  )

  # get product stores
  appApi.get("products/#{$routeParams.productId}/stores").then((result) ->
    $scope.stores = result
    # console.log '$scope.stores'
    # console.log $scope.stores
  )
])
