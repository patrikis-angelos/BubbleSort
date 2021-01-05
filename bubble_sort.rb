def bubble_sort(arr)
  (arr.length - 1).times do
    arr.each_with_index do |num, j|
      if arr[j + 1] && arr[j] > arr[j + 1]
        temp = arr[j]
        arr[j] = arr[j + 1]
        arr[j + 1] = temp
      end
    end
  end
end

test_arr = [4, 3, 78, 2, 0, 2]
bubble_sort(test_arr)

def bubble_sort_by(arr)
  (arr.length - 1).times do
		arr.each_with_index do |num, j|
			if arr[j + 1]
				number = yield(arr[j], arr[j + 1])
				if number.positive?
					temp = arr[j]
					arr[j] = arr[j + 1]
					arr[j + 1] = temp
				end
			end
    end
  end
end

bubble_sort_by(test_arr) do |cur, nex|
  cur - nex
end

p test_arr
