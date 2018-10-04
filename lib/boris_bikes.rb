class DockingStation
  #attr_reader :bike

  def initialize
    @bike_inv = []
    @max_val = 20
  end

  def release_bike
    #raise "No bikes" if @bike.nil?
    fail "No bikes" if @bike_inv.length == 0
    @bike_inv.pop
  end

  def dock(bike)

    raise "Station full" unless @bike_inv.length < 20
    #unless @bike.nil? raise "Station full"
    @bike_inv << bike
    return "dock success"
    #@bikes << bike
  end

  def available_bikes
    @bike_inv.length
  end
  
end


class Bike
  def working?
    true
  end

end
