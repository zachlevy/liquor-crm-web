# Services

# Demonstrate how to register services
# In this case it is a simple value service.
angular.module("LiquorCrmWeb.services", [])
.value("version", "0.1")
.value("baseUrl", "http://localhost:3001/")
.factory('appApi', ($http, $q, baseUrl) -> {
  post: (endpoint, data) ->
    console.log 'sending post from appApi'
    console.log baseUrl + endpoint
    console.log data
    # promise
    deferred = $q.defer()
    $http.post(baseUrl + endpoint, data).success((res, status) ->
      deferred.resolve res
      return
    ).error (res, status) ->
      # http error
      console.log 'http error'
      console.log status
      console.log res
      deferred.reject res
      return
    deferred.promise
  put: (endpoint, data) ->
    console.log 'sending put from appApi'
    console.log baseUrl + endpoint
    console.log data
    # promise
    deferred = $q.defer()
    $http.put(baseUrl + endpoint, data).success((res, status) ->
      deferred.resolve res
      return
    ).error (res, status) ->
      # http error
      console.log 'http error'
      console.log status
      console.log res
      deferred.reject res
      return
    deferred.promise
  get: (endpoint) ->
    # promise
    deferred = $q.defer()
    $http.get(baseUrl + endpoint).success((res, status) ->
      console.log status
      deferred.resolve res
      return
    ).error (res, status, msg) ->
      # http error
      console.log 'http error'
      deferred.reject msg
      return
    deferred.promise
})
.factory('dashboardFactory', ->
  sum: (items, property) ->
    return null unless items?
    total = 0
    total += item[property] for item in items
    return total
)
