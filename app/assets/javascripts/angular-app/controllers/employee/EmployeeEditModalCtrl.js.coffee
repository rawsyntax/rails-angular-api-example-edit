angular.module('app.employeeApp').controller('EmployeeEditModalCtrl', [
  '$scope', '$modalInstance', 'employee', ($scope, $modalInstance, employee)->
    $scope.employee = employee

    $scope.submitEmployee = (employee)->
      employee.put().then(
        $modalInstance.close('saved')
      )

    $scope.cancel = ->
      $modalInstance.dismiss('cancel')

])
