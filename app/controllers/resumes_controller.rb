class ResumesController < ApplicationController
  before_action :set_resume, only: %i[ show edit update destroy ]

  # GET /resumes or /resumes.json
  def index
    @resumes = Resume.all
  end

  # GET /resumes/1 or /resumes/1.json
  def show
  end

  # GET /resumes/new
  def new
    @resume = Resume.new
  end

  # GET /resumes/1/edit
  def edit
  end

  # POST /resumes or /resumes.json
  def create
    @resume = Resume.new(resume_params)

    respond_to do |format|
      if @resume.save
        format.html { redirect_to @resume, notice: "Resume was successfully created." }
        format.json { render :show, status: :created, location: @resume }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @resume.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /resumes/1 or /resumes/1.json
  def update
    respond_to do |format|
      if @resume.update(resume_params)
        format.html { redirect_to @resume, notice: "Resume was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @resume }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @resume.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /resumes/1 or /resumes/1.json
  def destroy
    @resume.destroy!

    respond_to do |format|
      format.html { redirect_to resumes_path, notice: "Resume was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resume
      @resume = Resume.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def resume_params
      params.expect(resume: [ :user_id, :poste_convoite, :nom_complet, :ville, :permis, :projet_professionnel, :email, :phone ])
    end
end
