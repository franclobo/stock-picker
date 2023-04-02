# a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

def stock_picker(prices)
  best_buy = 0
  best_sell = 0
  best_profit = 0
  prices.each_with_index do |buy_price, buy_day|
    prices.each_with_index do |sell_price, sell_day|
      if sell_day > buy_day
        profit = sell_price - buy_price
        if profit > best_profit
          best_profit = profit
          best_buy = buy_day
          best_sell = sell_day
        end
      end
    end
  end
  [best_buy, best_sell]
end
