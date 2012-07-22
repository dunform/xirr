require 'spec_helper'

describe "investments/edit" do
  before(:each) do
    @investment = assign(:investment, stub_model(Investment,
      :name => "MyString",
      :description => "MyText",
      :irr => "9.99"
    ))
  end

  it "renders the edit investment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => investments_path(@investment), :method => "post" do
      assert_select "input#investment_name", :name => "investment[name]"
      assert_select "textarea#investment_description", :name => "investment[description]"
      assert_select "input#investment_irr", :name => "investment[irr]"
    end
  end
end
