class DriverProfilesController < ApplicationController
  before_action :set_driver_profile, only: [:show, :edit, :update, :destroy]

  # GET /driver_profiles
  # GET /driver_profiles.json
  def index
    @driver_profiles = DriverProfile.all
  end

  # GET /driver_profiles/1
  # GET /driver_profiles/1.json
  def show
  end

  # GET /driver_profiles/new
  def new
    @driver_profile = DriverProfile.new
  end

  # GET /driver_profiles/1/edit
  def edit
  end

  # POST /driver_profiles
  # POST /driver_profiles.json
  def create
    @driver_profile = DriverProfile.new(driver_profile_params)

    respond_to do |format|
      if @driver_profile.save
        format.html { redirect_to @driver_profile, notice: 'Driver profile was successfully created.' }
        format.json { render :show, status: :created, location: @driver_profile }
      else
        format.html { render :new }
        format.json { render json: @driver_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /driver_profiles/1
  # PATCH/PUT /driver_profiles/1.json
  def update
    respond_to do |format|
      if @driver_profile.update(driver_profile_params)
        format.html { redirect_to @driver_profile, notice: 'Driver profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @driver_profile }
      else
        format.html { render :edit }
        format.json { render json: @driver_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /driver_profiles/1
  # DELETE /driver_profiles/1.json
  def destroy
    @driver_profile.destroy
    respond_to do |format|
      format.html { redirect_to driver_profiles_url, notice: 'Driver profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_driver_profile
      @driver_profile = DriverProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def driver_profile_params
      params.require(:driver_profile).permit(:driver_internal_id, :external_id, :email, :first_name, :last_name, :phone, :phone_ext, :image, :emergency_contact_name, :emergency_contact_phone, :time_zone, :metric_units, :carrier_name, :carrier_street, :carrier_city, :carrier_state, :carrier_zip, :violation_alerts, :terminal_street, :terminal_city, :terminal_state, :terminal_zip, :cycle, :exception_24_hour_restart, :exception_8_hour_break, :exception_wait_time, :exception_short_haul, :exception_ca_farm_school_bus, :cycle2, :exception_24_hour_restart2, :exception_8_hour_break2, :exception_wait_time2, :exception_short_haul2, :exception_ca_farm_school_bus2, :export_combined, :export_recap, :export_odometers, :username, :driver_company_id, :minute_logs, :duty_status, :eld_mode, :drivers_license_number, :drivers_license_state, :yard_moves_enabled, :personal_conveyance_enabled, :manual_driving_enabled, :role, :status)
    end
end
