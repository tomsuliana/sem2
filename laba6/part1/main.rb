# frozen_string_literal: true

# Class for calculating length of function
class FuncLengthCalc
  attr_reader :iter_count

  def initialize
    @iter_count = 0
  end

  def calculate(eps)
    spr = 0
    sum = lcount(2)
    num = 2
    while (sum - spr).abs >= eps
      num += 1
      spr = sum
      sum = lcount(num + 2)
    end
    @iter_count = num
    sum
  end

  private

  def lcount(num)
    dsmall = 1.0 / num
    sum = 0
    xstart = 1
    (0..num).each do |_i|
      dy = Math.log(xstart + dsmall) - Math.log(xstart)
      xstart += dsmall
      rad = Math.sqrt(dy**2 + dsmall**2)
      sum += rad
    end
    sum
  end
end
