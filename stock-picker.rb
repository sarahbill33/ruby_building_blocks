# buy on lowest priced day
# sell on highest priced day
# can't sell before you've bought
# can't buy on last day (no ability to sell)

# array.index(arrayNum) will return the index number ('day') for the price
# array.min
# array.max

def stockPicker (array)
	buyDays = array[0..(array.length-2)] #17 3 6 9 15 8 6 1
	sellDays = array[1..(array.length-1)] #3 6 9 15 8 6 1 10
	buySellDays = []
	profit = 0
	i=0
	while i < sellDays.length
		j=0
		while j < buyDays.length
			if (sellDays[i] - buyDays[j]) > profit && (i - j) > 0
				buySellDays = ([buyDays[j], sellDays[i]])
				profit = (sellDays[i] - buyDays[j])
			else
				#nada
			end
		j = j + 1
		end
	i = i + 1
	end
	puts array.index(buySellDays[0])
	puts array.index(buySellDays[1])
end

puts stockPicker([17,3,6,9,15,8,6,1,10])
