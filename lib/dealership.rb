class Dealership

  @@dealerships = []

  def initialize(name)
    @name = name
    @id = @@dealerships.length().+1
    @cars = []
  end

  def name
    @name
  end

  def id
    @id
  end

  def cars
    @cars
  end

  define_singleton_method(:all) do
    @@dealerships
  end

  define_singleton_method(:clear) do
    @@dealerships.clear()
  end

  def save
    @@dealerships.push(self)
  end

  define_singleton_method(:find) do |identification|
    found_dealership = nil
    @@dealerships.each() do |dealership|
      if dealership.id() == identification.to_i
        found_dealership = dealership
      end
    end
    found_dealership
  end

  def add_vehicle(vehicle)
    @cars.push(vehicle)
  end
end
