class VehiclesController < ApplicationController
  before_action :set_vehicle, only: [:show, :edit, :update, :destroy]

  # GET /vehicles
  # GET /vehicles.json
  def index
    @vehicles = Vehicle.all

    keep_truckin_vehicles
    @vehicles_response.vehicles.each do |data|
    response = data.vehicle

    puts response.vin
    end
  end 

  # GET /vehicles/1
  # GET /vehicles/1.json
  def show
  end

  # GET /vehicles/new WP0AB2966NS458669
  def new
    @vehicle = Vehicle.new
    @search = Vehicle.where(["vin LIKE ?", "%#{params[:search_data]}%"])
    keep_truckin_vehicles
    @vehicles_response.vehicles.each do |data|
      @vehicle_response = data.vehicle  
      @vehicle_driver_response = data.vehicle.current_driver 
      
      # @vehicles = Vehicle.all
      
      # puts SearchData
      # puts "Vin Response #{@vehicle_response.vin}".class
      # puts "Search #{@search}".class

    end
  end

  # GET /vehicles/1/edit
  def edit

  end

  # POST /vehicles
  # POST /vehicles.json
  def create
    @vehicle = Vehicle.new(vehicle_params)

    respond_to do |format|
      if @vehicle.save
        format.html { redirect_to @vehicle, notice: 'Vehicle was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle }
      else
        format.html { render :new }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicles/1
  # PATCH/PUT /vehicles/1.json
  def update



   
    # @url = 'https://api.keeptruckin.com/v1'
    # @headers = { 'content-type': 'application/json', 'X-Api-Key': ENV["KEEP_TRUCKIN_KEY"] } 
    # @all_vehicles = HTTParty.get("#{@url}/vehicles", headers: @headers)

    # Client.post(url,:query =>  { :param =>  "value" },
    # :headers =>  { "Authorization" =>  "THISISMYAPIKEY"})


    respond_to do |format|
      if @vehicle.update(vehicle_params)
        format.html { redirect_to @vehicle, notice: 'Vehicle was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle }
      else
        format.html { render :edit }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicles/1
  # DELETE /vehicles/1.json
  def destroy
    @vehicle.destroy
    respond_to do |format|
      format.html { redirect_to vehicles_url, notice: 'Vehicle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def api_update_vehicle
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle
      @vehicle = Vehicle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_params
      params.require(:vehicle).permit(:api_vehicle_id, :api_vehicle_company_id, :number, :status, :ifta, :vin, :make, :model, :year, :license_plate_state, :license_plate_number, :metric_units, :fuel_type, :prevent_auto_odometer_entry, :edl_device_id, :edl_identifier, :edl_model, :api_driver_id, :api_first_name, :api_last_name, :api_username, :api_email, :api_driver_company_id, :api_status, :api_role)
    end
end
