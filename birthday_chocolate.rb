# s: an array of integers, the numbers on each of the squares of chocolate
# d: an integer, Ron's birth day aka sum
# m: an integer, Ron's birth month aka length
def birthday(arr, d, m)
  count = 0
  0.step(by: 1) do |i|
    sum = 0
    break if i + m - 1 >= arr.length
    (i..i + m - 1).each {|f| sum += arr[f]}
    count += 1 if d == sum
  end
  count
end

array = [1, 2, 1, 3, 2]
day = 3
month = 2

puts birthday(array, day, month)