# Directives
angular.module("LiquorCrmWeb.directives", []).directive "appVersion", ["version", (version) ->
  (scope, elm, attrs) ->
    elm.text version
]
