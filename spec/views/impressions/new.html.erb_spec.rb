require 'rails_helper'

RSpec.describe "impressions/new", type: :view do
  before(:each) do
    assign(:impression, Impression.new())
  end

  it "renders new impression form" do
    render

    assert_select "form[action=?][method=?]", impressions_path, "post" do
    end
  end
end
