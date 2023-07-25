class UsersController < ApplicationController

    def index  
         @users = User.all

        #  by default line render "users/index"
        
    end 

    def new 
   
    end 

    def view
        @user= User.find(params[:id])
        
    end

    def create   
    #   debugger
      User.create(name:params[:user_name], email:params[:user_email], address:params[:user_address])
      redirect_to "/users"
    end 



    def edit  
        @user = User.find(params[:id])
    end 

    def update 
        #debugger
        @user = User.find(params[:id])
        @user.update(name:params[:user_name], email:params[:user_email], address:params[:user_address])

        redirect_to "/users"
    end

    def destroy 
        @user = User.find(params[:id])
        @user.destroy
        
        redirect_to "/users"
    end

end
