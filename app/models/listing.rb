class Listing < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :city
  validates_presence_of :price
end
