module JME
  module Utilities
    ROOT_PATH = File.dirname(__FILE__)
    PROJECT_PATH = File.join(ROOT_PATH, '..', '..')
    
    # Require all of the ruby files in a specific directory
    def require_folder(folder_path)
      Dir["#{File.join(ROOT_PATH, folder_path)}/*.rb"].each {|file| require file }
    end
    
    # Not implemented. Idea is to give user of this gem a helper method to add their java classes to the global classpath
    def save_java_class_path(path)
      #$CLASSPATH << File.join(PROJECT_ROOT, "package", "classes", "java")
    end
    
  end
end