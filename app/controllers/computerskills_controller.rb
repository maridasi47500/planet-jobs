class ComputerskillsController < ApplicationController
  before_action :set_computerskill, only: %i[ show edit update destroy ]

  # GET /computerskills or /computerskills.json
  def index
    @computerskills = Computerskill.all
  end

  # GET /computerskills/1 or /computerskills/1.json
  def show
  end

  # GET /computerskills/new
  def new
    @computerskill = Computerskill.new(resume_id: params[:resume_id])
  end

  # GET /computerskills/1/edit
  def edit
  end

  # POST /computerskills or /computerskills.json
  def create
    @computerskill = Computerskill.new(computerskill_params)

    respond_to do |format|
      if @computerskill.save
        format.html { redirect_to @computerskill.resume, notice: "Computerskill was successfully created." }
        format.json { render :show, status: :created, location: @computerskill }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @computerskill.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /computerskills/1 or /computerskills/1.json
  def update
    respond_to do |format|
      if @computerskill.update(computerskill_params)
        format.html { redirect_to @computerskill.resume, notice: "Computerskill was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @computerskill }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @computerskill.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /computerskills/1 or /computerskills/1.json
  def destroy
    @computerskill.destroy!

    respond_to do |format|
      format.html { redirect_to computerskills_path, notice: "Computerskill was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_computerskill
      @computerskill = Computerskill.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def computerskill_params
      params.expect(computerskill: [ :name, :level, :details, :resume_id ])
    end
end
