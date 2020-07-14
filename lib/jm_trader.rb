prices = [17,3,6,9,15,8,6,1,10]
lowest_day = 0 # Achat
highest_day = 0 # Revente
profit = 0

prices.each_with_index do |buy_price, i|
  prices.each_with_index do |sell_price, j|
    if j > i
      if sell_price - buy_price > profit
        profit = sell_price - buy_price
        lowest_day = i
        highest_day = j
      end
    end
  end
end

puts "Achat pour #{prices[lowest_day].to_s}€ et revente pour #{prices[highest_day].to_s}€ = +#{prices[highest_day].to_i - prices[lowest_day].to_i}€"