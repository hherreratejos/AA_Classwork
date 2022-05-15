require 'byebug'

def first_anagram?(str1, str2)
    str1.split("").permutation(str1.length).to_a.include?(str2.split(""))
end

# p first_anagram?("alo", 'ola')
# p first_anagram?('asd', 'afg')

def  second_anagram?(str1, str2)
    word2 = str2.split("")
    str1.each_char do |char|
        truthy = word2.index(char)
        if truthy
            word2[truthy] = ""
        end
    end

    return true if word2.join("") == ""
    false
end

# p second_anagram?("alo", 'ola')
# p second_anagram?('asd', 'afg')

def third_anagram?(str1,str2)
    word1 = str1.split("").sort
    word2 = str2.split("").sort

    word1 == word2
end

# p third_anagram?("alo", 'ola')
# p third_anagram?('asd', 'afg')

def fourth_anagram?(str1,str2)
    letters1 = Hash.new(0)
    letters2 = Hash.new(0)

    str1.each_char do |char|
        letters1[char] += 1
    end
    str2.each_char do |char|
        letters2[char] += 1
    end

    letters1 == letters2
end

# p fourth_anagram?("alo", 'ola')
# p fourth_anagram?('asd', 'afg')