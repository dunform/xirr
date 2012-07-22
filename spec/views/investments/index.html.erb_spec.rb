require 'spec_helper'

describe "investments/index" do
  before(:each) do
    assign(:investments, [
      stub_model(Investment,
        :name => "Name",
        :description => "MyText",
        :irr => "9.99"
      ),
      stub_model(Investment,
        :name => "Name",
        :description => "MyText",
        :irr => "9.99"
      )
    ])
  end

  it "renders a list of investments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
