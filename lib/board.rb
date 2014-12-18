class Board

  attr_reader :element, :size

  def initialize(size)
    @size = size
    @element = Array.new(size){Array.new(size)}
  end

  def register_ship(x, y)
    @element[x][y] = true
  end

  def check_element?(x, y)
    @element[x][y] == true ? true : false
  end

  def print_ship
    @element.each do |x|
      x.each do |y|
        if y == nil
          print '- '
        elsif y == true
          print "\e[32m$ \e[0m"
        else
          print '- '
        end
      end
      puts
    end
  end

  def hit(x, y)
    @element[x][y] == true ? @element[x][y] = false : @element[x][y] = 0
  end

  def print_track
    @element.each do |x|
      x.each do |y|
        if y == nil
          print '- '
        elsif y == false
          print "\e[31m* \e[0m"
        elsif y == 0
          print "\e[33m* \e[0m"
        else
          print '- '
        end
      end
      puts
    end
  end

  def check_end
    !@element.flatten.include? true
  end

end
