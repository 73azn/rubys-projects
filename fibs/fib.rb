# frozen_string_literal: true
def fibs(s)
  fib = [0,1]
  (2..s).each do |i|
    fib.append(fib[i-1]+fib[i-2])
  end
  return  fib[0..s]
end

def fibs_rec(n)

  return n if n < 2

  (fibs_rec(n-1) + fibs_rec(n-2))
end
fib = fibs(5)
fib.each {|i| print "#{i} "}
puts
(0..5).each { |n| print "#{fibs_rec(n)} " }