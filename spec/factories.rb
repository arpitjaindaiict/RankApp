Factory.define :employee do |employee|
  employee.name                  "Michael Hartl"
  employee.email                 "mhartl@example.com"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end

Factory.define :task do |task|
	task.description "Foo bar"
	task.startdate "2011-11-05"
	task.enddate "2011-11-05"
	task.points 200
	task.association :employee
end

