class Helltriangle

  attr_accessor :arr

  def initialize(arr)
    @arr = arr

    raise 'Argument must be an array' unless @arr.class == Array
    raise 'Array is not a valid triangular multidimensional array' unless valid_array?(@arr)

  end

  def sum
    solve(@arr)
  end

  private

  def solve(arr, row = 0, last_index = 0)
    if row == arr.size
      return 0
    else
      current_max = arr[row][last_index..last_index + 1].each_with_index.max[0]
      last_index  = arr[row].index(current_max)
      return current_max + solve(arr, row + 1, last_index)
    end
  end

  def valid_array?(arr)
    arr.map{|row| row.size } == (1..arr.size).to_a
  end
end




