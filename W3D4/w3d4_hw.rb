class Stack
    def initialize
        @ivar = []
      # create ivar to store stack here!
    end

    def push(el)
        @ivar.push(el)
      # adds an element to the stack
    end

    def pop
        @ivar.pop
      # removes one element from the stack
    end

    def peek
        @ivar[-1]
      # returns, but doesn't remove, the top element in the stack
    end
  end
  

class Queue
    
    def initialize
        @ivar = []
    end

    def enqueue(el)
        @ivar << el
    end

    def dequeue
        @ivar.shift 


    end

    def peek
        @ivar[0]
    end 
    
end

class Map

    def initialize
        @ivar = []

    end

    def set(key,value)
        new_arr = []
        if @ivar.length == 0
            @ivar << [key,value]
        end

        if @ivar.length >= 1
            @ivar.each_with_index do |subarr, idx|
                if key == subarr[0]
                @ivar[idx] = [key,value]
                else
                    @ivar << [key, value]
                end 
            end
        end 
        @ivar.uniq
    end

    def get(key)
        @ivar.each do |subarr|
            if subarr[0] == key
                return subarr[0]
            end
        end
    end

    def delete(key)
        @ivar.each.with_index do |subarr, i|
            if subarr[0] == key 
                @ivar.delete_at(i)
            end
        end
        @ivar
    end

    def show 
        @ivar 
    end

end