require 'spec_helper'

describe Category do
  # relations specs
  it { should have_many :listings }
  # validation of certain attributes
  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }

end
