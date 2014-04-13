class Category < ActiveRecord::Base
  has_many :listings

  validates_presence_of :name
  validates_uniqueness_of :name
end
