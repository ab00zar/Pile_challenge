class Pile
    
    #define the constructor
    def initialize(arr)
        @pile = arr
    end
    
    
    def push_value(a)
        @pile.push(a)
    end
    
    
    def pop_value
        @pile.pop
    end
    
    
    def print
        puts @pile
    end
    
    
    def reverse_pil
        @pile.reverse
    end
    
    
    def shake
        @pile.shuffle
    end
    
    
    def isPalindromic
        temp_arr = @pile.reverse
        temp_arr == @pile ? true : false
    end
    
    
    def canBePalindromic
        no_occurrence = @pile.each_with_object(Hash.new(0)) { |number,counts| counts[number] += 1 }
        count = 0
        no_occurrence.each_value do |value|
            if value%2 != 0
                count +=1
                if count > 1 
                    return false
                end
            end
        end
        true
    end
          
end


#test the last method
def assert condition
    puts (condition ? "Can Be Palindromic" : "CANNOT")
end


t = Pile.new([1,3,4,4,3,1,3])
assert(t.canBePalindromic)

t = Pile.new([])
assert(t.canBePalindromic)

t = Pile.new([1, 2])
assert(t.canBePalindromic)

t = Pile.new([1, 2, 3, 4, 1, 2, 4])
assert(t.canBePalindromic)

t = Pile.new([78, 78, 78])
assert(t.canBePalindromic)

t = Pile.new([4, 1, 1, 4, 5,6])
assert(t.canBePalindromic)
