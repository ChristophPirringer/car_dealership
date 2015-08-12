class Vehicle

  @@vehicles = []

  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
  end

  def make
    @make
  end

  def model
    @model
  end

  def year
    @year
  end

  define_singleton_method(:all) do
    @@vehicles
  end

  def save
    @@vehicles.push(self)
  end

  define_singleton_method(:clear) do
    @@vehicles = []
  end

end
