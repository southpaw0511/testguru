class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.username :name, null: false
      t.string :password, limit: 10
      t.integer :level, default: 0

      t.timestamps
    end
  end
end
