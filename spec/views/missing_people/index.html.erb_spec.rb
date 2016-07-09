require 'rails_helper'

RSpec.describe "missing_people/index", type: :view do
  before(:each) do
    assign(:missing_people, [
      MissingPerson.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :sex => "Sex",
        :location => "MyText",
        :island => "Island",
        :height => "Height",
        :weight => "Weight",
        :image => "MyText",
        :eye_color => "Eye Color",
        :information => "MyText",
        :middle_name => "Middle Name",
        :nickname => "Nickname",
        :longitude => 1.5,
        :latitude => 1.5,
        :ethnicity => "Ethnicity",
        :age => 1,
        :circumstances => "MyText"
      ),
      MissingPerson.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :sex => "Sex",
        :location => "MyText",
        :island => "Island",
        :height => "Height",
        :weight => "Weight",
        :image => "MyText",
        :eye_color => "Eye Color",
        :information => "MyText",
        :middle_name => "Middle Name",
        :nickname => "Nickname",
        :longitude => 1.5,
        :latitude => 1.5,
        :ethnicity => "Ethnicity",
        :age => 1,
        :circumstances => "MyText"
      )
    ])
  end

  it "renders a list of missing_people" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Sex".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Island".to_s, :count => 2
    assert_select "tr>td", :text => "Height".to_s, :count => 2
    assert_select "tr>td", :text => "Weight".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Eye Color".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Middle Name".to_s, :count => 2
    assert_select "tr>td", :text => "Nickname".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Ethnicity".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
