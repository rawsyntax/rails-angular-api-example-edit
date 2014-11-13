angular.module('app.employeeApp').filter('empMaskNumber', ()->
  (value, nonMaskLength) ->
    if value?
      maskLength = value.length - nonMaskLength - 1
      if maskLength > 0
        v = value.split("")
        for i in [0..maskLength] by 1
          if v[i] != '-'
            v[i] = '*'
        v = v.join('')
      else
        value
    else
      value
)
