require 'net/http'
require File.join(Rails.root, 'app/services', 'users_service.rb')

class UsersJob
  include Sidekiq::Job

  def perform(**parameters)
    url = URI("http://microverse-api-app.herokuapp.com/users#{params(parameters)}")

    http = Net::HTTP.new(url.host, url.port)

    request = Net::HTTP::Get.new(url)
    request["Authorization"] = ENV['USERS_API_KEY']
    res = http.request(request)

    if res.kind_of? Net::HTTPSuccess
      users_params = JSON.parse(res.body)
    else
      users_params = []
    end
    UsersCreator.new(users_params).call
  end

  private
  def params(parameters)
    return '' if !parameters.include?(:offset) && !parameters.include?(:limit)

    if parameters.include?(:offset) ^ parameters.include?(:limit)
      return "?#{"offset=#{parameters[:offset]}" if parameters.include?(:offset)}#{"limit=#{parameters[:limit]}" if parameters.include?(:limit)}"
    end

    "?#{"offset=#{parameters[:offset]}" if parameters.include?(:offset)}&#{"limit=#{parameters[:limit]}" if parameters.include?(:limit)}"
  end
end
