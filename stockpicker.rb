def comparestocks(buy,sell)
  return sell - buy
end

#Test cases to test comparestocks function
#puts comparestocks(10,5)

def simulation(stocks)
  best_cases = Array.new
  list_of_days = Array.new
  stocks.each_with_index do |buy,index|
    possible_sells = stocks.slice(index+1,stocks.length-index)
    #print "possible sells are as follows: #{possible_sells}\n"
    best_case = nil
    best_day = nil
    possible_sells.each_with_index do |sell,index2|
      delta = comparestocks(buy,sell)
      if best_case == nil
        best_case = delta
        best_day = [index,index2+index+1]
      elsif delta>best_case
        best_case = delta
        best_day = [index,index2+index+1]
      end
    end
    best_cases << best_case
    list_of_days << best_day
  end
  best_cases.pop
  list_of_days.pop
  #print "List of best case scenarios per day is #{best_cases}\n"
  #print "List of best days per day is #{list_of_days}\n"
  index = best_cases.index(best_cases.max)
  return list_of_days[index]
end

#Test cases for simulation
stocks = [17,3,6,9,15,8,6,1,10]
print simulation(stocks)
