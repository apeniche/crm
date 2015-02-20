# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# collect app 
app = angular.module('collectApp', ['ngDialog'])

app.controller('MainCtrl', ($scope, ngDialog) ->
	$scope.clickToOpen = ->
        ngDialog.open({ 
            template: 'popupTmpl', 
            controller: ['$scope', ($scope) -> 
                $scope.prompts = "Haha, so you think I'm the real Quade?!"
            ]
        })
	)