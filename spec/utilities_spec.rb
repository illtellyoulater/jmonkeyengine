require_relative 'spec_helper'

describe "Utilities" do
  
  context "require_folder" do
    it "should require all ruby files in the folder passed as an argument" do
      folder_path = Dir.pwd << '/spec'
      Dir["#{File.join(folder_path)}/*.rb"].length.should > 0
    end
  end
  
end