class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.text :body, null: false, limit: 70
      t.string :author, null: false
      t.references :test, null: false, foreign_key: true

      t.timestamps
    end
  end
end
