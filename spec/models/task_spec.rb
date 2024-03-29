require 'spec_helper'

describe Task do
	before(:each) do
		@employee = Factory(:employee)
		@attr = {
			          :description	=> "value for desc",
				  :startdate	=> 2011-11-05,
				  :enddate	=> 2011-11-05,
				  :points	=> 200
				  }
				  end
	it "should create a new instance given valid attributes" do
		@user.Tasks.create!(@attr)
		end
	describe "user associations" do
		before(:each) do
			@task = @employee.tasks.create(@attr)
			end
		it "should have a user attribute" do
			@task.should respond_to(:employee)
			end
		it "should have the right associated user" do
			@task.employee_id.should == @employee.id
			@task.employee.should == @task
			end
		end
	end

