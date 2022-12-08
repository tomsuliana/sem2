# frozen_string_literal: true

require_relative 'main'
puts 'Enter first side'
a = gets.chomp.to_i
puts 'Enter second side'
b = gets.chomp.to_i
puts 'Enter third side'
c = gets.chomp.to_i

triang = Triangle.new(a, b, c)
triang.print_fields
puts "Square of triangle = #{triang.squaret}"

puts 'Enter diagonal'
diag = gets.chomp.to_i
quad = Quad.new(diag, a, b, c)
quad.print_fields
puts "Sguare of quad = #{quad.squareq}"
