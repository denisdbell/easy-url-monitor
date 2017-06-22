class MonitoredUrlsController < ApplicationController
  before_action :set_monitored_url, only: [:show, :edit, :update, :destroy]

  # GET /monitored_urls
  # GET /monitored_urls.json
  def index
    @monitored_urls = MonitoredUrl.all
  end

  # GET /monitored_urls/1
  # GET /monitored_urls/1.json
  def show
  end

  # GET /monitored_urls/new
  def new
    @monitored_url = MonitoredUrl.new
  end

  # GET /monitored_urls/1/edit
  def edit
  end

  # POST /monitored_urls
  # POST /monitored_urls.json
  def create
    @monitored_url = MonitoredUrl.new(monitored_url_params)

    respond_to do |format|
      if @monitored_url.save
        format.html { redirect_to @monitored_url, notice: 'Monitored url was successfully created.' }
        format.json { render :show, status: :created, location: @monitored_url }
      else
        format.html { render :new }
        format.json { render json: @monitored_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monitored_urls/1
  # PATCH/PUT /monitored_urls/1.json
  def update
    respond_to do |format|
      if @monitored_url.update(monitored_url_params)
        format.html { redirect_to @monitored_url, notice: 'Monitored url was successfully updated.' }
        format.json { render :show, status: :ok, location: @monitored_url }
      else
        format.html { render :edit }
        format.json { render json: @monitored_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monitored_urls/1
  # DELETE /monitored_urls/1.json
  def destroy
    @monitored_url.destroy
    respond_to do |format|
      format.html { redirect_to monitored_urls_url, notice: 'Monitored url was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monitored_url
      @monitored_url = MonitoredUrl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def monitored_url_params
      params.require(:monitored_url).permit(:url, :active)
    end
end
