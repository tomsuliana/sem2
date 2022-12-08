# frozen_string_literal: true

# Class for calculating integral of function
class IntegralCalc
  def initialize
    @aaa = 0
    @bbb = 0
  end

  def perem(aaaa, bbbb)
    @aaa = aaaa
    @bbb = bbbb
  end

  def trap(num, foo)
    sumn = 0.0
    dsmall = (@bbb - @aaa) / num.to_f
    (1..num - 1).each do |iterator|
      sumn += foo.call(@aaa + iterator * dsmall)
    end
    ((foo.call(@aaa) + foo.call(@bbb)) / 2 + sumn) * dsmall
  end
end
