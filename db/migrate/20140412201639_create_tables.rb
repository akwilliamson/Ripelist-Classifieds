class CreateTables < ActiveRecord::Migration
  def change
    create_table :listings do |x|
      x.string :name
      x.decimal :price
      x.string :city
      x.text :description
      x.attachment :photo1
      x.attachment :photo2

      x.timestamps
    end
    create_table :users do |x|
      x.string :first_name
      x.string :last_name
      x.string :username
      x.string :email
      x.integer :phone
      x.string :password_digest

      x.timestamps
    end
    create_table :categories do |x|
      x.string :name
    end
  end
end
