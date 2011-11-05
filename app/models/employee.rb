class Employee < ActiveRecord::Base
	has_many :tasks
end
