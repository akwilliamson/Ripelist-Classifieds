require 'spec_helper'

describe User do
	# relations specs
  it { should have_many :listings }
  # validation of certain attributes
  it { should validate_presence_of :email }
end
