class MonitorResultsController < ApplicationController
  before_action :set_monitor_result, only: [:show, :edit, :update, :destroy]

  # GET /monitor_results
  # GET /monitor_results.json
  def index
    @monitor_results = MonitorResult.all
  end

  # GET /monitor_results/1
  # GET /monitor_results/1.json
  def show
  end

  # GET /monitor_results/new
  def new
    @monitor_result = MonitorResult.new
  end

  # GET /monitor_results/1/edit
  def edit
  end

  # POST /monitor_results
  # POST /monitor_results.json
  def create
    @monitor_result = MonitorResult.new(monitor_result_params)

    respond_to do |format|
      if @monitor_result.save
        format.html { redirect_to @monitor_result, notice: 'Monitor result was successfully created.' }
        format.json { render :show, status: :created, location: @monitor_result }
      else
        format.html { render :new }
        format.json { render json: @monitor_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monitor_results/1
  # PATCH/PUT /monitor_results/1.json
  def update
    respond_to do |format|
      if @monitor_result.update(monitor_result_params)
        format.html { redirect_to @monitor_result, notice: 'Monitor result was successfully updated.' }
        format.json { render :show, status: :ok, location: @monitor_result }
      else
        format.html { render :edit }
        format.json { render json: @monitor_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monitor_results/1
  # DELETE /monitor_results/1.json
  def destroy
    @monitor_result.destroy
    respond_to do |format|
      format.html { redirect_to monitor_results_url, notice: 'Monitor result was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monitor_result
      @monitor_result = MonitorResult.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def monitor_result_params
      params.require(:monitor_result).permit(:http_response_code, :http_reponse_body, :active)
    end
end
