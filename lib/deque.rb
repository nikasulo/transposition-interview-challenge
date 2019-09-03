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

end