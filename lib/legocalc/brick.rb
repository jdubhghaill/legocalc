class Brick
  attr_accessor :height, :width, :colour, :count, :description, :cost

  def initialize (width, height, colour, description, cost)
    @width = width
    @height = height
    @colour = colour
    @description = description
    @cost = cost
    @count = 0
  end

  def draw (image, x, y, vertical)
    size = 5

    if !vertical
      @height.times do |hy|
        @width.times do |wx|
          #draw background
          size.times do |iy|
            size.times do |ix|
              image[x * size + wx * size + ix, y * size + hy * size + iy] = @colour
            end
          end

          image[x * size + wx * size + size / 2, y * size + hy * size + size / 2] = ChunkyPNG::Color::BLACK
        end
      end

      @width.times do |wx|
        size.times do |ix|
          image[x * size + wx * size + ix, y * size] = ChunkyPNG::Color::BLACK
          image[x * size + wx * size + ix, y * size + @height * size - 1] = ChunkyPNG::Color::BLACK
        end
      end

      @height.times do |hy|
        size.times do |iy|
          image[x * size, y * size + hy * size + iy] = ChunkyPNG::Color::BLACK
          image[x * size + @width * size - 1, y * size + hy * size + iy] = ChunkyPNG::Color::BLACK
        end
      end
    else


      @height.times do |hy|
        @width.times do |wx|
          #draw background
          size.times do |iy|
            size.times do |ix|
              image[x * size + hy * size + ix, y * size + wx * size + iy] = @colour
            end
          end

          image[x * size + hy * size + size / 2, y * size + wx * size + size / 2] = ChunkyPNG::Color::BLACK
        end
      end

      @height.times do |wx|
        size.times do |ix|
          image[x * size + wx * size + ix, y * size] = ChunkyPNG::Color::BLACK
          image[x * size + wx * size + ix, y * size + @width * size - 1] = ChunkyPNG::Color::BLACK
        end
      end

      @width.times do |hy|
        size.times do |iy|
          image[x * size, y * size + hy * size + iy] = ChunkyPNG::Color::BLACK
          image[x * size + @height * size - 1, y * size + hy * size + iy] = ChunkyPNG::Color::BLACK
        end
      end
    end
  end

  def fits (image, grid)
    image.height.times do |y|
      image.width.times do |x|
        if fits_point?(image, grid, x, y, false)
          add_to_grid(grid, x, y, false)
        elsif fits_point?(image, grid, x, y, true)
          add_to_grid(grid, x, y, true)
        end
      end
    end
  end

  def add_to_grid (grid, x, y, vertical)
    @count += 1
    grid[x][y].brick = self
    grid[x][y].vertical = vertical
    @width.times do |ix|
      @height.times do |iy|
        if vertical
          grid[x + iy][y + ix].filled = true
        else
          grid[x + ix][y + iy].filled = true
        end
      end
    end
  end

  def fits_point? (image, grid, x, y, vertical)
    fits = true
    @width.times do |i|
      @height.times do |k|
        ix = 0
        ky = 0
        if vertical
          ix = x + k
          ky = y + i
        else
          ix = x + i
          ky = y + k
        end
        if ix >= image.width or ky >= image.height
          fits = false
          break
        end

        if grid[ix][ky].filled?
          fits = false
          break
        end

        if image[ix, ky] != @colour
          fits = false
          break
        end
      end
    end

    fits
  end
end
