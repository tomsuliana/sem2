# frozen_string_literal: true

# Class for triangle
class Triangle
  attr_reader :a_side, :b_side, :c_side

  def initialize(first, second, third)
    @a_side = first
    @b_side = second
    @c_side = third
  end

  def print_fields
    puts "first: #{a_side} second: #{b_side} third: #{c_side}"
  end

  def putpp
    (a_side + b_side + c_side).to_f / 2
  end

  def squaret
    ppp = putpp
    new_p = ppp * (ppp - a_side) * (ppp - b_side) * (ppp - c_side)
    Math.sqrt(new_p.to_f)
  end
end

# Class for quads
class Quad < Triangle
  attr_reader :diag

  def initialize(diag, first, second, third)
    super(first, second, third)
    @diag = diag
  end

  def print_fields
    puts "first: #{a_side} second: #{b_side} third: #{a_side} forth #{b_side}"
    puts "first diag: #{c_side} second diag: #{diag}"
  end

  def putddd
    ((c_side * c_side) + (diag * diag) - 4 * (a_side * a_side))
  end

  def senyc
    Math.sqrt(1 - (putddd / (2 * c_side * diag).to_f)**2)
  end

  def squareq
    senyc = self.senyc
    c_side * diag * senyc.to_f / 2
  end
end
