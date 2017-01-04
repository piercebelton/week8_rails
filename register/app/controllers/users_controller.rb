class UsersController < ApplicationController
  def index
    full_name = params[:full_name]
    address = params[:address]
    city = params[:city]
    state = params[:state]
    postal_code = params[:postal_code]
    country = params[:country]
    email_address = params[:email_address]
    user_id = params[:user_id]
    password = params[:password]
    @user = User.new(full_name, address, city, state, postal_code, country, email_address, user_id, password)
  end

  def confirmation
  end

  def home

  end

end
