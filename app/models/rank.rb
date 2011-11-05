class Rank < ActiveRecord::Base
	belongs_to :employee
	attr_accessible :name, :points
end
