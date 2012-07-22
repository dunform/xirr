require 'spec_helper'

describe "investments/show" do
  before(:each) do
    @investment = assign(:investment, stub_model(Investment,
      :name => "Name",
      :description => "MyText",
      :irr => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/9.99/)
  end
end
