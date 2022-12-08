# frozen_string_literal: true

# Class for calculating function length
class FuncLengthCalc
  def self.calculate(eps)
    summas = Enumerator::Lazy.new(1..Float::INFINITY) do |yielder, num|
      yielder << lcount(num)
    end

    my_list = summas.each_cons(2).take_while { |elem| (elem[0] - elem[1]).abs >= eps }.to_a
    [my_list.size, my_list.last[0]]
  end

  def self.lcount(num)
    dsmall = 1.0 / num
    xstart = 1
    maslen = Enumerator::Lazy.new(1..Float::INFINITY) do |yielder|
      dy = Math.log(xstart + dsmall) - Math.log(xstart)
      xstart += dsmall
      yielder << Math.sqrt(dy**2 + dsmall**2)
    end
    maslen.take(num + 1).reduce(:+)
  end
end
