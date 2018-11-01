#Phase 1
require 'byebug'
def first_anagram?(word1, word2)
  letters = word1.chars
  possible = []
  perms = letters.permutation.to_a
  perms.each do |sub|
    possible << sub.join
  end
  possible.any? { |word| word == word2 }
end


#Phase 2
def second_anagram?(word1, word2)
  
  array1 = word1.split('')
  array2= word2.split('')
  array1.each do |char|
    idx = array2.find_index(char)
    # debugger
    return false if idx.nil? 
     
    array2.delete_at(idx)
  end
  array2.empty?
end

#Phase 3
def third_anagram?(word1, word2)
  word1.split('').sort == word2.split('').sort
end

#Phase 4
def fourth_anagram?(word1, word2)
  hashify(word1) == hashify(word2)
end

def hashify(word)
  hash = Hash.new(0)
  
  word.chars.each do |char|
    hash[char] += 1
  end
  hash
end


# def first_anagram?(word1, word2)
#   letters = word1.chars
#   possible = []
# 
#     let1 = letters[0]
# 
#     lets = letters[1..-1] 
# 
#     lets.each_index do |i|
#       new_word = lets[0..i] + [let1] + lets[i+1..-1]
#       possible << new_word.join
#     end
# 
#   possible.any? { |word| word == word2 }
#   p possible
# end
