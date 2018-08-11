class UsersController < ApplicationController
    
    def index
      @users = User.all
    end

    def show
      @user = User.find(params[:id])
      render json: @user
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        @user.save

    end

    private
        def user_params
            params.require(:user).permit(:name, :email, :password, :s_number, :gender)
        end
end
