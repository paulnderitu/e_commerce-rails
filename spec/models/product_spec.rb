require 'rails_helper'

describe Product do
  it { should validate_presence_of :item }
  it { should belong_to :brand }
end
