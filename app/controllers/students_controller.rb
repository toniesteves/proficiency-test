class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
    @students = Student.all
    respond_with(@students)
  end

  # GET /students/1
  # GET /students/1.json
  def show
    respond_with(@task)
  end

  # GET /students/new
  def new
    @student = Student.new
    respond_with(@student)
  end

  # GET /students/1/edit
  def edit
    respond_with(@task)
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)
    @student.save 
    respond_with(@student, :location => @student)
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    @student.update(student_params)
    respond_with(@student, :location => @student)
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_with(nil, :location => students_path)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:register_number, :name, :status)
    end
end
