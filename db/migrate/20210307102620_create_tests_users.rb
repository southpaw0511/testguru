class CreateTestsUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :tests_users do |t|
      t.belongs_to :user
      t.belongs_to :test, null: false, foreign_key: true
      t.index [:user_id, :test_id]

      t.timestamps
    end
  end
end
