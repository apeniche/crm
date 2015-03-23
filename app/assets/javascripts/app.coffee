modalapp = angular.module('App', ['ngAnimate', 'ui.bootstrap'])

modalapp.controller('AppCtrl', ($scope, $modal) ->
		app = this

		$scope.open = ->
			modalInstance = $modal.open({
				templateUrl: '/partials/wizard.html',
				controller: 'ModalCtrl',
				controllerAs: 'modal'
				})
	)

#add the handler controller for the $modelValue
modalapp.controller('ModalCtrl', ($scope, $modalInstance)->
	$scope.modal = this

	# stub of the number of questions
	# we want to retrieve the questions from the database
	# along with keeping a collection from index 0
	# to the last of the questions
	# we can then pass one at a time, along with the selected customer's id
	# for answers to be entered
	# or jump to a question directly by jumping to its index
	# the session must keep track of what index of question was last answered
	# and start off on the next question next time you click the button 
	# to answer questions

	#here is a stub of how the questions will be retrieved in JSON from the database
	#$scope.questions = [{"index": 1, "question": "What is your nationality?", "default_answer": "Not answered"}]
	$scope.questions = ["1. What is your national ID number?"]
	number_of_questions = 100
	$scope.modal.steps = [1..100]
	$scope.modal.step = 0

	$scope.steps = $scope.modal.steps
	# store questions and answers on modal.wizard
	# but persist to database on each click through to next question
	$scope.modal.wizard = {question: 1, answer: '' }

	# provide a way to retrive the question if it is the current question to be answered
	$scope.modal.isCurrentStep = (step) ->
		$scope.modal.step is step

	$scope.modal.setCurrentStep = (step) ->
		$scope.modal.step = step

	$scope.modal.getCurrentStep = ->
		$scope.modal.steps[$scope.modal.step]

	$scope.modal.getCurrentQuestion = ->
		return questions[$scope.modal.step]

	$scope.modal.canShow = (question)->
		difference = question - $scope.modal.step
		if difference > 2
			false
		else if difference < -2
			false
		else
			true

	$scope.modal.getNextLabel = ->
		"Next"
	)