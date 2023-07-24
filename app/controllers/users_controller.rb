class UsersController < ApplicationController
    def index  
         @users = User.all

        #  by default line render "users/index"
        
    end 
end
