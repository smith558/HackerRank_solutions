require 'spec_helper'

# Complete the divisibleSumPairs function below.
def divisible_sum_pairs(n, k, ar)
  count = 0
  ar.each_with_index do |item, index|
    ar.each_with_index do |item_2, index_2|
      if (item + item_2) % k == 0
        count += 1 unless index >= index_2
      end
    end
  end
  count
end

RSpec.describe 'divisible_sum_pairs' do
  it 'should calculate num of pairs (i, j) where i < j and a[i] + a[j] is evenly divisible by k' do
    array = [1, 3, 2, 6, 1, 2]
    result = divisible_sum_pairs array.size, 3, array

    expect(result).to eq(5)
  end
end

