class ConsecutivesController < ApplicationController
  before_action :set_consecutive, only: [:show, :edit, :update, :destroy]

  # GET /consecutives
  # GET /consecutives.json
  def index
    @consecutives = Consecutive.all
  end

  # GET /consecutives/1
  # GET /consecutives/1.json
  def show
  end

  # GET /consecutives/new
  def new
    @consecutive = Consecutive.new
  end

  # GET /consecutives/1/edit
  def edit
  end

  # POST /consecutives
  # POST /consecutives.json
  def create
    @consecutive = Consecutive.new(consecutive_params)

    respond_to do |format|
      if @consecutive.save
        format.html { redirect_to @consecutive, notice: 'Consecutive was successfully created.' }
        format.json { render :show, status: :created, location: @consecutive }
      else
        format.html { render :new }
        format.json { render json: @consecutive.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consecutives/1
  # PATCH/PUT /consecutives/1.json
  def update
    respond_to do |format|
      if @consecutive.update(consecutive_params)
        format.html { redirect_to @consecutive, notice: 'Consecutive was successfully updated.' }
        format.json { render :show, status: :ok, location: @consecutive }
      else
        format.html { render :edit }
        format.json { render json: @consecutive.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consecutives/1
  # DELETE /consecutives/1.json
  def destroy
    @consecutive.destroy
    respond_to do |format|
      format.html { redirect_to consecutives_url, notice: 'Consecutive was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consecutive
      @consecutive = Consecutive.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consecutive_params
      params.require(:consecutive).permit(:suffix, :folio_company, :company_id, :customer_id)
    end
end
