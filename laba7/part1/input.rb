# frozen_string_literal: true

require_relative 'main'
puts 'Enter numbers'
massive = []
loop do
  input = gets.chomp
  reg = /\d/
  break if input == 'end'

  massive.push input if input.match(reg)
end
FileWriter.new_file_write(massive)
FileWriter.second_file_write
