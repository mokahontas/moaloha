require 'rails_helper'

RSpec.describe "impressions/index", type: :view do
  before(:each) do
    assign(:impressions, [
      Impression.create!(),
      Impression.create!()
    ])
  end

  it "renders a list of impressions" do
    render
  end
end
