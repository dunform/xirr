require 'spec_helper'

describe Investment do
  it "has a valid factory" do
    FactoryGirl.create(:investment).should be_valid
  end
  
  it "requires a name" do
    expect {
      FactoryGirl.create(:investment, name: '')  
    }.to raise_error(/Name can't be blank/)
  end
  
  it "has a unique name" do
    FactoryGirl.create(:investment, name: 'test')
    expect {
      FactoryGirl.create(:investment, name: 'test')  
    }.to raise_error(/Name has already been taken/)
  end
end
