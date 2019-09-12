class UsersController < ApplicationController
  
      def new
          @user = User.new
      end
      
      def create
        @user = User.new(user_params)
        if @user.save
          session[:user_id] = @user.id
          redirect_to user_path(@user)
        else
          render :new
        end
      end
      
      def show
        @user = User.find_by(:id => params[:id])
        @pizza = Pizza.all
      end
    
      def best_users
        @users = User.joins(:pizzas).group(:id).order('COUNT(pizzas.id) DESC').limit(2)
      end

      private

      def user_params
        params.require(:user).permit(:name, :email, :password)
      end
  end
  
