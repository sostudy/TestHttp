require_relative './framework/http_class_macro_module.rb'
require_relative './method/http_method.rb'

class << self
  include HttpClassMacroModule
  include HttpMethodMoudle

  http_method :GET
  http_method :POST
  http_method :DELETE
  http_method :PUT

  def setup(&block)
    self.instance_eval {
        block.call
    }
  end

  def load_setup
    Dir.glob('./conf/setup*.rb').each do |file|
      load file
    end
  end

end