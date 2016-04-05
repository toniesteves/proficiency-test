class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.all
    respond_with(@courses)
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
    respond_with(@course)
  end

  # GET /courses/new
  def new
    @course = Course.new
    respond_with(@course)
  end

  # GET /courses/1/edit
  def edit
    respond_with(@course)
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Student.new(course_params)
    @course.save 
    respond_with(@course, :location => @course)
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    @course.update(course_params)
    respond_with(@course, :location => @course)
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course.destroy
    respond_with(nil, :location => courses_path)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:student).permit(:name, :description, :status)
    end
end
