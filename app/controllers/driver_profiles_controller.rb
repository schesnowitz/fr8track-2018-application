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
    vehicle_locations

    # @vehicle_locations_response.vehicles.each do |data|
    #   @vehicle_data = data.vehicle
    #   @current_driver_data = data.vehicle.current_driver
    #   @current_location_data = data.vehicle.current_location
    
    #   if !@current_driver_data.nil? && @current_driver_data.driver_company_id == @driver_profile.driver_string_id
    #     @vehicle = @vehicle_data
    #     @current_driver = @current_driver_data
    #     @location_data = @current_location_data
    #   puts "Vehicle ID: #{@vehicle.id}"
    #   puts "Vehicle number: #{@vehicle.number}"
    #   puts "Vehicle VIN: #{@vehicle.vin}"
    #   puts ''
    # puts '---------------------START @current_driver'
    # if !@current_driver.nil?
    #   puts "First Name: #{@current_driver.first_name}"
    #   puts "Last Name: #{@current_driver.last_name}"
    #   puts "API driver_company_id: #{@current_driver.driver_company_id}"
    # end
    # puts '---------------------END @current_driver'
    # puts ''
    # puts '---------------------Start @current_location'
    
    # if !@current_location.nil?
    #   puts "LAT: #{@current_location.lat}"
    #   puts "LNG: #{@current_location.lat}"
    # end
    # puts '---------------------END @current_location'
    # puts ''
    
    # end
    # end
    
    
    

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
      params.require(:driver_profile).permit(:first_name, :last_name, :dob, :street, :city, :state, :zip, :telephone, :image, :driver_string_id, :email)
    end
end
