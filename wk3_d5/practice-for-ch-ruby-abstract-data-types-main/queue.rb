class Queue


    def initialize
        queue = []
    end

    def enqueue(ele)
        queue << ele
    end


    def dequeue
        queue.shift

        #or

        queue[1..-1]
    end

    def peek
        queue.first

        #or

        queue[0]
    end

end
