class Task < ActiveRecord::Base
	attr_accessible :description, :startdate, :enddate, :points
	belongs_to :employee
	validates :description, :presence => true
	validates :startdate, :presence => true
	validates :enddate, :presence => true
	validates :points, :presence => true
	
       	validates :employee_id, :presence => true
	
end
