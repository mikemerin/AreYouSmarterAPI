class KeepIf < Methods

    def generate

        createQuestion(["keep_if"])

        @comparison.each do |comparison_type|           # populate the choices, then shuffle them
            @choices << (eval "@array.#{@method} { |x| x #{comparison_type} #{@array_selection} }")
            @array = @array_backup.dup
        end.shuffle

        @question = "array.#{@method} { |x| x #{@comparison_selection} #{@array_selection} }"
        @wrong_answer = eval "array.#{@method} { |x| x #{@comparison_rejection} #{@array_selection} }"

        answers

    end

end
