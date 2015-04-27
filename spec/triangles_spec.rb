require('rspec')
require('triangles')
require('pry')

describe(:Triangles) do
  describe("#triangle_type") do
    it("returns scaline for a triangle with zero equal sides") do
      test_triangle = Triangles.new("1","2","3")
      expect(test_triangle.triangle_type()).to(eq("scaline"))
    end

    it("equilateral for a triangle with 3 equal sides") do
      test_triangle = Triangles.new("1","1","1")
      expect(test_triangle.triangle_type()).to(eq("equilateral"))
    end
    it("returns isosceles for a triangle with only 2 equal sides") do
      test_triangle = Triangles.new("1", "1", "2")
      expect(test_triangle.triangle_type()).to(eq("isosceles"))
    end
  end
end
