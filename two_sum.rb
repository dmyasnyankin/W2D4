# def two_sum?(arr, target_sum)
#     # your code here...
# end
# 
# arr = [0, 1, 5, 7]
# two_sum?(arr, 6) # => should be true
# two_sum?(arr, 10) # => should be false
require 'byebug'
#Brute Force
def bad_two_sum(arr, target)
  arr.each_index do |i|
    (i + 1..arr.length - 1).each do |j|
      return true if arr[i] + arr[j] == target
    end
  end
  false
 end
 
 #Time Complexity O(n^2)
 
 #Sorting
 
 def okay_two_sum(arr, target)
   sorted = arr.sort
   sorted.each_with_index do |el, idx|
     search = target - el
     return true if (sorted.index(search) != idx && sorted.index(search))
   end
   false
 end
 # def okay_two_sum(arr, target) 
 #   # debugger
 #   return false if arr.length == 0
 #   sorted = arr.sort
 #   middle = sorted.length/2
 #   el1 = sorted[middle-1] 
 #   if el1 + sorted[middle] == target
 #     return true
 #   elsif el1 + sorted[middle] < target
 #     return okay_two_sum(sorted[middle + 1..-1], target)
 #   else
 #     return okay_two_sum(sorted[0...middle], target)
 #   end
 # end
 # 
 # def okay_two_sum2(arr,target)
 #   return false if arr.length == 0
 #   return true if 
 #   pivot = arr[0]
 #   left = arr[1..-1].select do |el| 
 #     el < pivot
 #     return true if (pivot + el == target)
 #   end
 # 
 #   right = arr[1..-1].select do |el| 
 #     el > pivot
 #     return true if (pivot + el == target)
 #   end
 #   okay_two_sum2(left,target)
 #   okay_two_sum2(right,target)
 # end