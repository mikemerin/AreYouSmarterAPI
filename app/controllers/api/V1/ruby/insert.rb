class Insert < Methods

    def generate

      createQuestion(["insert"])

      @index == 0 ? @index = 1 : @index

      @choices << (eval "@array.insert(#{@index},0)")
      @array = @array_backup.dup
      @choices << (eval "@array.insert(0,#{@index})")
      @array = @array_backup.dup
      @choices << (eval "@array.insert(#{@index}-1,0)")
      @array = @array_backup.dup
      @choices << (eval "@array.insert(#{@index},#{@index})")
      @array = @array_backup.dup
      @choices.shuffle!

      @question = ["array.#{method}(#{@index},0)","array.#{method}(0,#{@index})"].sample
      @temp = @choices.dup
      @temp.delete(eval @question)
      @wrong_answer = @temp.sample

      answers

    end

end
