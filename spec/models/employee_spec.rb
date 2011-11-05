require 'spec_helper'

describe Employee do
describe "task associations" do

    before(:each) do
      @employee = Employee.create(@attr)
    end

    it "should have a tasks attribute" do
      @employee.should respond_to(:tasks)
    end
  end
  
end
