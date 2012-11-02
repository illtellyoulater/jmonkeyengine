require_relative 'spec_helper'

describe "JME", "A 3D Video Game Framework" do
  
  it "should have a version" do
    JME::VERSION.should be_a String
  end
  
end