#The purpose of this function is to have a way to sort from low to high, or high to low

def sorter(arr, reverse=false)
	if(reverse==true)
		arr.sort!.reverse!
	else
		arr.sort!
	end
end

numbers=[3,6,2,8,1]
puts sorter(numbers, true)
