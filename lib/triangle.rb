class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    is_equal
      if (a==b) && (b==c)
        :equilateral
      elsif a==b || b==c ||a==c
        :isosceles
      else
        :scalene
      end
    end
    def sides_larger_than_0?
      [a, b, c].all?(& :positive?)
    end

    def triangle_inequality?
      a + b > c && a + c > b && b + c > a
    end

    def is_equal
      raise TriangleError unless  sides_larger_than_0? && triangle_inequality?     
    end
    class TriangleError < StandardError
        
    end
  end
end
