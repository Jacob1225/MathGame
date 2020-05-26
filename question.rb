require './game'

class Question
    attr_accessor :answer

    def initialize
        @answer = 0
    end

    def generate_question 
        first_num = rand(1..20)
        second_num = rand(1..20)
        @answer = first_num + second_num

        "What is #{first_num} + #{second_num} equal to?"
    end

end