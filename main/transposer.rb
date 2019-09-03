require_relative '../lib/deque'

def transposer(string)
    deque = Deque.new
    result = ''
    for i in 0..string.length do

        if string[i] == 'g'
            deque.pushBack(string[ i ])
            next
        elsif string[i] == 'n'
            deque.pushFront(string[ i ])
            next
        else
            deque.empty_into(result) unless deque.empty?
        end
        
        
        if string[ i ] != 'g' && string[i] != 'n' && string[i]
            result += string[ i ]
        end
    end
    result
end

puts transposer('he was searchign on Bign for signign kigns')
# => he was searching on Bing for singing kings

puts transposer('rignadingdiggn!')
# => ringadingdingg!

puts transposer('gngngnnggnngggnnn')
# => nnnnnnnnngggggggg