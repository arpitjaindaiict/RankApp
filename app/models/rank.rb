class Rank < ActiveRecord::Base
	belongs_to :employee
	attr_accessible :name, :points
	

	rank = 	Task.select("employee.name(@employee_id) as name sum(points) as points").group("employee_id")
	
end

