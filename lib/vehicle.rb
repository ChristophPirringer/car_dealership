class Vehicle

  @@vehicles = []

  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
    @id = @@vehicles.length().+(1)
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

  def age
    current_year = Time.new().year()
    age = current_year.-(@year)
  end

  def worth_buying?
    american_cars = ["Chrsyler", "Ford", "GM"]
    american_cars.include?(@make).&(self.age.<=(15))
  end

  def id
    car_id = @@vehicles.index(self).+(1)
  end


end
