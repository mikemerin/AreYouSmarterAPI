class PushUnshift < Methods

    def generate

        createQuestion(["push","unshift"])

        shorten_and_append

        @choices << (eval "@array.unshift(#{@append})")
        @array = @array_backup.dup
        @choices << (eval "@array.unshift(#{@append.reverse})")
        @array = @array_backup.dup
        @choices << (eval "@array.push(#{@append})")
        @array = @array_backup.dup
        @choices << (eval "@array.push(#{@append.reverse})")
        @array = @array_backup.dup

        @choices.shuffle!

        @question = "array.#{method}(#{@append})"
        @temp = @choices.dup
        @temp.delete(eval @question)
        @wrong_answer = @temp.sample

        answers

    end

end
