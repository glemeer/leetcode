def valid_parens_pairs(parens_string)
    # stack_parens, stack_brackets, stack_square = [], [], []
    
    # parens_string.chars.each do |c|
    #     case c
    #     when '('
    #         stack_parens.push c
    #     when ')'
    #         stack_parens.pop
    #     when '{'
    #         stack_brackets.push c
    #     when '}'
    #         stack_brackets.pop
    #     when '['
    #         stack_square.push c
    #     when ']'
    #         stack_square.pop
    #     end
    # end

    # stack_parens.size + stack_brackets.size + stack_square.size == 0

    arr = []

    parens_string.chars.each do |c|
      if ["(", "{", "["].include?(c)
        arr.push(c)
      else
        return false if arr.empty?
        if c == ")" && arr.last != "(" ||
           c == "}" && arr.last != "{" ||
           c == "]" && arr.last != "["
  
          return false
        end
  
        arr.pop
      end
    end
  
    arr.empty?
  end
  
p ARGV[0]
p valid_parens_pairs(ARGV[0])