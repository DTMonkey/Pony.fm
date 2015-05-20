angular.module('ponyfm').directive 'pfmTrackPlayer', () ->
	restrict: 'E'
	templateUrl: '/templates/directives/track-player.html'
	scope:
		track: '=track',
		class: '@class'
	replace: true

	controller: [
		'$scope', 'player'
		($scope, player) ->
			$scope.play = () ->
				player.playTracks [$scope.track], 0
	]