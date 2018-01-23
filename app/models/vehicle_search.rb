class VehicleSearch 
  attr_reader :vin

  def initialize(params)
    params ||= {}
    @vin = parsed_vin(params[:vin])
  end

end