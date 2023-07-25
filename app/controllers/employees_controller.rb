class EmployeesController < ApplicationController
    # debugger
    def index 
        # debugger 
        @employees = Employee.all
        #render 'employees/index' this line by default
    end 

    def new  
         @employee = Employee.new
    end 
    
    def create
        Employee.create(name:params[:name], department:params[:department], salary:params[:salary], phone_number:params[:phone_number])
        redirect_to '/employees'
    end

    def view 
        @employee = Employee.find(params[:id])
    end 

    def destroy
        @employee = Employee.find(params[:id])
        @employee.destroy

        redirect_to '/employees'
    end 
   
end
