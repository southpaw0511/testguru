class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :password, null: false, limit: 10

      t.timestamps
    end
  end
end
