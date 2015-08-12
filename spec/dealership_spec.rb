require('rspec')
require('dealership')
require("vehicle")

describe(Dealership) do

  before() do
    Dealership.clear
  end

  describe('#name') do
    it('returns name of dealership') do
      test_dealership = Dealership.new("Christoph's amazing cars")
      expect(test_dealership.name()).to(eq("Christoph's amazing cars"))
    end
  end

  describe('#id') do
    it('returns the id of dealership') do
      test_dealership = Dealership.new("Christoph's amazing cars")
      expect(test_dealership.id()).to(eq(1))
    end
  end

  describe('#cars') do
    it("returns an empty array of cars for the dealerhsip") do
      test_dealership = Dealership.new("Christoph's crap cars")
      expect(test_dealership.cars()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds dealership to array of saved dealerships') do
      test_dealership = Dealership.new("Christoph's crap cars")
      test_dealership.save()
      expect(Dealership.all()).to(eq([test_dealership]))
    end
  end

  describe(".clear") do
    it("epmties out all of the saved dealerships") do
      test_dealership = Dealership.new("Christoph's crap cars")
      test_dealership.save()
      Dealership.clear()
      expect(Dealership.all()).to(eq([]))
    end
  end

  describe('.find') do
    it('finds the dealership by its id number') do
      test_dealership = Dealership.new("Christoph's amazing cars")
      test_dealership.save()
      test_dealership2 = Dealership.new("Ryan's better cars").save()
      expect(Dealership.find(test_dealership.id())).to(eq(test_dealership))
    end
  end

  describe("add_vehicle") do
    it("adds a new vehicle to a dealership") do
      test_dealership = Dealership.new("Ryan's better cars")
      test_vehicle = Vehicle.new("Volvo", "740", 1982)
      test_dealership.add_vehicle(test_vehicle)
      expect(test_dealership.cars()).to(eq([test_vehicle]))
    end
  end
end
