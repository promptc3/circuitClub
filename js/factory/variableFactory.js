angular
  .module("cktClub")
  .factory("variableFactory",function($http){
    function getVariables(){
      return $http.get("config.json");
    }

    return {
      getVariables : getVariables
    }
  });
