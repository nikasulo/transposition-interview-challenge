require_relative 'node'

class Deque
    def initialize
        @first = Node.new(nil)
        @last = @first
    end

end