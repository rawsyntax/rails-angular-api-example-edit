require 'spec_helper'

describe Api::EmployeesController do
  before(:each) do
    @employee = create(:employee, name: 'Calhoun Tubbs', salary: 50000)
  end

  describe '#index' do
    it 'should return a json array of users' do
      get :index
      result = JSON.parse(response.body)

      expect(result[0]['name']).to eq('Calhoun Tubbs')
    end
  end

  describe "#update" do
    it 'should successfully respond to edits' do
      put :update, id: @employee.id, employee: {
            id: @employee.id,
            salary: 60000
          }

      expect(response).to be_success
    end

    it "should change the employee's salary" do
      @employee.update_attribute(:salary, 50000)

      put :update, id: @employee.id, employee: {
            id: @employee.id,
            salary: 60000
          }

      expect(@employee.reload.salary).to eq(60000)
    end
  end
end
