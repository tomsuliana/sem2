# frozen_string_literal: true

# Class for writing files
class FileWriter
  def self.new_file_write(mas)
    file = File.open('F.txt', 'w')
    (0..mas.length - 1).each do |iter|
      file.write("#{mas[iter]} ")
    end
    file.close
  end

  def self.second_file_write
    new_mas = File.read('F.txt').split.uniq
    file = File.open('G.txt', 'w')
    (0..new_mas.length - 1).each do |iter|
      file.write("#{new_mas[iter]} ")
    end
    file.close
  end
end
