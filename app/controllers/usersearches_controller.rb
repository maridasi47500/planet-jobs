class UsersearchesController < ApplicationController
  before_action :set_usersearch, only: %i[ show edit update destroy ]

  # GET /usersearches or /usersearches.json
  def index
    @usersearches = Usersearch.all
  end

  # GET /usersearches/1 or /usersearches/1.json
  def show
  end

  # GET /usersearches/new
  def new
    @usersearch = Usersearch.new
  end

  # GET /usersearches/1/edit
  def edit
  end

  # POST /usersearches or /usersearches.json
  def create
    @usersearch = Usersearch.new(usersearch_params)

    respond_to do |format|
      if @usersearch.save
        format.html { redirect_to @usersearch, notice: "Usersearch was successfully created." }
        format.json { render :show, status: :created, location: @usersearch }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @usersearch.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /usersearches/1 or /usersearches/1.json
  def update
    respond_to do |format|
      if @usersearch.update(usersearch_params)
        format.html { redirect_to @usersearch, notice: "Usersearch was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @usersearch }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @usersearch.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /usersearches/1 or /usersearches/1.json
  def destroy
    @usersearch.destroy!

    respond_to do |format|
      format.html { redirect_to usersearches_path, notice: "Usersearch was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usersearch
      @usersearch = Usersearch.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def usersearch_params
      params.expect(usersearch: [ :jobsearch_id, :user_id ])
    end
end
