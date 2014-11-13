#= require spec_helper

describe 'Filters', ->
  describe 'EmpMaskNumber', ->
    beforeEach ->
      @maskFilter = @filter('empMaskNumber')

    it 'should mask the value with asterisks', ->
      @value = "123"
      @nonMaskLength = 0

      expect(@maskFilter(@value, @nonMaskLength)).toEqual "***"
