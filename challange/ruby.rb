def arr(str,num)
    index = str.rindex
    index = index.each {|index_| index_ == num }
    str.slice!(index)
    str
end


puts arr([1,2,3],2)