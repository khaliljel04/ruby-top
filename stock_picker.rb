def stock_picker(prices)
  days = [0,1]
  min_i = 0

  prices.each_with_index do |price, i|
    if price < prices[min_i]
      min_i = i
      next
    end

    if price - prices[min_i] > prices[days[1]] - prices[days[0]]
      days = [min_i, i]
    end
  end
  days
end

p stock_picker([17,3,6,9,15,8,6,1,10])