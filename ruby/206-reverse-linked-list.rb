class ListNode
    attr_accessor :val, :next

    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end 
end

def BuildList (elements)
    list = []

    elements.each_with_index do |el, i|
        node = ListNode.new(el.to_i)
        list << node
        list[i-1].next = node unless i == 0
    end

    list
end

def ReverseList(list)
    tail = list.size - 1
    tail.downto(0) do |i|
        list[i].next = list[i-1] unless i == 0
    end
    list[0].next = nil
    list.reverse
end

*elements = ARGV
LinkedList = BuildList(elements)
p ReverseList(LinkedList)