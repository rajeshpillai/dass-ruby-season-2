class Router 

  def initialize 
    @routes = {}
  end

  def match (options) 
    @routes.update(options)
  end

  def routes(&block)
    p self
    # yield
    #block.call   # because the context is the caller, which is the "main"

    instance_eval(&block)  # covert proc back to block
  end
end

p self

# def match (*args)
#   puts "in match -> main"
# end

Router.new.routes do 
  p "Inside routes block"
  p self
  match "/users" => "users#index"
  match "/login" => "sessins#new"
end



