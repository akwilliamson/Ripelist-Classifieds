class DropColumnFromListings < ActiveRecord::Migration
  def change
  	remove_column :listings, :transaction_type
  end
end
