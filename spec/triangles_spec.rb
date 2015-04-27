require('rspec')
require('triangles')
require('pry')

describe(:Triangles) do
  describe("#triangle_type") do
    it("returns scaline for a triangle with zero equal sides") do
      test_triangle = Triangles.new("1","2","3")
      expect(test_triangle.triangle_type()).to(eq("scaline"))
    end
  end
end
