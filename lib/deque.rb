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

end