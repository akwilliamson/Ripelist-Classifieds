class ChangeListingsColumns < ActiveRecord::Migration
  def change
  	add_column :listings, :bundle_type, :string
  	add_column :listings, :transaction_type, :string
  end
end
