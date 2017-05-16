angular
  .module("ngCribs")
  .controller("cribsController",function($scope , cribsFactory){
    $scope.animals;
    cribsFactory.getCribs().then(function(response){
          $scope.animals = response.data;
        }, function(response){
        console.log(response);
        }
    );

  });
