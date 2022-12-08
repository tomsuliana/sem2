# frozen_string_literal: true

require_relative 'main'
foo1 = ->(x) { x + Math.cos(x) }
foo2 = ->(x) { Math.tan(x + 1) / (x + 1) }
proc1 = proc { |x| x + Math.cos(x) }
proc2 = proc { |x| Math.tan(x + 1) / (x + 1) }
puts 'Enter n'
n = gets.chomp.to_i
a1 = -1
b1 = 4
a2 = 1
b2 = 2
firstint = IntegralCalc.new
firstint.perem(a1, b1)
p 'First integral: '
p "lambda result = #{firstint.trap(n, foo1)}"
p "proc result = #{firstint.trap(n, proc1)}"
secondint = IntegralCalc.new
secondint.perem(a2, b2)
p 'Second integral: '
p "second result = #{secondint.trap(n, foo2)}"
p "proc result = #{secondint.trap(n, proc2)}"
