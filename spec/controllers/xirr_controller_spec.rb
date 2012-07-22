require 'spec_helper'

describe XirrController do

  describe "GET 'calculate'" do
    it "returns http success" do
      get 'calculate'
      response.should be_success
    end
  end

end
