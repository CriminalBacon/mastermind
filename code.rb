require_relative 'token.rb'

class Code

    attr_accessor :code

    def initialize
        @code = []
        create_new_code
    end

    def create_new_code
        4.times do |pos|
            @code.push((Token.new(pos, rand(7))))
        end

    end
end

