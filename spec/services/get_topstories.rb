require 'rails_helper'

describe Topstories do
  it 'returns a 200 success header when the API call is made' do
    response = Topstories.get_topstories
    expect(response.code).to(eq(200))
  end
end
