class Employee < ActiveRecord::Base
	attr_accessible :name, :email
	has_many :tasks
end
