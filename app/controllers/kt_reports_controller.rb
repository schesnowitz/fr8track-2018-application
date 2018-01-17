class KtReportsController < ApplicationController
  before_action :set_kt_report, only: [:show, :edit, :update, :destroy]

  # GET /kt_reports
  # GET /kt_reports.json
  def index

    url = 'https://api.keeptruckin.com/v1'
    headers = { 'content-type': 'application/json', 'X-Api-Key': '091333c7-bfcc-4724-a936-d7f4a02966e9' }

    

    @kt_users = HTTParty.get("#{url}/users", headers: headers)
    @reports = JSON.parse(@kt_users.body, object_class: OpenStruct)
    @kt_reports = @reports.users
    # puts @kt_reports
  end

  # GET /kt_reports/1
  # GET /kt_reports/1.json
  def show
  end

  # GET /kt_reports/new
  def new
    @kt_report = KtReport.new
  end

  # GET /kt_reports/1/edit
  def edit
  end

  # POST /kt_reports
  # POST /kt_reports.json
  def create
    @kt_report = KtReport.new(kt_report_params)

    respond_to do |format|
      if @kt_report.save
        format.html { redirect_to @kt_report, notice: 'Kt report was successfully created.' }
        format.json { render :show, status: :created, location: @kt_report }
      else
        format.html { render :new }
        format.json { render json: @kt_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kt_reports/1
  # PATCH/PUT /kt_reports/1.json
  def update
    respond_to do |format|
      if @kt_report.update(kt_report_params)
        format.html { redirect_to @kt_report, notice: 'Kt report was successfully updated.' }
        format.json { render :show, status: :ok, location: @kt_report }
      else
        format.html { render :edit }
        format.json { render json: @kt_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kt_reports/1
  # DELETE /kt_reports/1.json
  def destroy
    @kt_report.destroy
    respond_to do |format|
      format.html { redirect_to kt_reports_url, notice: 'Kt report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kt_report
      @kt_report = KtReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kt_report_params
      params.require(:kt_report).permit(:time_zone)
    end
end
