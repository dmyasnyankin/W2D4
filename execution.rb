# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# my_min(list)  # =>  -5
#Phase 1
def my_min(arr)
  sorted = false
  until sorted
    sorted = true
    arr.each_index do |i|
    j = i + 1
    break if j == arr.length
      if arr[i] > arr[j]
        arr[i], arr[j] = arr[j], arr[i]
        sorted = false
      end
    end
  end
  arr[0]
end


#Phase 2
def my_min2(arr)
  min = arr[0]
  
  arr[1..-1].each do |el|
    if min > el
      min = el
    end
  end
  min
end

# Example:
# 
#     list = [5, 3, -7]
#     largest_contiguous_subsum(list) # => 8
# 
#     # possible sub-sums
#     [5]           # => 5
#     [5, 3]        # => 8 --> we want this one
#     [5, 3, -7]    # => 1
#     [3]           # => 3
#     [3, -7]       # => -4
#     [-7]          # => -7
# Example 2:
# 
#     list = [2, 3, -6, 7, -6, 7]
#     largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])
# Example 3:
# 
#     list = [-5, -1, -3]
#     largest_contiguous_subsum(list) # => -1 (from [-1])
def largest_contiguous_subsum(list)
  sums = []
  
  list.length.times do |i|
    (i+1..list.length - 1).each do |j|
      sums << list[i..j].reduce(:+)
    end
  end
  
  sums.max
end
  
def lcs(list)
  # return list[0] if list.length == 1
  # 
  # largest = list.shift
  # sum = largest + lcs(list)
  # largest = sum if sum > largest
  
  sum = 0
  # min = list.min
  largest = list.max
  list.each do |el|
    sum += el
    # sum = 0 if el == min
    largest = sum if sum > largest
  end
  
  sum = 0
  (list.reverse!).each do |el|
    sum += el
    # sum = 0 if el == min
    largest = sum if sum > largest
  end
  
  largest  
end


#FROM ANAGRAMSSSSSSS
# def first_anagram?(word1, word2)
# 
#   return false if word1.length != word2.length
#   word1.each do
# end
# 
# 
# def substr(letters)
# 
#   # letters = word1.chars
#   possible = []
#   return [letters] if letters.length == 1
# 
#   let1 = letters[0]
# 
#   lets = substr(letters[1..-1])
# 
#   lets.each_index do |i|
#     new_word = lets[0...i] + [let1] + lets[i..-1]
#     possible << new_word
#   end
# 
#   possible  
# end

  