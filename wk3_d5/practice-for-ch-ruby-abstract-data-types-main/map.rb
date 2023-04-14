class Map


    def initialize
        @map = []
    end


    def set(key, value)
        map.each do |sub|
            if sub[0] == key
                return false
            else
                map << [key, value]
            end
        end
    end


    def get(key)
        map.each do |sub|
            return sub[1] if sub[0] == key
        end
    end

    def delete(key)
        map.each_with_index do |sub, i|
            map.delete_at(i) if sub[0] == key
        end
    end

    def show
        @map
    end

end
