# Services

# Demonstrate how to register services
# In this case it is a simple value service.
angular.module("LiquorCrmWeb.services", [])
.value("version", "0.1")
.value("baseUrl", "http://localhost:3001/")
.factory 'appApi', ($http, $q, baseUrl) ->
  # data is an object like {'foo':'bar'}
  # endpoint is a string
  {
    post: (endpoint, data) ->
      console.log 'sending post from appApi'
      console.log baseUrl + endpoint
      console.log data
      # promise
      deferred = $q.defer()
      $http.post(baseUrl + endpoint, data).success((res, status) ->
        if res.success == true
          # success
          console.log baseUrl + endpoint
          if res.hasOwnProperty('result')
            deferred.resolve res.result
          else
            deferred.resolve true
        else if res.success == false
          # bad params
          console.log 'http bad server request'
          console.log res.result
          deferred.resolve res.result
        else
          # server error
          console.log 'http server error'
          console.log res.result
          deferred.resolve res.result
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
      console.log 'sending post from appApi'
      console.log baseUrl + endpoint
      console.log data
      # promise
      deferred = $q.defer()
      $http.put(baseUrl + endpoint, data).success((res, status) ->
        if res.success == true
          # success
          console.log baseUrl + endpoint
          if res.hasOwnProperty('result')
            deferred.resolve res.result
          else
            deferred.resolve true
        else if res.success == false
          # bad params
          console.log 'http bad server request'
          console.log res.result
          deferred.resolve res.result
        else
          # server error
          console.log 'http server error'
          console.log res.result
          deferred.resolve res.result
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
        if res.success == true
          # success
          console.log baseUrl + endpoint
          deferred.resolve res.result
        else if res.success == false
          # bad params
          console.log 'http bad server request'
          console.log res.result
          deferred.resolve res.result
        else
          # server error
          console.log 'http server error'
          console.log res.result
          deferred.resolve res
        return
      ).error (res, status, msg) ->
        # http error
        console.log 'http error'
        deferred.reject msg
        return
      deferred.promise

  }
