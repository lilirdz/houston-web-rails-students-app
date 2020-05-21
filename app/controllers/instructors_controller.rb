class InstructorsController < ApplicationController
    before_action :current_instructor, only: [:show,:edit,:update,:destroy]
    def index
        @instructors = Instructor.all
    end

    def show
        
    end

    def new
        @instructor = Instructor.new
        @students = Student.all
    end
    
    def create
        instructor = Instructor.new(instructor_params)
        if instructor.valid?
            instructor.save
            redirect_to instructor_path(instructor)
        else
            flash[:errors] = instructor.errors.full_messages
            redirect_to "/instructors/new"
        end
    end

    def edit
        @students = Student.all
    end

    def update
        @instructor.update(instructor_params)
        redirect_to instructor_path(@instructor)
    end
    
    
    def destroy
        @instructor.destroy
        redirect_to instructors_path
    end
    

    def current_instructor
        @instructor = Instructor.find(params[:id])
    end

    private

    def instructor_params
        params.require(:instructor).permit(:name,student_ids: [])
    end
end
