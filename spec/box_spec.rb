require_relative 'spec_helper'
require 'jmonkeyengine/scene/shape/box'

describe "Box" do
  
  it "should instantiate with no arguments" do
    box = JME::Box.new
    box.should be_a JME::Box
  end
  
  it "should inherit from AbstractBox" do
    Box.ancestors.should include Java::ComJme3SceneShape::AbstractBox
  end
  
end