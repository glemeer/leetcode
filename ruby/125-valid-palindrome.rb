def is_palindrome(input)
    input = input.gsub(/[^0-9a-z]/i, '').downcase
#    input == input.reverse
    left, right = 0, input.size - 1

    while left < right
        return false if input[left] != input[right]
        left += 1
        right -= 1
    end

    true

    end

p is_palindrome(ARGV[0])