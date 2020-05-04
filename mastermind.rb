class Code

    attr_reader :code_array

    def initialize
        @code_array = []
        @winner = false
    end

    def generate_code
        (1..4).each do |x|
            @code_array.push(Ball.new(x, rand(7)))
        end
    end

    def search_for_code(balls)
        results = {"found" => 0, "number" => 0}
        balls.each do |ball|

            @code_array.each do |code|
                if ball.is_equal(code.pos, code.number)
                    results["found"] += 1
                elsif ball.is_number_equal(code.number)
                    results["number"] += 1
                end
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

    def is_equal(pos, number)
        @pos == pos && @number == number ? true : false
        
    end

    def is_number_equal(number)
        @number == number ? true : false
    end

end


x = Code.new
x.generate_code
x.code_array[0].number = 1
x.code_array[1].number = 1
x.code_array[2].number = 1
x.code_array[3].number = 1
puts x.search_for_code([Ball.new(1, 1)])



p x