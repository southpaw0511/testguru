class AddUniqueIndexToTests < ActiveRecord::Migration[6.1]
  def change
    add_index :tests, [:body, :level], unique: true
  end
end
