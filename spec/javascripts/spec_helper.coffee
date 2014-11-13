#= require application
#= require angular-mocks
#= require sinon

beforeEach(module('app', 'app.employeeApp'))

beforeEach inject (_$httpBackend_, _$compile_, $rootScope, $controller, $location, $injector, $timeout, $filter) ->
  @scope = $rootScope.$new()
  @compile = _$compile_
  @location = $location
  @controller = $controller
  @injector = $injector
  @http = @injector.get('$httpBackend')
  @timeout = $timeout
  @model = (name) =>
    @injector.get(name)
  @filter = $filter
  @eventLoop =
    flush: =>
      @scope.$digest()
  @sandbox = sinon.sandbox.create()

afterEach ->
  @http.resetExpectations()
  @http.verifyNoOutstandingExpectation()
