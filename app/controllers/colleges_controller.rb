class CollegesController < ApplicationController
  before_action :set_college, only: [:show, :edit, :update, :destroy]

  # GET /colleges
  # GET /colleges.json
  def index
    @colleges = College.all
  end

  # GET /colleges/1
  # GET /colleges/1.json
  def show
  end

  # GET /colleges/new
  def new
    @college = College.new
    if ["poetry_meet", "fusion_of_bands", "short_movie_making", "technical_projects_exhibition"].include? params[:event]
      @college.event = params[:event]
    else
      redirect_to root_path, alert: 'Please select an event.'
    end
  end

  # GET /colleges/1/edit
  def edit
  end

  # POST /colleges
  # POST /colleges.json
  def create
    @college = College.new(college_params)

    respond_to do |format|
      if @college.save
        format.html { redirect_to @college, notice: 'College was successfully created.' }
        format.json { render :show, status: :created, location: @college }
      else
        format.html { render :new }
        format.json { render json: @college.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /colleges/1
  # PATCH/PUT /colleges/1.json
  def update
    respond_to do |format|
      if @college.update(college_params)
        format.html { redirect_to @college, notice: 'College was successfully updated.' }
        format.json { render :show, status: :ok, location: @college }
      else
        format.html { render :edit }
        format.json { render json: @college.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /colleges/1
  # DELETE /colleges/1.json
  def destroy
    @college.destroy
    respond_to do |format|
      format.html { redirect_to colleges_url, notice: 'College was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_college
      @college = College.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def college_params
      params.require(:college).permit(:name, :group_name, :contact_no, :confirmed, :event)
    end
end
