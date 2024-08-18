# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  return false unless s.length == t.length
  s.each_char do |c|
    return false unless s.count(c) == t.count(c)
  end
  true
end

p is_anagram(ARGV[0], ARGV[1]) ? "Y" : "N"