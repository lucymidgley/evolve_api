class GetuserController < ApplicationController
  def index
    # puts request.headers["ID"]
    # puts request.headers[:ID]

    # @user_id = BCrypt::Password.new(request.headers[:ID])
    # puts @user_id
    # @user = User.find(@user_id.to_i)
    @user = check_hash(request.headers[:ID])
    render json: @user
  end

  private
  def check_hash(arg)
    @users = User.all

    @users.each {|item|
      if (item.id == BCrypt::Password.new(arg))
        return item
      end
    }
    return nil
  end

end