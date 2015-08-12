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

  define_singleton_method(:clear) do
    @@dealerships.clear()
  end
  
end
