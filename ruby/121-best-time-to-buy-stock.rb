def max_profit(prices)
    # min, max, i = 0, 0, 1

    # while i < prices.size do
    #     if prices[i] < prices[min]
    #         min = max = i
    #     elsif
    #         prices[i] > prices[max]
    #         max = i
    #     end
    #     i += 1
    # end
    # prices[max] - prices[min]

    min, max_prof = prices[0], 0

    prices.each do |p|
      min = [min, p].min
      max_prof = [max_prof, p - min].max
    end
  
    max_prof
end

*prices= ARGV
p max_profit(prices.map(&:to_i))