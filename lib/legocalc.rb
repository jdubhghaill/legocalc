require 'chunky_png'

require_relative "legocalc/brick"
require_relative "legocalc/result"

image = ChunkyPNG::Image.from_file('test.png')
puts "width #{image.width} height #{image.height}"

bricks = []

bricks << Brick.new(8, 2, ChunkyPNG::Color.rgb(27, 42, 52), "black", 0.55)
bricks << Brick.new(6, 2, ChunkyPNG::Color.rgb(27, 42, 52), "black", 0.44)
bricks << Brick.new(4, 2, ChunkyPNG::Color.rgb(27, 42, 52), "black", 0.33)
bricks << Brick.new(3, 2, ChunkyPNG::Color.rgb(27, 42, 52), "black", 0.28)
bricks << Brick.new(16, 1, ChunkyPNG::Color.rgb(27, 42, 52), "black", 0.78)
bricks << Brick.new(12, 1, ChunkyPNG::Color.rgb(27, 42, 52), "black", 0.61)
bricks << Brick.new(10, 1, ChunkyPNG::Color.rgb(27, 42, 52), "black", 0.50)
bricks << Brick.new(8, 1, ChunkyPNG::Color.rgb(27, 42, 52), "black", 0.44)
bricks << Brick.new(4, 1, ChunkyPNG::Color.rgb(27, 42, 52), "black", 0.22)
bricks << Brick.new(2, 2, ChunkyPNG::Color.rgb(27, 42, 52), "black", 0.22)
bricks << Brick.new(6, 1, ChunkyPNG::Color.rgb(27, 42, 52), "black", 0.39)
bricks << Brick.new(3, 1, ChunkyPNG::Color.rgb(27, 42, 52), "black", 0.22)
bricks << Brick.new(2, 1, ChunkyPNG::Color.rgb(27, 42, 52), "black", 0.17)
bricks << Brick.new(1, 1, ChunkyPNG::Color.rgb(27, 42, 52), "black", 0.11)

bricks << Brick.new(6, 2, ChunkyPNG::Color.rgb(145, 153, 154), "dark grey", 0.44)
bricks << Brick.new(4, 2, ChunkyPNG::Color.rgb(145, 153, 154), "dark grey", 0.33)
bricks << Brick.new(3, 2, ChunkyPNG::Color.rgb(145, 153, 154), "dark grey", 0.28)
bricks << Brick.new(12, 1, ChunkyPNG::Color.rgb(145, 153, 154), "dark grey", 0.61)
bricks << Brick.new(10, 1, ChunkyPNG::Color.rgb(145, 153, 154), "dark grey", 0.50)
bricks << Brick.new(8, 1, ChunkyPNG::Color.rgb(145, 153, 154), "dark grey", 0.44)
bricks << Brick.new(4, 1, ChunkyPNG::Color.rgb(145, 153, 154), "dark grey", 0.22)
bricks << Brick.new(2, 2, ChunkyPNG::Color.rgb(145, 153, 154), "dark grey", 0.22)
bricks << Brick.new(6, 1, ChunkyPNG::Color.rgb(145, 153, 154), "dark grey", 0.39)
bricks << Brick.new(3, 1, ChunkyPNG::Color.rgb(145, 153, 154), "dark grey", 0.22)
bricks << Brick.new(2, 1, ChunkyPNG::Color.rgb(145, 153, 154), "dark grey", 0.17)
bricks << Brick.new(1, 1, ChunkyPNG::Color.rgb(145, 153, 154), "dark grey", 0.11)

