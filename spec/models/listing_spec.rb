require 'spec_helper'

describe Listing do
  it { should belong_to :user }
  it { should belong_to :category }

  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should validate_presence_of :city }
  it { should validate_presence_of :price }
end
