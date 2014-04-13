class EditTables < ActiveRecord::Migration
  def change
    add_column :listings, :user_id, :integer
    add_column :listings, :category_id, :integer
  end
end
