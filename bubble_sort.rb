def bubble_sort(arr)
  for j in 0..arr.length-2 do
    change = false
    for i in 0..arr.length-2-j do
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        change = true
      end
    end
    return arr if change == false
  end
  arr
end

p bubble_sort([1,2,3,4,5,6])