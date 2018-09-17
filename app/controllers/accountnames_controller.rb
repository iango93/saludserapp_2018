class AccountnamesController < ApplicationController
  before_action :set_accountname, only: [:show, :edit, :update, :destroy]

  # GET /accountnames
  # GET /accountnames.json
  def index
    @accountnames = Accountname.all
  end

  # GET /accountnames/1
  # GET /accountnames/1.json
  def show
  end

  # GET /accountnames/new
  def new
    @accountname = Accountname.new
  end

  # GET /accountnames/1/edit
  def edit
  end

  # POST /accountnames
  # POST /accountnames.json
  def create
    @accountname = Accountname.new(accountname_params)

    respond_to do |format|
      if @accountname.save
        format.html { redirect_to @accountname, notice: 'Accountname was successfully created.' }
        format.json { render :show, status: :created, location: @accountname }
      else
        format.html { render :new }
        format.json { render json: @accountname.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accountnames/1
  # PATCH/PUT /accountnames/1.json
  def update
    respond_to do |format|
      if @accountname.update(accountname_params)
        format.html { redirect_to @accountname, notice: 'Accountname was successfully updated.' }
        format.json { render :show, status: :ok, location: @accountname }
      else
        format.html { render :edit }
        format.json { render json: @accountname.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accountnames/1
  # DELETE /accountnames/1.json
  def destroy
    @accountname.destroy
    respond_to do |format|
      format.html { redirect_to accountnames_url, notice: 'Accountname was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accountname
      @accountname = Accountname.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accountname_params
      params.require(:accountname).permit(:type_account, :address_id, :identification_id, :email_id)
    end
end
