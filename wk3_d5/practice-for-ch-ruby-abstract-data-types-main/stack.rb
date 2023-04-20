class Stack

    def initialize
        @stack = []
    end


    def push(ele)
        stack << ele
    end


    def pop
        stack.pop

        #or

        # stack[0...-1]
    end

    def peek
        stack.last

        #or

        # stack[-1]
    end


    private
    attr_reader :stack
end