bricks << Brick.new(8, 2, ChunkyPNG::Color.rgb(199, 193, 183), "light grey", 0.55)
bricks << Brick.new(6, 2, ChunkyPNG::Color.rgb(199, 193, 183), "light grey", 0.44)
bricks << Brick.new(4, 2, ChunkyPNG::Color.rgb(199, 193, 183), "light grey", 0.33)
bricks << Brick.new(3, 2, ChunkyPNG::Color.rgb(199, 193, 183), "light grey", 0.28)
bricks << Brick.new(10, 1, ChunkyPNG::Color.rgb(199, 193, 183), "light grey", 0.50)
bricks << Brick.new(8, 1, ChunkyPNG::Color.rgb(199, 193, 183), "light grey", 0.44)
bricks << Brick.new(4, 1, ChunkyPNG::Color.rgb(199, 193, 183), "light grey", 0.22)
bricks << Brick.new(2, 2, ChunkyPNG::Color.rgb(199, 193, 183), "light grey", 0.22)
bricks << Brick.new(6, 1, ChunkyPNG::Color.rgb(199, 193, 183), "light grey", 0.39)
bricks << Brick.new(3, 1, ChunkyPNG::Color.rgb(199, 193, 183), "light grey", 0.22)
bricks << Brick.new(2, 1, ChunkyPNG::Color.rgb(199, 193, 183), "light grey", 0.17)
bricks << Brick.new(1, 1, ChunkyPNG::Color.rgb(199, 193, 183), "light grey", 0.11)

bricks << Brick.new(8, 2, ChunkyPNG::Color.rgb(242, 243, 242), "white", 0.55)
bricks << Brick.new(6, 2, ChunkyPNG::Color.rgb(242, 243, 242), "white", 0.44)
bricks << Brick.new(4, 2, ChunkyPNG::Color.rgb(242, 243, 242), "white", 0.33)
bricks << Brick.new(3, 2, ChunkyPNG::Color.rgb(242, 243, 242), "white", 0.28)
bricks << Brick.new(16, 1, ChunkyPNG::Color.rgb(242, 243, 242), "white", 0.78)
bricks << Brick.new(12, 1, ChunkyPNG::Color.rgb(242, 243, 242), "white", 0.61)
bricks << Brick.new(10, 1, ChunkyPNG::Color.rgb(242, 243, 242), "white", 0.50)
bricks << Brick.new(8, 1, ChunkyPNG::Color.rgb(242, 243, 242), "white", 0.44)
bricks << Brick.new(4, 1, ChunkyPNG::Color.rgb(242, 243, 242), "white", 0.22)
bricks << Brick.new(2, 2, ChunkyPNG::Color.rgb(242, 243, 242), "white", 0.22)
bricks << Brick.new(6, 1, ChunkyPNG::Color.rgb(242, 243, 242), "white", 0.39)
bricks << Brick.new(3, 1, ChunkyPNG::Color.rgb(242, 243, 242), "white", 0.22)
bricks << Brick.new(2, 1, ChunkyPNG::Color.rgb(242, 243, 242), "white", 0.17)
bricks << Brick.new(1, 1, ChunkyPNG::Color.rgb(242, 243, 242), "white", 0.11)

bricks << Brick.new(4, 1, ChunkyPNG::Color.rgb(180, 210, 227), "light blue", 0.22)
bricks << Brick.new(2, 1, ChunkyPNG::Color.rgb(180, 210, 227), "light blue", 0.17)
bricks << Brick.new(1, 1, ChunkyPNG::Color.rgb(180, 210, 227), "light blue", 0.11)

results_grid = Array.new(image.width){Array.new(image.height){Result.new}}

bricks.each do |brick|
  brick.fits(image, results_grid)
end

image.height.times do |y|
  image.width.times do |x|
    print results_grid[x][y].filled? ? "F" : "O"
  end
  print "\n"
end

total = 0
cost = 0.0
bricks.each do |brick|
  total += brick.width * brick.height * brick.count
  cost += brick.count * brick.cost
  puts "#{brick.description} #{brick.height}x#{brick.width}: #{brick.count}"
end

puts "#{image.width * image.height} (#{0.11 * image.width * image.height}) = #{total} (#{cost})"
