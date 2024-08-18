# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  grouped = {}

  strs.each do |str|
    key = str.chars.sort.join
    if grouped.key? key
      grouped[key] << str
    else
      grouped[key] = [str]
    end
    grouped
  end
  grouped.values  
end

p group_anagrams(["eat","tea","tan","ate","nat","bat"])
p group_anagrams([""])
p group_anagrams(["a"])
