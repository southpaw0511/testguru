class AddAnswersCorrectNullConstraint < ActiveRecord::Migration[6.1]
  def change
    change_column_null(:answers, :correct, false)
  end
end
