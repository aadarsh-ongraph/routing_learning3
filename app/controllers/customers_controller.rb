class CustomersController < ApplicationController

    def index 
        @customers = Customer.all
    end 

    def new  

    end

    def create  
        Customer.create(name:params[:name], age:params[:age], address:params[:address])

        redirect_to '/customers'
    end 

    def view  
        @customer = Customer.find(params[:id])
    end 

    def destroy 
        @customer = Customer.find(params[:id])
        @customer.destroy 

        redirect_to '/customers'
    end 

    def edit 
        @customer = Customer.find(params[:id])
    end

    def update 
        @customer = Customer.find(params[:id])
        @customer.update(name:params[:name], age:params[:age], address:params[:address])

        redirect_to '/customers'
    end
end
