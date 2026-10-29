class JoboffersController < ApplicationController
  before_action :set_joboffer, only: %i[ show edit update destroy ]

  # GET /joboffers or /joboffers.json
  def index
    @joboffers = Joboffer.all
  end

  # GET /joboffers/1 or /joboffers/1.json
  def show
    @userapplication=Userapplication.new(user_id: 1, joboffer: @joboffer, resume: Resume.first)
  end

  # GET /joboffers/new
  def new
    @joboffer = Joboffer.new(company: Company.new)

  end

  # GET /joboffers/1/edit
  def edit
  end

  # POST /joboffers or /joboffers.json
  def create
    @joboffer = Joboffer.new(joboffer_params)

    respond_to do |format|
      if @joboffer.save
        format.html { redirect_to @joboffer, notice: "Joboffer was successfully created." }
        format.json { render :show, status: :created, location: @joboffer }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @joboffer.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /joboffers/1 or /joboffers/1.json
  def update
    respond_to do |format|
      if @joboffer.update(joboffer_params)
        format.html { redirect_to @joboffer, notice: "Joboffer was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @joboffer }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @joboffer.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /joboffers/1 or /joboffers/1.json
  def destroy
    @joboffer.destroy!

    respond_to do |format|
      format.html { redirect_to joboffers_path, notice: "Joboffer was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_joboffer
      @joboffer = Joboffer.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def joboffer_params
      params.expect(joboffer: [ :title, :content, :company_id, :place_name, :company_attributes=> {} ])
    end
end
