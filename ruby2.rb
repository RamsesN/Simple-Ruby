class SelSortPlus

  attr_reader :currentArray

  def initialize(array)
    @currentArray = array
  end

  def sort()
    for i in 0..@currentArray.length-1 do
      currentMin = i
      j = i + 1
      while j < @currentArray.length do
        if(@currentArray[j]<@currentArray[currentMin])
          currentMin = j
        end
        j+=1
      end
      temp = @currentArray[i]
      @currentArray[i] = @currentArray[currentMin]
      @currentArray[currentMin] = temp
    end
    @currentArray.to_s
  end

  def add(toAdd)
    @currentArray += toAdd
    sort()
  end

  def reset()
    @currentArray = []
    @currentArray.to_s
  end

end

class SelSortVal < SelSortPlus
  def initialize(array)
    @currentArray = array
  end

  def listval()
    value = 0
    for i in 0..@currentArray.length-1 do
      value += @currentArray[i]
    end
    return value
  end
end

str = SelSortPlus.new([3,4,5,7,2,6,1])
puts str.sort
puts str.add([32,9,2,8,5])
puts str.reset
puts str.add([32,37,72,98,25])

str2 = SelSortVal.new([4,8,2,6,1])
puts str2.listval.to_s
puts str2.sort
puts str2.listval.to_s
