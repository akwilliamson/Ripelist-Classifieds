class Listing < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :city

  has_attached_file :photo1, styles: { thumb: '75x75>', med: '250x250>', large: '400x400>' }
  do_not_validate_attachment_file_type :photo1
  has_attached_file :photo2, styles: { thumb: '75x75>', med: '250x250>', large: '400x400>' }
  do_not_validate_attachment_file_type :photo2


def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    Listing.all
  end
end

end
