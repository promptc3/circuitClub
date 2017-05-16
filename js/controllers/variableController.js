angular
  .module("cktClub")
  .controller("variableController",function($scope,variableFactory){
    $scope.variables;
    variableFactory.getVariables().then(
      function(response) {
        $scope.variables = response.data;
      },
      function(response) {
        console.log(response);
      }
    );
  });
