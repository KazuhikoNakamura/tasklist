class SectionsController < ApplicationController
  before_action :set_section, only: [:show, :edit, :update, :destroy, :toggle_status]

  # GET /sections
  # GET /sections.json
  def index
    @sections = Section.all
  end

  # GET /sections/1
  # GET /sections/1.json
  def show
     @task = Task.find(@section.task_id)
  end

  # GET /sections/new
  def new
    @section = Section.new
    @tasks = Task.all
  end

  # GET /sections/1/edit
  def edit
    @tasks = Task.all
  end

  # POST /sections
  # POST /sections.json
  def create
    @section = Section.new(section_params)

    respond_to do |format|
      if @section.save
        format.html { redirect_to @section, notice: 'Section was successfully created.' }
        format.json { render action: 'show', status: :created, location: @section }
      else
        format.html { render action: 'new' }
        format.json { render json: @section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sections/1
  # PATCH/PUT /sections/1.json
  def update
    respond_to do |format|
      if @section.update(section_params)
        format.html { redirect_to @section, notice: 'Section was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sections/1
  # DELETE /sections/1.json
  def destroy
    task = @section.task
    @section.destroy
    respond_to do |format|
      format.html { redirect_to task }
      # format.html { redirect_to task_path(id: task) }
      format.json { head :no_content }
    end
  end

  def toggle_status
    task = @section.task
    if @section.status
      @section.status = false
    else
      @section.status = true
    end

    @section.save

    respond_to do |format|
      format.html { redirect_to task }
      # format.html { redirect_to task_path(id: task) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_section
      @section = Section.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def section_params
      params.require(:section).permit(:due_time, :contents, :task_id, :section_title, :status)
    end
end
