require_relative 'spec_helper'

describe "JME", "A 3D Video Game Framework" do
  
  it "should have a version" do
    JME::VERSION.should be_a String
  end
  
  it "should load jmonkeyengine jar" do
    File.exists?(File.join(project_root, 'vendor', 'jMonkeyEngine3.jar')).should == true
    require(File.join(project_root, 'vendor', 'jMonkeyEngine3.jar')).should == true
  end
  
end