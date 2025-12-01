# frozen_string_literal: true

codes = File.read('input.txt').split("\n").map { |code| [code[0], code[1..].to_i] }

position = 50
password = codes.reduce(0) do |acc, (direction, clicks)|
  position = (position + (direction == 'L' ? -clicks : clicks)) % 100
  position.zero? ? acc.next : acc
end

p password