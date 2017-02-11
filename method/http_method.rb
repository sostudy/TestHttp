require 'net/http'
require 'uri'

module HttpMethodMoudle

  #--------------扩展Get请求---------------#
  def httpGet(options)
    params = options[:params]
    url = @baseUrl + params[:url]
    uri = URI.parse(url)
    req = Net::HTTP::Get.new(params[:url])
    Net::HTTP.start(uri.host) do |http|
      response = http.request(req)
      p response.body
    end
  end

 #---------------扩展Post请求---------------#
  def httpPost(options)
    params = options[:params]
    req = Net::HTTP::Post.new(uri)
    p params
  end

  #---------------扩展Put请求---------------#
  def httpPut(options)
    params = options[:params]
    p params
  end

  #------------扩展Delete请求---------------#
  def httpDelete(options)
    params = options[:params]
    p params
  end

end
