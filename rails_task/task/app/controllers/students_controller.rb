class StudentsController < ApplicationController
    before_action :set_student, only: [:show, :edit, :update, :destroy]
    before_action :paginate, only:[:index]

    def index
      @students = Student.limit(@DATAS_PER_PAGE).offset(@page * @DATAS_PER_PAGE)
      # @students = Student.all
      @student = Student.new
    end
  
    def show
    end
  
    def new
      @student = Student.new
    end
  
    def create
        @student = Student.new(student_params)
        respond_to do |format|
            if @student.save
                format.html { redirect_to @student, notice: 'Student was successfully created.' }
                format.json { render :show, status: :created, location: @student }
                # format.js
            else
                format.html { render :new }
                format.json { render json: @student.errors, status: :unprocessable_entity }
                # format.js
            end
        end
    end
  
    def edit
    end
  
    def update
        respond_to do |format|
            if @student.update(student_params)
              format.html { redirect_to @student, notice: 'Student was successfully updated.' }
              format.json { render :show, status: :ok, location: @student }
              # format.js
            else
              format.html { render :edit }
              format.json { render json: @student.errors, status: :unprocessable_entity }
              # format.js
            end
        end
    end
  
    def destroy
        @student.destroy
        respond_to do |format|
            format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
            format.json { head :no_content }
            # format.js
        end
    end
  
    # private
    
    def student_params
      params.require(:student).permit(:first_name, :last_name, :age, :phone, :email)
    end
  
    def set_student
      @student = Student.find(params[:id])
    end
  
end
