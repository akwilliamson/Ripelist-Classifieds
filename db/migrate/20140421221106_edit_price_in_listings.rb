class EditPriceInListings < ActiveRecord::Migration
  def change
  	change_column :listings, :price, :decimal, :precision => 3, :scale => 2
  end
end
