require 'spec_helper'

describe "investments/new" do
  before(:each) do
    assign(:investment, stub_model(Investment,
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new investment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => investments_path, :method => "post" do
      assert_select "input#investment_name", :name => "investment[name]"
      assert_select "textarea#investment_description", :name => "investment[description]"
    end
  end
end
