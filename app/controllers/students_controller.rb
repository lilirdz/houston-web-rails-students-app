class StudentsController < ApplicationController
    
    before_action :current_student, only: [:show,:update,:edit, :destroy]
    def index
        @students = Student.all
    end

    def show
        
    end

    def new
        @student = Student.new
        @instructors = Instructor.all
    end
    
    def create
        student = Student.new(student_params)
        if student.valid?
            student.save
            redirect_to student_path(student)
        else
            flash[:errors] = student.errors.full_messages
            redirect_to "/students/new"
        end
    end

    def edit
        @instructors = Instructor.all
    end

    def update
        @student.update(student_params)
        redirect_to student_path(@student)
    end
    
    
    def destroy
        @student.destroy
        redirect_to students_path
    end
    

    def current_student
        @student = Student.find(params[:id])
    end

    private

    def student_params
        params.require(:student).permit(:name,:major,:age, :instructor_id)
    end
    
end
