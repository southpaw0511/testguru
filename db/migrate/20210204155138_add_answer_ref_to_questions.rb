class AddAnswerRefToQuestions < ActiveRecord::Migration[6.1]
  def change
    add_reference :questions, :answer, null: false, foreign_key: true
  end
end
