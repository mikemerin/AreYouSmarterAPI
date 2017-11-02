$question_s = Select.new
$question_r = Reject.new
$question_fd = FindDetect.new
$question_di = DeleteIf.new
$question_ki = KeepIf.new
$question_ps = PopShift.new
$question_pu = PushUnshift.new
$question_i = Insert.new

def random_quiz

    method = [$question_s, $question_r, $question_fd, $question_di, $question_ki, $question_ps, $question_pu, $question_i].sample
    quiz_type = ["quiz_mc","quiz_enter","quiz_tf"].sample
    method.generate
    eval "method.#{quiz_type}"
    puts "\nType any key to continue, or 'exit' to leave\n\n"
    option = gets.strip
    (system ("clear"))
    random_quiz unless option.downcase == "exit"
end
