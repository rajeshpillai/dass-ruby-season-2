def custom_extend(module_name)
  p module_name
  module_name.singleton_methods().each do |method|
    p method

    define_singleton_method(method) do |*args, &block|
      module_name.singleton_method(method).call(*args, &block)
    end
  end

end


module Feature1
  def self.setup_feature1
    puts "setting up feature 1"
  end

  def self.load_feature1
    puts "loading feature 1"
  end

  def self.demo  
    puts "demo mode"
  end
  
  def abc 
    puts "abc"
  end


end

class App
  custom_extend Feature1
  include Feature1 
  extend Feature1
end

# all the above code is executed

app = App.new 
# app.setup_feature1
App.setup_feature1
App.load_feature1
App.demo

App.abc 
App.new.abc 







