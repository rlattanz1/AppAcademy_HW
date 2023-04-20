class Queue


    def initialize
        @queue = []
    end

    def enqueue(ele)
        queue.unshift
    end


    def dequeue
        queue.pop
    end

    def peek
        queue.dup
    end

    private
    attr_reader :queue
end
