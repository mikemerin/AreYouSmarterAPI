class DeleteIf < Methods

    def generate

        createQuestion(["delete_if"])

        @comparison.each do |comparison_type|           # populate the choices, then shuffle them
            (eval "@array.#{@method} { |x| x #{comparison_type} #{@array_selection} }")
            shovel_and_reload
        end.shuffle

        @question = "array.#{@method} { |x| x #{@comparison_selection} #{@array_selection} }"
        @wrong_answer = eval "array.#{@method} { |x| x #{@comparison_rejection} #{@array_selection} }"

        answers

    end

end
