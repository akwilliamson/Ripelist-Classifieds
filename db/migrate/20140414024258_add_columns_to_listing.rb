class AddColumnsToListing < ActiveRecord::Migration
  def change
  	add_column :listings, :for_sale, :boolean
  	add_column :listings, :for_trade, :boolean
  	add_column :listings, :for_donation, :boolean
  end
end
