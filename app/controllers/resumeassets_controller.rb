class ResumeassetsController < ApplicationController
  before_action :set_resumeasset, only: %i[ show edit update destroy ]

  # GET /resumeassets or /resumeassets.json
  def index
    @resumeassets = Resumeasset.all
  end

  # GET /resumeassets/1 or /resumeassets/1.json
  def show
  end

  # GET /resumeassets/new
  def new
    @resumeasset = Resumeasset.new(resume_id: params[:resume_id])
  end

  # GET /resumeassets/1/edit
  def edit
  end

  # POST /resumeassets or /resumeassets.json
  def create
    @resumeasset = Resumeasset.new(resumeasset_params)

    respond_to do |format|
      if @resumeasset.save
        format.html { redirect_to @resumeasset.resume, notice: "Resumeasset was successfully created." }
        format.json { render :show, status: :created, location: @resumeasset }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @resumeasset.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /resumeassets/1 or /resumeassets/1.json
  def update
    respond_to do |format|
      if @resumeasset.update(resumeasset_params)
        format.html { redirect_to @resumeasset.resume, notice: "Resumeasset was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @resumeasset }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @resumeasset.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /resumeassets/1 or /resumeassets/1.json
  def destroy
    @resumeasset.destroy!

    respond_to do |format|
      format.html { redirect_to resumeassets_path, notice: "Resumeasset was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resumeasset
      @resumeasset = Resumeasset.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def resumeasset_params
      params.expect(resumeasset: [ :resume_id, :name, :details, :level ])
    end
end
