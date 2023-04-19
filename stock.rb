def stock_picker stock_prices
    return 'oops, at least three days!' if stock_prices.length < 3
    checked_mins = []
    profit = 0
    max_profit_days = []
    until (stock_prices.length - checked_mins.length < 2) do
        min_val = stock_prices.filter { |val| checked_mins.include?(val) == false }.min
        max_val_after = stock_prices.filter { |val| stock_prices.index(val) >= stock_prices.index(min_val) }.max
        if ( (max_val_after - min_val) > profit )
            profit = max_val_after - min_val
            max_profit_days = [stock_prices.index(min_val), stock_prices.index(max_val_after)]
        end
        checked_mins.push(min_val)
    end
    max_profit_days
end