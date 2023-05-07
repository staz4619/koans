# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  arr = [a, b, c].sort
  raise TriangleError unless arr.min > 0 && arr[0] + arr[1] > arr[2]
  case arr.uniq.size
  when 3
    :scalene
  when 2
    :isosceles
  else
    :equilateral
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
