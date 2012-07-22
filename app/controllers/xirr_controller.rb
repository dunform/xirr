class XirrController < ApplicationController
  def calculate
    @time = Time.now
    @files = Dir.glob('*')
  end
end
