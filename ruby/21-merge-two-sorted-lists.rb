class ListNode
    attr_accessor :val, :next

    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end 
end

def merge_lists(list1, list2)
    # curr1, curr2 = head1, head2

    # if head1.val <= head2.val
    #     new_head = head1
    #     prev = head1
    #     curr1 = head1.next
    # else
    #     new_head = head2
    #     prev = head2
    #     curr2 = head2.next
    # end

    # while curr1 || curr2
    #     p prev, curr1, curr2
    #     if curr1.val <= curr2.val
    #         prev.next = curr1
    #         curr1 = curr1.next
    #     else
    #         prev.next = curr2
    #         curr2 = curr2.next
    #     end
    # end
    
    # new_head
    return list1 unless list2
    return list2 unless list1
  
    if list1.val < list2.val
      list1.next = merge_lists(list1.next, list2)
      list1
    else
      list2.next = merge_lists(list1, list2.next)
      list2
    end
  end

l1_n3 = ListNode.new(4)
l1_n2 = ListNode.new(2, l1_n3)
l1_n1 = ListNode.new(1, l1_n2)
list1 = [l1_n1, l1_n2, l1_n3]

l2_n3 = ListNode.new(4)
l2_n2 = ListNode.new(3, l2_n3)
l2_n1 = ListNode.new(1, l2_n2)
list2 = [l2_n1, l2_n2, l2_n3]

p merge_lists(l1_n1, l2_n1)