angular.module('app.employeeApp').controller("EmployeeListCtrl", [
  '$scope', 'EmployeeService', '$modal',
  ($scope, EmployeeService, $modal)->

    $scope.editEmployee = (employee) ->
      modalInstance = $modal.open({
        templateUrl: 'employee/edit.html',
        controller: 'EmployeeEditModalCtrl'
        size: 'lg'
        resolve:
          employee: ->
            employee
      })

      modalInstance.result.then(->
        console.log 'edit closed'
      )

    EmployeeService.list().then((employees) ->
      $scope.employees = employees
      console.dir employees
    )
])
