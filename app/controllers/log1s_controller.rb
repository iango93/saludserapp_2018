class Log1sController < ApplicationController
  before_action :set_log1, only: [:show, :edit, :update, :destroy]

  # GET /log1s
  # GET /log1s.json
  def index
    @log1s = Log1.all
  end

  # GET /log1s/1
  # GET /log1s/1.json
  def show
  end

  # GET /log1s/new
  def new
    @log1 = Log1.new
  end

  # GET /log1s/1/edit
  def edit
  end

  # POST /log1s
  # POST /log1s.json
  def create
    @log1 = Log1.new(log1_params)

    respond_to do |format|
      if @log1.save
        format.html { redirect_to @log1, notice: 'Log1 was successfully created.' }
        format.json { render :show, status: :created, location: @log1 }
      else
        format.html { render :new }
        format.json { render json: @log1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /log1s/1
  # PATCH/PUT /log1s/1.json
  def update
    respond_to do |format|
      if @log1.update(log1_params)
        format.html { redirect_to @log1, notice: 'Log1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @log1 }
      else
        format.html { render :edit }
        format.json { render json: @log1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /log1s/1
  # DELETE /log1s/1.json
  def destroy
    @log1.destroy
    respond_to do |format|
      format.html { redirect_to log1s_url, notice: 'Log1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_log1
      @log1 = Log1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def log1_params
      params.require(:log1).permit(:data, :data_trans, :user_hash)
    end
end
