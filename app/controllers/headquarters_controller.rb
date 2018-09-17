class HeadquartersController < ApplicationController
  before_action :set_headquarter, only: [:show, :edit, :update, :destroy]

  # GET /headquarters
  # GET /headquarters.json
  def index
    @headquarters = Headquarter.all
  end

  # GET /headquarters/1
  # GET /headquarters/1.json
  def show
  end

  # GET /headquarters/new
  def new
    @headquarter = Headquarter.new
  end

  # GET /headquarters/1/edit
  def edit
  end

  # POST /headquarters
  # POST /headquarters.json
  def create
    @headquarter = Headquarter.new(headquarter_params)

    respond_to do |format|
      if @headquarter.save
        format.html { redirect_to @headquarter, notice: 'Headquarter was successfully created.' }
        format.json { render :show, status: :created, location: @headquarter }
      else
        format.html { render :new }
        format.json { render json: @headquarter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /headquarters/1
  # PATCH/PUT /headquarters/1.json
  def update
    respond_to do |format|
      if @headquarter.update(headquarter_params)
        format.html { redirect_to @headquarter, notice: 'Headquarter was successfully updated.' }
        format.json { render :show, status: :ok, location: @headquarter }
      else
        format.html { render :edit }
        format.json { render json: @headquarter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /headquarters/1
  # DELETE /headquarters/1.json
  def destroy
    @headquarter.destroy
    respond_to do |format|
      format.html { redirect_to headquarters_url, notice: 'Headquarter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_headquarter
      @headquarter = Headquarter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def headquarter_params
      params.require(:headquarter).permit(:name, :code, :company_id, :address_id, :email_id, :state_id)
    end
end
