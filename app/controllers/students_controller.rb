
class StudentsController < ApplicationController
    def index
      @students = Student.all
    end
  
    def new
      @student = Student.new
    end
  
    def create
      @student = Student.new(student_params)
      if @student.save
        redirect_to students_path, notice: 'Student created successfully.'
      else
        render :new
      end
    end

    def edit
        @student = Student.find(params[:id])
      end
    
      def update
        @student = Student.find(params[:id])
        if @student.update(student_params)
          redirect_to students_path, notice: 'Student updated successfully.'
        else
          render :edit
        end
      end

      def destroy
        @student = Student.find(params[:id])
        @student.destroy(student_params)
        redirect_to students_path, notice: 'Student deleted successfully.'
      end
  
    private
  
    def student_params
      params.require(:student).permit(:roll_no, :name, :phone_number, :email, :address)
    end

end
  