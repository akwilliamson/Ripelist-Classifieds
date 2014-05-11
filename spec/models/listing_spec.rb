require 'spec_helper'

describe Listing do
	# relations specs
  it { should belong_to :user }
  it { should belong_to :category }
  # validation of certain attributes
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should validate_presence_of :city }

end
