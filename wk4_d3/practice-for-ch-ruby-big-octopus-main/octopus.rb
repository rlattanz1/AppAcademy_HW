
def sluggish_octopus(arr)
    #nested loop results in n^2 quadratic runtime

    max_ele = arr[0]
    arr.each_with_index do |ele1, i|
        arr.each_with_index do |ele2, j|
            if arr[i].length > arr[j].length && j > i
                max_ele = arr[i]
            else
                max_ele = arr[j]
            end
        end
    end
    max_ele
end


fish_arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
p sluggish_octopus(fish_arr)

def dominant_octopus(arr)
    # a single iteration While loop will result in O(n log n) runtime


#     max_fish = ''
#     i = 0
#     while i < arr.size-1
#         if arr[i].length > arr[i+1].length
#             max_fish = arr[i]
#         else
#             max_fish = arr[i+1]
#         end
#     i += 1
#     end
#     max_fish
# end


# fish_arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# p dominant_octopus(fish_arr)


# def clever_octopus(arr)
    # the built in array function of inject has an O(n) runtime

     # arr.inject {|acc, ele| acc.length > ele.length ? acc : ele}
# end


# fish_arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# p clever_octopus(fish_arr)

def dancing_octopus(arr1, arr2)

end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up"]
tentacle_arr = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight']
