require 'rails_helper'

RSpec.describe "impressions/edit", type: :view do
  before(:each) do
    @impression = assign(:impression, Impression.create!())
  end

  it "renders the edit impression form" do
    render

    assert_select "form[action=?][method=?]", impression_path(@impression), "post" do
    end
  end
end
