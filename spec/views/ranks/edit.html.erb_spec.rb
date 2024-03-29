require 'spec_helper'

describe "ranks/edit.html.erb" do
  before(:each) do
    @rank = assign(:rank, stub_model(Rank,
      :name => "MyString",
      :points => 1
    ))
  end

  it "renders the edit rank form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ranks_path(@rank), :method => "post" do
      assert_select "input#rank_name", :name => "rank[name]"
      assert_select "input#rank_points", :name => "rank[points]"
    end
  end
end
