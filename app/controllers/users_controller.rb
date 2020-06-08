class UsersController < ApplicationController
    before_action :authenticate_user!, except: [ :index, :show]

    def create
      @user = User.create(params.require(:user))
      session[:user_id] = @user.id

      redirect_to current_user
    end
    
    def show
      @ideas = Idea.all.order(created_at: :desc)
    end

    def edit
     @user = User.find(params[:id]) 
    end

    def update
      current_user.update(params[:user])
      redirect_to current_user
    end

    private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :username, :country, :website, :phone, :gender, :bio, :email, :password)
    end
end
