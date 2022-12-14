require 'net/http'
require File.join(Rails.root, 'app/services', 'users_service.rb')

class UsersJob
  include Sidekiq::Job

  def perform
    url = URI("http://microverse-api-app.herokuapp.com/users?limit=100")

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
    ActiveRecord::Base.connection.execute("SELECT setval('users_id_seq', COALESCE((SELECT MAX(id)+1 FROM users), 1), false)")
  end
end
