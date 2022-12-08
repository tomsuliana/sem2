# frozen_string_literal: true

require_relative 'main'
puts 'Enter epsilon'
e = gets
reg = /\d/
if e.match(reg)
  e = e.to_f
  length = FuncLengthCalc.calculate(e)
  puts "iterations: #{length[0]}"
  puts "length = #{length[1]}"
else
  puts 'Enter numbers only'
end
