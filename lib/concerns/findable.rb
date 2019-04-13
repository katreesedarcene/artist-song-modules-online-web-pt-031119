# require_relative '../lib/concerns/findable'
module Findable
  module ClassMethods
    
  
  
  def find_by_name(name)
    self.all.detect{|a| a.name == name}
  end
    
  end
  
end