class SettledsController < ApplicationController
  before_action :set_settled, only: [:show, :edit, :update, :destroy]

  # GET /settleds
  # GET /settleds.json
  def index
    @settleds = Settled.all
  end

  # GET /settleds/1
  # GET /settleds/1.json
  def show
  end

  # GET /settleds/new
  def new
    @settled = Settled.new
  end

  # GET /settleds/1/edit
  def edit
  end

  # POST /settleds
  # POST /settleds.json
  def create
    @settled = Settled.new(settled_params)

    respond_to do |format|
      if @settled.save
        format.html { redirect_to @settled, notice: 'Settled was successfully created.' }
        format.json { render :show, status: :created, location: @settled }
      else
        format.html { render :new }
        format.json { render json: @settled.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /settleds/1
  # PATCH/PUT /settleds/1.json
  def update
    respond_to do |format|
      if @settled.update(settled_params)
        format.html { redirect_to @settled, notice: 'Settled was successfully updated.' }
        format.json { render :show, status: :ok, location: @settled }
      else
        format.html { render :edit }
        format.json { render json: @settled.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /settleds/1
  # DELETE /settleds/1.json
  def destroy
    @settled.destroy
    respond_to do |format|
      format.html { redirect_to settleds_url, notice: 'Settled was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_settled
      @settled = Settled.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def settled_params
      params.require(:settled).permit(:eps, :ccf, :afp, :arl, :customer_id, :company_id, :online_contribution, :online_contributioin_number, :ccm, :rut, :bank_certification, :headquarter_id, :identification_id, :personal_document)
    end
end
