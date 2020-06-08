# encoding: utf-8

puts "Pick a Card"

values = %w[2 3 4 5 6 7 8 9 10 J O K A]
suits = %w[♦ ♠ ♥ ♣]

cards = []

values.each do |value|
  suits.each do |suit|
    cards << "[#{value}|#{suit}]"
  end
end

2.times do
  cards << "[Joker]"
end

cards.shuffle!

puts "Сколько карт нужно?"
number = STDIN.gets.to_i

number.times do
  puts cards.pop
end
