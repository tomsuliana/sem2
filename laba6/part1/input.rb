# frozen_string_literal: true

require_relative 'main'

puts 'Enter epsilon'
e = gets
reg = /\d/
if e.match(reg)
  e = e.to_f
  funcalc = FuncLengthCalc.new
  puts "length = #{funcalc.calculate(e)}"
  iter = funcalc.iter_count
  puts "iterations: #{iter}"
else
  puts 'Enter numbers only'
end
