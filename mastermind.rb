class Code

    attr_reader :code_array

    def initialize
        @code_array = []
    end

    def generate_code
        (1..4).each do |x|
            @code_array.push(Ball.new(x, rand(7)))
        end
    end

    def search_code(pos, number)
        results = {"found" => 0, "number" => 0}
        @code_array.each do |ball|
            if ball.pos == pos && ball.number == number
                results["found"] += 1
            elsif ball.number == number
                results["number"] += 1
            end
        end
        return results
    end

end


class Ball

    attr_accessor :pos, :number
    
    def initialize(pos, number)
        @pos = pos
        @number = number
    end

end


x = Code.new
x.generate_code
x.code_array[0].number = 2
puts x.search_code(2, 2)



p x