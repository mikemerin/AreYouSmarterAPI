class PopShift < Methods

    def generate

        createQuestion(["pop","shift"])

        array_or_not = [true,false].sample

        if array_or_not == true
          @choices << (eval "@array.pop")
          shovel_and_reload
          @choices << (eval "@array.shift")
          shovel_and_reload
          @choices.shuffle!

          @question = "array.#{method}" + " #=> ?"
          @temp = @choices.dup
          @temp.delete(eval @question)
          @wrong_answer = @temp.sample

          answers
        else
          @choices << [(eval "@array.pop")]
          shovel_and_reload
          @choices << [(eval "@array.shift")]
          shovel_and_reload

          @question = "array.#{method}\n\narray #=> ?"
          @question2 = "array.#{method}"
          @temp = @choices.dup
          (eval @question.split[0])
          @answer = @array.dup
          @temp.delete(@array)
          @array_output = "array "

          @wrong_answer = @temp.sample
          @array = @array_backup.dup
          @answer2 = @answer.dup
        end

    end

end
