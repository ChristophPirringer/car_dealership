require('rspec')
require('dealership')

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






end
