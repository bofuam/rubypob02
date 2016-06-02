class Point3D
  attr_accessor :x
  attr_accessor :y
  attr_accessor :z
  def initialize(a=0.0, b=0.0, c=0.0)
    @x = a
    @y = b
    @z = c
  end
  def set(a, b, c)
    @x = a
    @y = b
    @c = c
  end
  def move(x, y, z)
    Point3D.new(@x + x, @y + y, @z + z)
  end
  def move!(x, y, z)
    @x = @x +x
    @y = @y + y
    @z = @z + z
  end
  def zero?
    if @x + @y + @z == 0.0 then return true end
  end
  def euclidan(point)
    a = point.x - @x
    b = point.y - @y
    c = point.z = @z
    puts Math.sqrt(a*b*c)
  end
  alias_method :dist, :euclidan
end
# obj = Point3D.new(1, 2, 3)
# puts obj.z
# obj.z = obj.z + 10
# puts obj.z
#
# puts obj.x
# puts obj.y
# puts obj.z
# objNew = Point3D.new(1)
# puts objNew.x
# puts objNew.y
# puts objNew.z
# objNew2 = Point3D.new(2,3)
# puts objNew2.x
# puts objNew2.y
# puts objNew2.z
# moveZero = Point3D.new()
# puts moveZero.zero?
moveOne = Point3D.new(1,1,1)
# moveOne.move!(2,2,2)
# moveOne.euclidan(obj)
# moveOne.dist(obj)

puts moveOne.x
be = moveOne.move(1,2,3)
puts moveOne.x
puts be.x


moveOne.move!(2,3,4)
puts moveOne.x