require 'rails_helper'

describe Brand do
  it { should validate_presence_of :title }
  it { should have_many :products }
end
