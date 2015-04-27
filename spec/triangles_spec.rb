require('rspec')
require('triangles')
require('pry')

describe(:Triangles) do
  describe("#triangle_type") do
    it("returns scaline for a triangle with zero equal sides") do
      test_triangle = Triangles.new("3","4","5")
      expect(test_triangle.triangle_type()).to(eq("scaline"))
    end

    it("equilateral for a triangle with 3 equal sides") do
      test_triangle = Triangles.new("1","1","1")
      expect(test_triangle.triangle_type()).to(eq("equilateral"))
    end
    it("returns isosceles for a triangle with only 2 equal sides") do
      test_triangle = Triangles.new("2", "2", "3")
      expect(test_triangle.triangle_type()).to(eq("isosceles"))
    end

    it("returns false if provided lenths make an impossible triangle") do
      test_triangle = Triangles.new("2", "4", "9")
      expect(test_triangle.triangle?()).to(eq(false))
    end
    
    it("returns this is not a triangle if it is not a triangle") do
      test_triangle = Triangles.new("2", "4", "9")
      expect(test_triangle.triangle_type()).to(eq("this is not a triangle dummy"))
    end
  end
end
