def merge_sort(arr)
  if arr.length < 2
    return arr
  else
    #sort left half
    left = arr[0..(arr.length/2 - 1)]
    sorted_left = merge_sort(left)

    #sort right half
    right = arr[(arr.length/2)..-1]
    sorted_right = merge_sort(right)

    #merge sorted halves
    return merge(sorted_left, sorted_right)
  end
end

def merge(left, right)
  merged = []
  until left.empty? || right.empty?
    if left[0] < right[0]
      merged << left.shift
    else
      merged << right.shift
    end
  end
  merged+left+right
end

puts merge_sort([1,8,65,4,5,4,6,3,7,2])
