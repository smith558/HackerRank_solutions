# Complete the breakingRecords function below.
def breaking_records(scores)
  min, max = scores.first, scores.first
  min_breaks, max_breaks = 0, 0

  scores.each do |i|
    if i > max
      max_breaks += 1
      max = i
    elsif i < min
      min_breaks += 1
      min = i
    end
  end
  [max_breaks, min_breaks]
end

array = [10, 5, 20, 20, 4, 5, 2, 25, 1]

puts breaking_records array