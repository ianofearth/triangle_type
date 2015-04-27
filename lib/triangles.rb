class Triangles
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1.to_i
    @side2 = side2.to_i
    @side3 = side3.to_i
  end

  define_method(:triangle?) do
    if @side1 + @side2 > @side3 && @side1 + @side3 > @side2 && @side2 + @side3 > @side1
      true
    else
      false
    end
  end

  define_method(:triangle_type) do
    if self.triangle?()
      if @side1 != @side2 && @side1 != @side3 && @side2 != @side3
        return "scaline"
      elsif @side1 == @side2 && @side1 == @side3 && @side2 == @side3
        return "equilateral"
      else
        return "isosceles"
      end
    else
      "this is not a triangle dummy"
    end
  end
end
