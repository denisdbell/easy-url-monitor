class NotifcationEmailsController < ApplicationController
  before_action :set_notifcation_email, only: [:show, :edit, :update, :destroy]

  # GET /notifcation_emails
  # GET /notifcation_emails.json
  def index
    @notifcation_emails = NotifcationEmail.all
  end

  # GET /notifcation_emails/1
  # GET /notifcation_emails/1.json
  def show
  end

  # GET /notifcation_emails/new
  def new
    @notifcation_email = NotifcationEmail.new
  end

  # GET /notifcation_emails/1/edit
  def edit
  end

  # POST /notifcation_emails
  # POST /notifcation_emails.json
  def create
    @notifcation_email = NotifcationEmail.new(notifcation_email_params)

    respond_to do |format|
      if @notifcation_email.save
        format.html { redirect_to @notifcation_email, notice: 'Notifcation email was successfully created.' }
        format.json { render :show, status: :created, location: @notifcation_email }
      else
        format.html { render :new }
        format.json { render json: @notifcation_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notifcation_emails/1
  # PATCH/PUT /notifcation_emails/1.json
  def update
    respond_to do |format|
      if @notifcation_email.update(notifcation_email_params)
        format.html { redirect_to @notifcation_email, notice: 'Notifcation email was successfully updated.' }
        format.json { render :show, status: :ok, location: @notifcation_email }
      else
        format.html { render :edit }
        format.json { render json: @notifcation_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notifcation_emails/1
  # DELETE /notifcation_emails/1.json
  def destroy
    @notifcation_email.destroy
    respond_to do |format|
      format.html { redirect_to notifcation_emails_url, notice: 'Notifcation email was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notifcation_email
      @notifcation_email = NotifcationEmail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notifcation_email_params
      params.require(:notifcation_email).permit(:email, :active)
    end
end
