require 'spec_helper'

describe "employees/new.html.erb" do
  before(:each) do
    assign(:employee, stub_model(Employee,
      :name => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new employee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => employees_path, :method => "post" do
      assert_select "input#employee_name", :name => "employee[name]"
      assert_select "input#employee_email", :name => "employee[email]"
    end
  end
end
