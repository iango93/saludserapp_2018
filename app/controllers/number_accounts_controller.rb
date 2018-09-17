class NumberAccountsController < ApplicationController
  before_action :set_number_account, only: [:show, :edit, :update, :destroy]

  # GET /number_accounts
  # GET /number_accounts.json
  def index
    @number_accounts = NumberAccount.all
  end

  # GET /number_accounts/1
  # GET /number_accounts/1.json
  def show
  end

  # GET /number_accounts/new
  def new
    @number_account = NumberAccount.new
  end

  # GET /number_accounts/1/edit
  def edit
  end

  # POST /number_accounts
  # POST /number_accounts.json
  def create
    @number_account = NumberAccount.new(number_account_params)

    respond_to do |format|
      if @number_account.save
        format.html { redirect_to @number_account, notice: 'Number account was successfully created.' }
        format.json { render :show, status: :created, location: @number_account }
      else
        format.html { render :new }
        format.json { render json: @number_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /number_accounts/1
  # PATCH/PUT /number_accounts/1.json
  def update
    respond_to do |format|
      if @number_account.update(number_account_params)
        format.html { redirect_to @number_account, notice: 'Number account was successfully updated.' }
        format.json { render :show, status: :ok, location: @number_account }
      else
        format.html { render :edit }
        format.json { render json: @number_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /number_accounts/1
  # DELETE /number_accounts/1.json
  def destroy
    @number_account.destroy
    respond_to do |format|
      format.html { redirect_to number_accounts_url, notice: 'Number account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_number_account
      @number_account = NumberAccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def number_account_params
      params.require(:number_account).permit(:bank, :type_account, :owner_account, :identification_id)
    end
end
