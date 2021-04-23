module QuestionHelper
  def question_header(question)
    if question.new_record?
      "Create New #{question.test.body} Question"
    else
      "Edit #{question.test.body} Question"
    end
  end
end
