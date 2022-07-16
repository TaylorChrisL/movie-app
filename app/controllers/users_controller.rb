class UsersController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]
  
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      admin: params[:admin],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end
end
