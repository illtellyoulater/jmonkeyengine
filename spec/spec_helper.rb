require 'rspec'

$:.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'jmonkeyengine'

RSpec.configure do |c|
  c.mock_with :rspec
  
  def capture(stream)
    begin
      stream = stream.to_s
      eval "$#{stream} = StringIO.new"
      yield
      result = eval "$#{stream}".string
    ensure
      eval "$#{stream} = #{stream.upcase}"
    end
    
    result
  end
  
  def project_root
    File.join(File.dirname(__FILE__), '..')
  end
end