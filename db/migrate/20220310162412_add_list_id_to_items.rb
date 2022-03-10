class AddListIdToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :list_id, :integer
    add_index :items, :list_id
  end
end
