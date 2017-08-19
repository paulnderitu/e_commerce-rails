require 'rails_helper'

describe Brand do
  it { should validate_presence_of :title }
end
