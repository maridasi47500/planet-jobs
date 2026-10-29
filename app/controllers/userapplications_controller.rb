class UserapplicationsController < ApplicationController
  before_action :set_userapplication, only: %i[ show edit update destroy ]

  # GET /userapplications or /userapplications.json
  def index
    @userapplications = Userapplication.all
  end

  # GET /userapplications/1 or /userapplications/1.json
  def show
  end

  # GET /userapplications/new
  def new
    @userapplication = Userapplication.new
  end

  # GET /userapplications/1/edit
  def edit
  end

  # POST /userapplications or /userapplications.json
  def create
    @userapplication = Userapplication.new(userapplication_params)

    respond_to do |format|
      if @userapplication.save
        format.html { redirect_to @userapplication, notice: "Userapplication was successfully created." }
        format.json { render :show, status: :created, location: @userapplication }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @userapplication.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /userapplications/1 or /userapplications/1.json
  def update
    respond_to do |format|
      if @userapplication.update(userapplication_params)
        format.html { redirect_to @userapplication, notice: "Userapplication was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @userapplication }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @userapplication.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /userapplications/1 or /userapplications/1.json
  def destroy
    @userapplication.destroy!

    respond_to do |format|
      format.html { redirect_to userapplications_path, notice: "Userapplication was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userapplication
      @userapplication = Userapplication.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def userapplication_params
      params.expect(userapplication: [ :user_id, :joboffer_id, :resume_id, :letter ])
    end
end
