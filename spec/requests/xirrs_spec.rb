require 'spec_helper'

describe "XIRR Calculator" do
  describe "Calculate Page" do
    it "should contain 'XIRR Calculator'" do
      visit '/xirr/calculate'
      page.should have_selector('h1', :text => 'XIRR Calculator')
    end
    
    it "title should contain 'XIRR | Calculate'" do
      visit '/xirr/calculate'
      page.should have_selector('title', :text => "XIRR | Calculate")
    end
  end
end
