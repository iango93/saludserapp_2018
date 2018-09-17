class Log2sController < ApplicationController
  before_action :set_log2, only: [:show, :edit, :update, :destroy]

  # GET /log2s
  # GET /log2s.json
  def index
    @log2s = Log2.all
  end

  # GET /log2s/1
  # GET /log2s/1.json
  def show
  end

  # GET /log2s/new
  def new
    @log2 = Log2.new
  end

  # GET /log2s/1/edit
  def edit
  end

  # POST /log2s
  # POST /log2s.json
  def create
    @log2 = Log2.new(log2_params)

    respond_to do |format|
      if @log2.save
        format.html { redirect_to @log2, notice: 'Log2 was successfully created.' }
        format.json { render :show, status: :created, location: @log2 }
      else
        format.html { render :new }
        format.json { render json: @log2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /log2s/1
  # PATCH/PUT /log2s/1.json
  def update
    respond_to do |format|
      if @log2.update(log2_params)
        format.html { redirect_to @log2, notice: 'Log2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @log2 }
      else
        format.html { render :edit }
        format.json { render json: @log2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /log2s/1
  # DELETE /log2s/1.json
  def destroy
    @log2.destroy
    respond_to do |format|
      format.html { redirect_to log2s_url, notice: 'Log2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_log2
      @log2 = Log2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def log2_params
      params.require(:log2).permit(:data, :data_trans, :user_hash)
    end
end
