# Filters
angular.module("LiquorCrmWeb.filters", [])
.filter("interpolate", ["version", (version) ->
  (text) ->
    String(text).replace /\%VERSION\%/g, version
])
