require_relative 'node'

class Deque
    def initialize
        @first = Node.new(nil)
        @last = @first
    end
    def pushFront(number)
        @first = Node.new(number, @first)
        @last = @first if @last.value.nil?
    end

    def pushBack(number)
        self.pushFront(number) && return if @first.value.nil?
        @last.next_node = Node.new(number)
        @last = @last.next_node
    end

    def popFront
        raise 'Deque is empty' if @first.value.nil?
        if @last == @first
            @first = Node.new(nil)
            @last = @first
            return 
        end
        @first = @first.next_node
    end

    def empty_into_array(array)
        current = @first
        while current do
            array << current.value
            self.popFront
            current = current.next_node
        end
    end

end