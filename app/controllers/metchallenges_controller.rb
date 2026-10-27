class MetchallengesController < ApplicationController
  before_action :set_metchallenge, only: %i[ show edit update destroy ]

  # GET /metchallenges or /metchallenges.json
  def index
    @metchallenges = Metchallenge.all
  end

  # GET /metchallenges/1 or /metchallenges/1.json
  def show
  end

  # GET /metchallenges/new
  def new
    @metchallenge = Metchallenge.new
  end

  # GET /metchallenges/1/edit
  def edit
  end

  # POST /metchallenges or /metchallenges.json
  def create
    @metchallenge = Metchallenge.new(metchallenge_params)

    respond_to do |format|
      if @metchallenge.save
        format.html { redirect_to @metchallenge, notice: "Metchallenge was successfully created." }
        format.json { render :show, status: :created, location: @metchallenge }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @metchallenge.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /metchallenges/1 or /metchallenges/1.json
  def update
    respond_to do |format|
      if @metchallenge.update(metchallenge_params)
        format.html { redirect_to @metchallenge, notice: "Metchallenge was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @metchallenge }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @metchallenge.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /metchallenges/1 or /metchallenges/1.json
  def destroy
    @metchallenge.destroy!

    respond_to do |format|
      format.html { redirect_to metchallenges_path, notice: "Metchallenge was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metchallenge
      @metchallenge = Metchallenge.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def metchallenge_params
      params.expect(metchallenge: [ :challenge_id, :user_id, :details, :pic ])
    end
end
