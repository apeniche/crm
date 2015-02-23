modalapp = angular.module('App', ['ngAnimate', 'ui.bootstrap'])

modalapp.controller('AppCtrl', ($modal) ->
		app = this

		app.open = ->
			modalInstance = $modal.open({
				templateUrl: '/partials/wizard.html',
				controller: 'ModalCtrl',
				controllerAs: 'modal'
				})
	)

#add the handler controller for the $modelValue
modalapp.controller('ModalCtrl', ($modalInstance)->
	modal = this
	
	)