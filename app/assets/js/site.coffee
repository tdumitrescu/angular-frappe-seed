#= require vendor/jquery.js
#= require vendor/bootstrap.js
#= require vendor/angular/angular.js
#= require_tree shared

#= require services.js
#= require controllers.js
#= require filters.js
#= require directives.js

angular.module('myApp', [
  'myApp.controllers',
  'myApp.filters',
  'myApp.services',
  'myApp.directives'
])
.config ($routeProvider, $locationProvider) ->
  $routeProvider

    .when '/view1',
      templateUrl: 'partials/partial1'
      controller: 'MyCtrl1'

    .when '/view2',
      templateUrl: 'partials/partial2'
      controller: 'MyCtrl2'

    .otherwise redirectTo: '/view1'

  $locationProvider.html5Mode true
