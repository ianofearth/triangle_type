class Triangles
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  define_method(:triangle_type) do
    if @side1 != @side2 && @side1 != @side3 && @side2 != @side3
      return "scaline"
    end
  end
end
