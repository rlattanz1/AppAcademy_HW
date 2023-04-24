class LRUCache

    def initialize(n)
        @capacity = n
        @cache = []
    end

    def count
        @cache.size
    end


    def add(ele)
        if self.cache.any?(ele)
            self.remove(ele)
            @cache << ele
        elsif count < capacity
            @cache << ele
        else
            remove(cache[0])
            @cache << ele
        end
        cache
    end

    def show
        arr = self.cache
        arr
    end

    private
    attr_reader :cache, :capacity

    def remove(ele)
        @cache.delete(ele)
        cache
    end

end

if $PROGRAM_NAME == __FILE__

    johnny_cache = LRUCache.new(4)

    johnny_cache.add("I walk the line")
    johnny_cache.add(5)

    johnny_cache.count # => returns 2

    johnny_cache.add([1,2,3])
    johnny_cache.add(5)
    johnny_cache.add(-5)
    johnny_cache.add({a: 1, b: 2, c: 3})
    johnny_cache.add([1,2,3,4])
    johnny_cache.add("I walk the line")
    johnny_cache.add(:ring_of_fire)
    johnny_cache.add("I walk the line")
    johnny_cache.add({a: 1, b: 2, c: 3})

    p johnny_cache.show
end
