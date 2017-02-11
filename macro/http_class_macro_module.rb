module HttpClassMacroModule
  def self.included(base)
    base.extend HttpClassMacro
  end


  module HttpClassMacro
    def http_method(name)
      define_method(name)do |*args|
        @testCase={}
        @testCase[:params] = args [0]
        @testCase[:request] = name.to_s

        op = name.to_s.downcase
        case op
          when "get" then
            httpGet(@testCase)
          when "post"
            httpPost(@testCase)
          when "put"
            httpPut(@testCase)
          when "delete"
            httpDelete(@testCase)
          else
            print "undefined http method:#{op}"
        end
      end
    end
  end
end