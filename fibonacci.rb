#iterative
def fib(n)
  arr = []
  arr << 0 if n >= 1
  arr << 1 if n >= 2
  if n > 2
    (n-2).times do |i|
      arr << arr[i] + arr[i+1]
    end
  end
  arr
end

#recursive
def fib_rec(n)
  return [0] if n == 1
  return [0,1] if n == 2
  fib_rec(n-1) << fib_rec(n-1)[-1] + fib_rec(n-1)[-2]
end

puts fib_rec(10)
puts fib(10)
#1,2,3,4,5,6,7,8,9,10
#0,1,1,2,3,5,8,13,21,34
