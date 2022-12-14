class UsersCreator
  def initialize(users_params)
    @users_params = users_params
  end

  def call
    @users_params.each do |user_param|
      puts "Failed to create user with #{user_param}" unless create_user(user_param)
    end
  end

  private

  def create_user(user_param)
    user = User.new(user_param)

    return true if user.save

    false
  end
end
