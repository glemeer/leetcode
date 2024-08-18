def contains_duplicate(nums)
  unique_values = []
  dup_found = false
  nums.each do |n|
    if unique_values.include? n
      dup_found = true
    else
      unique_values << n
    end
  end
  dup_found
end

*input_array = ARGV
puts contains_duplicate(input_array) ? "Y" : "N"
