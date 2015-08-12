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









end
