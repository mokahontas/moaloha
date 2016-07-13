require 'rails_helper'

RSpec.describe "impressions/show", type: :view do
  before(:each) do
    @impression = assign(:impression, Impression.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
