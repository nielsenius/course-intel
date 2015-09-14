class CollegeClassesController < ApplicationController
  before_action :set_college_class, only: [:show, :edit, :update, :destroy]

  # GET /college_classes
  # GET /college_classes.json
  def index
    @college_classes = CollegeClass.all
  end

  # GET /college_classes/1
  # GET /college_classes/1.json
  def show
  end

  # GET /college_classes/new
  def new
    @college_class = CollegeClass.new
  end

  # GET /college_classes/1/edit
  def edit
  end

  # POST /college_classes
  # POST /college_classes.json
  def create
    @college_class = CollegeClass.new(college_class_params)

    respond_to do |format|
      if @college_class.save
        format.html { redirect_to @college_class, notice: 'College class was successfully created.' }
        format.json { render :show, status: :created, location: @college_class }
      else
        format.html { render :new }
        format.json { render json: @college_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /college_classes/1
  # PATCH/PUT /college_classes/1.json
  def update
    respond_to do |format|
      if @college_class.update(college_class_params)
        format.html { redirect_to @college_class, notice: 'College class was successfully updated.' }
        format.json { render :show, status: :ok, location: @college_class }
      else
        format.html { render :edit }
        format.json { render json: @college_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /college_classes/1
  # DELETE /college_classes/1.json
  def destroy
    @college_class.destroy
    respond_to do |format|
      format.html { redirect_to college_classes_url, notice: 'College class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_college_class
      @college_class = CollegeClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def college_class_params
      params.require(:college_class).permit(:name, :department, :course_number, :units)
    end
end
