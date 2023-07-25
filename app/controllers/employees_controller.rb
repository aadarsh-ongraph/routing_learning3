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
            @employee = Employee.new(employee_params)
            if @employee.save 
                redirect_to employees_path
            else           
                render :new
            end
        end
    def employee_params
        params.require(:employee).permit(:name, :department, :salary, :phone_number)
    end
end
