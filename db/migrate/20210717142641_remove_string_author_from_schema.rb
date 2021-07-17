class RemoveStringAuthorFromSchema < ActiveRecord::Migration[6.1]
  def change
    remove_column :tests, :author, :string
  end
end
