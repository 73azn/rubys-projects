# frozen_string_literal: true

def merge_sort(array,str = "start",itt=1)
  p "#{itt} : #{str} #{array}"
  return array if array.length <= 1
  mid = array.length / 2
  left = merge_sort(array.slice(0, mid), "left",itt+1)
  right = merge_sort(array.slice(mid, array.length), "right",itt+1)
  return merge(left, right)
end

def merge(left, right)
  arr = []
  p "#{left} #{right} do merge sort"
  sizeL = left.length
  sizeR = right.length

  i = 0
  j = 0
  while  i < sizeL && j < sizeR
    if left[i] < right[j]
      arr.push(left[i])
      i +=1
    elsif right[j] < left[i]
      arr.push(right[j])
      j+=1
    end

  end
  if i == sizeL
    arr += right.slice(j, sizeR)
  elsif j == sizeR
    arr += left.slice(i, sizeL)
  end
  p "merged array:#{arr}"
  return arr
end

arr = (1..8).to_a
arr = arr.shuffle



p merge_sort(arr)

